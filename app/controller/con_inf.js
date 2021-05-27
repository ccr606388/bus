'use strict';

const Controller = require('./base');
// const Controller = require('egg').Controller;

class conInfController extends Controller {

    async add() {
        const { ctx } = this;
        const { body } = ctx.request;
        const result = await ctx.model.CouInf.create({
            cid: body.cid,
            activity_id: body.activity_id,
            business_type: body.business_type,
            coupon_type: body.coupon_type,
            card_id: body.card_id,
            coupon_category: body.coupon_category,
            start_time: body.start_time,
            end_time: body.end_time,
            discount: body.discount,
            reducion: body.reducion,
            superimpose: body.superimpose,
            auto_select: body.auto_select,
            is_effective: body.is_effective,
        })

        this.success({ result: result });
    }

    async query() {
        const { ctx, app } = this;
        const { body } = ctx.request;
        const { Op } = app.Sequelize;
        const where = {};

        if (body.start_time)
            where.start_time = { [Op.gt]: body.start_time }
        if (body.end_time)
            where.end_time = { [Op.lt]: body.end_time }
        if (body.coupon_type)
            where.coupon_type = body.coupon_type
        if (body.business_type)
            where.business_type = body.business_type
        if (body.coupon_category)
            where.coupon_category = body.coupon_category

        const result = await ctx.model.CouInf.findAll({
            where: where
        });

        this.success({ result: result });
    }
}

module.exports = conInfController;
