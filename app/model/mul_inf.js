'use strict';
module.exports = app => {
    const { STRING, INTEGER, DATE, CHAR } = app.Sequelize;
    // console.log(app.Sequelize)
    const mul_inf = app.model.define('mul_inf', {
        mul_id: {
            type: INTEGER,
            primaryKey: true,
            // defaultValue: uuid.v4()
        },
        mul_name: STRING(20),
        // user_id: INTEGER,
        creation_time: DATE,
        founder: STRING(20),
        status: CHAR,
        start_age: INTEGER,
        end_age: INTEGER,
        gender_select: CHAR,
        location: STRING(20)
    });

    return mul_inf;
};