'use strict';
module.exports = app => {
    const { STRING, INTEGER, DATE } = app.Sequelize;
    // console.log(app.Sequelize)
    const acc_inf = app.model.define('acc_inf', {
        account_id: {
            type: INTEGER,
            primaryKey: true,
            // defaultValue: uuid.v4()
        },
        account_name: STRING(20),
        password: STRING(20),
        telephone: STRING(11),
        email: STRING(30),
        department: STRING(20),
        creation_time: DATE,
    });

    // `account_id` int(11) NOT NULL AUTO_INCREMENT,
    // `account_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    // `telephone` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
    // `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
    // `department` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
    // `creation_time` datetime NOT NULL,
    // PRIMARY KEY(`account_id`) USING BTREE



    return acc_inf;
};