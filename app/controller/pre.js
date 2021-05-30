'use strict';

const Controller = require('./base');
// const Controller = require('egg').Controller;

class preController extends Controller {
    async add() {
        const { ctx } = this;
        const { body } = ctx.request;

        const result = await ctx.model.PreInf.create({
            ...body,
            // creation_time: new Date()
        })

        this.success(result);
    }

    async delete() {
        const { ctx } = this;
        const { pid } = ctx.request.body;

        const result = await ctx.model.PreInf.destroy({
            where: {
                pid
            }
        })

        this.success(result);
    }

    async query() {
        const { ctx, app } = this;
        const { Op } = app.Sequelize;
        const { start_time, end_time, card_name } = ctx.request.query;

        console.log(ctx.request.query)
        const where = {}
        if (card_name)
            where.card_name = { [Op.like]: `%${card_name}%` }
        if (start_time && end_time)
            where.creation_time = { [Op.gte]: start_time, [Op.lte]: end_time }

        console.log(where)
        const result = await ctx.model.PreInf.findAll({
            where
        })

        this.success(result)
    }

    async update() {
        const { ctx } = this;
        const { body } = ctx.request;
        const { pid } = ctx.request.body;
        const result = await ctx.model.PreInf.update({
            ...body,
            // creation_time: new Date()
        }, { where: { pid } })

        this.success(result)
    }
}

module.exports = preController;
