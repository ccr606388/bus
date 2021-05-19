'use strict';
module.exports = app => {
    const { STRING, INTEGER, DATE, CHAR } = app.Sequelize;
    // console.log(app.Sequelize)
    const user_information = app.model.define('user_information', {
        user_id: {
            type: INTEGER,
            primaryKey: true,
            // defaultValue: uuid.v4()
        },
        user_name: STRING(20),
        real_name: STRING(20),
        creation_time: DATE,
        status: CHAR,
        founder: CHAR,
    });

    return user_information;
};