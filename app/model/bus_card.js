'use strict';
module.exports = app => {
    const { STRING, INTEGER, DATE, CHAR, FLOAT, DECIMAL } = app.Sequelize;
    // console.log(app.Sequelize)
    const bus_card = app.model.define('bus_card', {
        card_id: {
            type: STRING(30),
            primaryKey: true,
            // defaultValue: uuid.v4()
        },
        card_name: STRING(20),
        card_type: STRING(20),
        sp_id: STRING(20),
        sp_name: STRING(20),
        cou_act: CHAR,
        pre_act: CHAR
    });

    return bus_card;
};