'use strict';

const Controller = require('./base');
// const Controller = require('egg').Controller;

class couController extends Controller {
    async add() {
        const { ctx } = this;
        const { body } = ctx.request;

        const result = await ctx.model.CouInf.create({
            ...body,
            status: "1"
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
        const { activity_id, start_time, end_time, card_name } = ctx.request.query;

        console.log(ctx.request.query)
        const where = {}
        if (activity_id)
            where.activity_id = { [Op.like]: `%${activity_id}%` }
        if (card_name)
            where.card_name = { [Op.like]: `%${card_name}%` }
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

    async count() {
        const { ctx, app } = this;
        const { time } = ctx.request.body;
        const { Op } = app.Sequelize;
        const percnt = await ctx.model.PreInf.count();
        // console.log(percnt)
        const coucnt = await ctx.model.CouInf.count();
        // const now = new Date()
        const inper = await ctx.model.PreInf.count({ where: { start_time: { [Op.lte]: time }, end_time: { [Op.gte]: time } } });
        const incou = await ctx.model.CouInf.count({ where: { start_time: { [Op.lte]: time }, end_time: { [Op.gte]: time } } });

        this.success({
            total: percnt + coucnt,
            in: inper + incou,
            out: percnt + coucnt - incou - inper
        })

    }
}

module.exports = couController;
