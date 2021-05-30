'use strict';

const Controller = require('./base');
// const Controller = require('egg').Controller;

class accountController extends Controller {
    async add() {
        const { ctx } = this;
        const { body } = ctx.request;

        const result = await ctx.model.AccInf.create({
            ...body,
            creation_time: new Date()
        })

        this.success(result);
    }

    async delete() {
        const { ctx } = this;
        const { account_id } = ctx.request.body;

        const result = await ctx.model.AccInf.destroy({
            where: {
                account_id
            }
        })

        this.success(result);
    }

    async login() {
        const { ctx, app } = this;
        const { account_name, password } = ctx.request.body;

        const result = await ctx.model.AccInf.findOne({
            where: {
                account_name
            }
        })

        // console.log(result)

        if (!result)
            ctx.throw(403, "用户不存在")

        if (result.password !== password)
            ctx.throw(403, "密码错误")

        const token = app.jwt.sign({ name: result.account_name, id: result.account_id }, app.config.jwt.secret, { expiresIn: '120h' });

        this.success({ ...result, token })
        // this.success({ token })
    }

    async query() {
        const { ctx, app } = this;
        const { Op } = app.Sequelize;
        const { account_name, start_time, end_time, account_id } = ctx.request.query;

        console.log(ctx.request.query)
        const where = {}
        if (account_name)
            where.account_name = { [Op.like]: `%${account_name}%` }
        if (account_id)
            where.account_id = account_id
        if (start_time && end_time)
            where.creation_time = { [Op.gte]: start_time, [Op.lte]: end_time }

        console.log(where)
        const result = await ctx.model.AccInf.findAll({
            where
        })

        this.success(result)
    }

    async update() {
        const { ctx } = this;
        const { body } = ctx.request;
        const { account_id } = ctx.request.body;
        const result = await ctx.model.AccInf.update({
            ...body,
            // creation_time: new Date()
        }, { where: { account_id } })

        this.success(result)
    }
}

module.exports = accountController;
