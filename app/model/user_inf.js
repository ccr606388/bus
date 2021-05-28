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

    // `account_id` int(11) NOT NULL AUTO_INCREMENT,
    // `account_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    // `telephone` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
    // `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
    // `department` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
    // `creation_time` datetime NOT NULL,
    // PRIMARY KEY(`account_id`) USING BTREE



    return user_inf;
};