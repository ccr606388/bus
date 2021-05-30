'use strict';

const Controller = require('./base');
// const Controller = require('egg').Controller;

class cardController extends Controller {
    async add() {
        const { ctx } = this;
        const { body } = ctx.request;

        const result = await ctx.model.BusCard.create({
            ...body,
            // creation_time: new Date()
        })

        this.success(result);
    }

    async delete() {
        const { ctx } = this;
        const { cid } = ctx.request.body;

        const result = await ctx.model.BusCard.destroy({
            where: {
                card_id
            }
        })

        this.success(result);
    }

    async query() {
        const { ctx, app } = this;
        const { Op } = app.Sequelize;
        const { card_type, card_name, sp_id, pre_act, cou_act } = ctx.request.query;

        console.log(ctx.request.query)
        const where = {}
        if (card_type)
            where.card_type = card_type
        if (card_name)
            where.card_name = { [Op.like]: `%${card_name}%` }
        if (sp_id)
            where.sp_id = sp_id;
        if (pre_act)
            where.pre_act = pre_act;
        if (cou_act)
            where.cou_act = cou_act;

        console.log(where)
        const result = await ctx.model.BusCard.findAll({
            where
        })

        this.success(result)
    }

    async update() {
        const { ctx } = this;
        const { body } = ctx.request;
        const { card_id } = ctx.request.body;
        const result = await ctx.model.BusCard.update({
            ...body,
            // creation_time: new Date()
        }, { where: { card_id } })

        this.success(result)
    }

    async switchAct() {
        const { ctx } = this;
        const { card_id } = ctx.request.body;

        const result = await ctx.model.BusCard.update({
            ...ctx.request.body,
            // creation_time: new Date()
        }, { where: { card_id } })

        this.success(result);
    }
}

module.exports = cardController;
