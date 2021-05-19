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
        activity_id: STRING(3),
        business_type: INTEGER,
        coupon_type: INTEGER,
        card_id: STRING(20),
        coupon_category: INTEGER,
        start_time: DATE,
        end_time: DATE,
        discount: FLOAT,
        reducion: DECIMAL,
        superimpose: CHAR,
        auto_select: CHAR,
        is_effective: CHAR
    });

    return cou_inf;
};