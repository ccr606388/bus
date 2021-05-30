'use strict';
module.exports = app => {
    const { STRING, INTEGER, DATE, CHAR, FLOAT, DECIMAL } = app.Sequelize;
    // console.log(app.Sequelize)
    const pre_inf = app.model.define('pre_inf', {
        pid: {
            type: INTEGER,
            primaryKey: true,
            // defaultValue: uuid.v4()
        },
        activity_id: STRING(64),
        card_id: STRING(20),
        inventory: INTEGER,
        con_inventory: INTEGER,
        start_time: DATE,
        end_time: DATE,
        status: CHAR,
        card_name: STRING(20)
    });

    return pre_inf;
};