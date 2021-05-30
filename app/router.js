'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.get('/', controller.home.index);

  //db test 
  // router.get('/dbtest', controller.home.dbtest)
  // router.post('/api/cou_inf/add', controller.conInf.add);
  // router.post('/api/cou_inf/query', controller.conInf.query);

  // account
  router.post('/api/account', app.jwt, controller.account.add);
  router.post('/api/login', controller.account.login);
  router.get('/api/account', app.jwt, controller.account.query);
  router.delete('/api/account', app.jwt, controller.account.delete);
  router.put('/api/account', app.jwt, controller.account.update);

  // user
  router.post('/api/user', app.jwt, controller.user.add);
  router.get('/api/user', app.jwt, controller.user.query);
  router.put('/api/user', app.jwt, controller.user.update);
  router.delete('/api/user', app.jwt, controller.user.delete);
  router.post('/api/user/import', app.jwt, controller.user.importUser);

  // multitude
  router.post('/api/multitude', app.jwt, controller.multitude.add);
  router.get('/api/multitude', app.jwt, controller.multitude.query);
  router.put('/api/multitude', app.jwt, controller.multitude.update);
  router.delete('/api/multitude', app.jwt, controller.multitude.delete);
  router.post('/api/multitude/export', app.jwt, controller.multitude.exportMul);
  router.get('/api/file/:file', controller.multitude.download);

  // cou
  router.post('/api/cou', app.jwt, controller.cou.add);
  router.get('/api/cou', app.jwt, controller.cou.query);
  router.delete('/api/cou', app.jwt, controller.cou.delete);
  router.put('/api/cou', app.jwt, controller.cou.update);
  router.post('/api/count', app.jwt, controller.cou.count);

  // card activity
  router.post('/api/pre', app.jwt, controller.pre.add);
  router.get('/api/pre', app.jwt, controller.pre.query);
  router.delete('/api/pre', app.jwt, controller.pre.delete);
  router.put('/api/pre', app.jwt, controller.pre.update);

  // bus card
  // router.post('/api/card', controller.card.add);
  router.get('/api/card', app.jwt, controller.card.query);
  // router.delete('/api/card', controller.card.delete);
  router.put('/api/card', app.jwt, controller.card.switchAct);
};
