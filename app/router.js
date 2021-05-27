'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.get('/', controller.home.index);

  //db test 
  router.get('/dbtest', controller.home.dbtest)
  router.post('/api/con_inf/add', controller.conInf.add);
  router.post('/api/con_inf/query', controller.conInf.query);

  //user
  router.post('/api/usertest', controller.usertest.add)

};
