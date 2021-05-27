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

        this.success({
            ...result
        });
    }

    async delete() {

    }

    async login() {
        const { ctx } = this;
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

        this.success("登陆成功")
    }

    async query() {
        const { ctx, app } = this;
        const { Op } = app.Sequelize;
        const { account_name, start_time, end_time, account_id } = ctx.request.query;

        console.log(ctx.request.query)
        const where = {}
        if (account_name)
            where.account_name = account_name
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

    }
}

module.exports = accountController;
