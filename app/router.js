'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.get('/', controller.home.index);

  //db test 
  router.get('/dbtest', controller.home.dbtest)
  router.post('/api/cou_inf/add', controller.conInf.add);
  router.post('/api/cou_inf/query', controller.conInf.query);

  // account
  router.post('/api/account', controller.account.add);
  router.post('/api/login', controller.account.login);
  router.get('/api/account', controller.account.query);
  router.delete('/api/account', controller.account.delete);
  router.put('/api/account', controller.account.update);

  // user
  router.post('/api/user', controller.user.add);
  router.get('/api/user', controller.user.query);
  router.put('/api/user', controller.user.update);
  router.delete('/api/user', controller.user.delete);
  router.post('/api/user/import', controller.user.importUser);

  // multitude
  router.post('/api/multitude', controller.multitude.add);
  router.get('/api/multitude', controller.multitude.query);
  router.put('/api/multitude', controller.multitude.update);
  router.delete('/api/multitude', controller.multitude.delete);
  router.post('/api/multitude/export', controller.multitude.exportMul);

};
