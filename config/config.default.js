/* eslint valid-jsdoc: "off" */

'use strict';

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = exports = {};


  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1621412016033_4418';

  // add your middleware config here
  config.middleware = [];

  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
    jwt: {
      secret: "bus",
    },
    middleware: ['errorHandler'],
    multipart: {
      mode: 'file',
      whitelist: () => true,
    },
  };

  config.security = {
    csrf: false,
  };

  config.sequelize = {
    dialect: 'mysql',
    host: '127.0.0.1',
    port: 3307,
    database: 'bus',
    username: 'root',
    password: 'zdataroot',
    define: {
      freezeTableName: true, // 强制表名称等于模型名称
      timestamps: false,
      plain: true,

      // Set this to true if you don't have a model definition for your query.
      raw: true,
    },
    query: { raw: true },

    timezone: '+08:00',// 保存为本地时区
    dialectOptions: {
      dateStrings: true,
      typeCast(field, next) {
        // for reading from database
        if (field.type === 'DATETIME' || field.type === 'DATE') {
          return field.string();
        }
        return next();
      },
    },

    delegate: 'model',
    baseDir: 'model',
  };


  return {
    ...config,
    ...userConfig,
  };
};
