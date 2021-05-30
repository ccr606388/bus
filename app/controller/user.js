'use strict';

const Controller = require('./base');
const fs = require('fs');
// const Controller = require('egg').Controller;

class userController extends Controller {
    async add() {
        const { ctx } = this;
        const { body } = ctx.request;
        const { name } = ctx.state.user;

        const result = await ctx.model.UserInf.create({
            ...body,
            founder: name,
            creation_time: new Date()
        })

        this.success(result);
    }

    async delete() {
        const { ctx } = this;
        const { user_id } = ctx.request.body;

        const result = await ctx.model.UserInf.destroy({
            where: {
                user_id
            }
        })

        this.success(result);
    }

    async query() {
        const { ctx, app } = this;
        const { Op } = app.Sequelize;
        const { user_name, start_time, end_time, user_id } = ctx.request.query;

        console.log(ctx.request.query)
        const where = {}
        if (user_name)
            where.user_name = { [Op.like]: `%${user_name}%` }
        if (user_id)
            where.user_id = user_id
        if (start_time && end_time)
            where.creation_time = { [Op.gte]: start_time, [Op.lte]: end_time }

        console.log(where)
        const result = await ctx.model.UserInf.findAll({
            where
        })

        this.success(result)
    }

    async update() {
        const { ctx } = this;
        const { body } = ctx.request;
        const { user_id } = ctx.request.body;
        const result = await ctx.model.UserInf.update({
            ...body,
            // creation_time: new Date()
        }, { where: { user_id } })

        this.success(result)
    }

    async importUser() {
        const { ctx } = this;
        const file = ctx.request.files[0];

        if (!file) return ctx.throw(400);

        const buff = fs.readFileSync(file.filepath);

        const userJson = JSON.parse(buff);
        const userArray = userJson.user_data;

        const respArray = { success: [], failed: [] };

        for (let index = 0; index < userArray.length; index++) {
            const element = userArray[index];
            try {
                await ctx.model.UserInf.create({
                    ...element,
                    creation_time: new Date()
                })
                respArray.success.push(element.user_name)
            } catch (error) {
                console.log("error")
                respArray.failed.push(element.user_name)
            }

        }

        console.log("----------------");
        this.success(respArray);
    }
}

module.exports = userController;
