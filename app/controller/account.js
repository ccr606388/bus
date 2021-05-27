'use strict';

const Controller = require('./base');
// const Controller = require('egg').Controller;

class accountController extends Controller {
    async add() {
        const { ctx } = this;
        const { body } = ctx.request;

        const result = ctx.model.accInf.create({
            ...body
        })

        this.success({
            ...result
        });
    }

    async delete() {

    }

    async update() {

    }

    async query() {

    }

    async update() {

    }
}

module.exports = accountController;
