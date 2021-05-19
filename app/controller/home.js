'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
	async index() {
		const { ctx } = this;
		ctx.body = 'hi, egg';
	}

	async dbtest() {
		const { ctx } = this;
		await ctx.model.UserInformation.create({
			user_id: 1234,
			user_name: "hahaha",
			real_name: "wawawa",
			creation_time: new Date(),
			status: 1,
			founder: 1,
		})

		ctx.body = { result: "success" }
	}
}

module.exports = HomeController;
