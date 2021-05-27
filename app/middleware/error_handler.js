'use strict';

module.exports = () => {

    return async function errorHandler(ctx, next) {
        try {
            await next();
        } catch (err) {
            // 所有的异常都会在app上出发一个error事件，框架会记录一条错误日志
            ctx.app.emit('error', err, ctx);

            const status = err.status || 500;
            let errmsg = err.message
            if (err.errors && err.errors.length) {
                errmsg += ";"
                err.errors.forEach(err => {
                    errmsg += `${err.code}:${err.field} `
                });
            }
            ctx.body = {
                errcode: status,
                errmsg,
            };
        }
    };

};
