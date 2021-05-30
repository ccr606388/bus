'use strict';
module.exports = app => {
    const { STRING, INTEGER, DATE, CHAR, FLOAT, DECIMAL } = app.Sequelize;
    // console.log(app.Sequelize)
    const cou_inf = app.model.define('cou_inf', {
        cid: {
            type: STRING(30),
            primaryKey: true,
            // defaultValue: uuid.v4()
        },
        activity_id: STRING(64),
        business_type: STRING(64),
        coupon_type: INTEGER,
        card_name: STRING(20),
        coupon_category: INTEGER,
        start_time: DATE,
        end_time: DATE,
        discount: FLOAT,
        reducion: DECIMAL,
        // superimpose: CHAR,
        // auto_select: CHAR,
        // is_effective: CHAR
        status: CHAR,
        mul_id: INTEGER
    });

    return cou_inf;
};