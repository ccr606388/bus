'use strict';

const Controller = require('./base');
const fs = require('fs');
// const Controller = require('egg').Controller;

class mulController extends Controller {
    async add() {
        const { ctx } = this;
        const { body } = ctx.request;

        const result = await ctx.model.MulInf.create({
            ...body,
            creation_time: new Date()
        })

        this.success(result);
    }

    async delete() {
        const { ctx } = this;
        const { mul_id } = ctx.request.body;

        const result = await ctx.model.MulInf.destroy({
            where: {
                mul_id
            }
        })

        this.success(result);
    }

    async query() {
        const { ctx, app } = this;
        const { Op } = app.Sequelize;
        const { mul_name, start_time, end_time, mul_id } = ctx.request.query;

        console.log(ctx.request.query)
        const where = {}
        if (mul_name)
            where.mul_name = { [Op.like]: `%${mul_name}%` }
        if (mul_id)
            where.mul_id = mul_id
        if (start_time && end_time)
            where.creation_time = { [Op.gte]: start_time, [Op.lte]: end_time }

        console.log(where)
        const result = await ctx.model.MulInf.findAll({
            where
        })

        this.success(result)
    }

    async update() {
        const { ctx } = this;
        const { body } = ctx.request;
        const { mul_id } = ctx.request.body;
        const result = await ctx.model.MulInf.update({
            ...body,
            // creation_time: new Date()
        }, { where: { mul_id } })

        this.success(result)
    }

    async exportMul() {
        const { ctx, app } = this
        const { mul_id } = ctx.request.body;
        const Op = app.Sequelize;

        const result = await ctx.model.MulInf.findByPk(mul_id);
        if (!result) {
            ctx.throw(400, "mul_id不存在");
        }
        // console.log(result);
        const where = {
            age: { [Op.lte]: result.end_age, [Op.gte]: result.start_age },
            location: result.location
        }
        if (result.gender_select !== "3")
            where.gender = result.gender_select;

        const people = await ctx.model.UserInf.findAll(where)
        const data = { user_data: people };

        // console.log(people);
        const fileName = "export" + Date.now();
        // const fileName
        fs.writeFileSync(fileName, JSON.stringify(data));
        ctx.attachment(fileName);
        ctx.set('Content-Type', 'application/octet-stream');
        ctx.body = fs.createReadStream(fileName);

        // this.success("success");
    }
}

module.exports = mulController;
