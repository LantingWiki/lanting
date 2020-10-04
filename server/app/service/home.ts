import { Context, Service } from 'egg';

export default class Home extends Service {
  public async wechatEcho(ctx: Context) {
    return {
      status: 'success',
      data: {
        url: '/api/wechat/echo',
        query: ctx.queries,
      }
    };
  }
}
