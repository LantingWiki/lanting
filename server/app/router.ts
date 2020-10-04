import { Application } from 'egg';

export default (app: Application) => {
  const { controller, router } = app;

  router.get('/api/wechat/echo', controller.home.wechatEcho);
  router.get('/', controller.home.index);
};
