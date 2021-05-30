'use strict';

const Controller = require('./base');
// const Controller = require('egg').Controller;

class couController extends Controller {
    async add() {
        const { ctx } = this;
        const { body } = ctx.request;

        const result = await ctx.model.CouInf.create({
            ...body,
            // creation_time: new Date()
        })

        this.success(result);
    }

    async delete() {
        const { ctx } = this;
        const { cid } = ctx.request.body;

        const result = await ctx.model.CouInf.destroy({
            where: {
                cid
            }
        })

        this.success(result);
    }

    async query() {
        const { ctx, app } = this;
        const { Op } = app.Sequelize;
        const { activity_id, start_time, end_time, card_id } = ctx.request.query;

        console.log(ctx.request.query)
        const where = {}
        if (activity_id)
            where.activity_id = { [Op.like]: `%${activity_id}%` }
        if (card_id)
            where.card_id = { [Op.like]: `%${card_id}%` }
        if (start_time && end_time)
            where.creation_time = { [Op.gte]: start_time, [Op.lte]: end_time }

        console.log(where)
        const result = await ctx.model.CouInf.findAll({
            where
        })

        this.success(result)
    }

    async update() {
        const { ctx } = this;
        const { body } = ctx.request;
        const { cid } = ctx.request.body;
        const result = await ctx.model.CouInf.update({
            ...body,
            // creation_time: new Date()
        }, { where: { cid } })

        this.success(result)
    }
}

module.exports = couController;
