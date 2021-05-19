'use strict';

const Controller = require('egg').Controller;
const uuid = require('uuid');

class BaseController extends Controller {
    success(data) {
        this.ctx.body = {
        errcode: 1,
        result:data,
        };
      }
      getUuid(){
        return uuid.v4()
       }
    }
   
module.exports = BaseController;
