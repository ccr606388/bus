'use strict';
module.exports = app => {
    const { STRING, INTEGER, DATE, CHAR } = app.Sequelize;
    // console.log(app.Sequelize)
    const user_inf = app.model.define('user_inf', {
        user_id: {
            type: INTEGER,
            primaryKey: true,
            // defaultValue: uuid.v4()
        },
        user_name: STRING(20),
        real_name: STRING(20),
        creation_time: DATE,
        founder: STRING(20),
        age: INTEGER,
        gender: CHAR,
        location: STRING(20),
        status: CHAR
    });

    return user_inf;
};