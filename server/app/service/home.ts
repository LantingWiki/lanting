import { Context, Service } from 'egg';

export default class Home extends Service {
  public async home(ctx: Context) {
    return {
      status: 'success',
      data: {
        url: ctx.path,
        query: ctx.queries,
      },
    };
  }

  public async wechatEcho(ctx: Context) {
    return ctx.queries.echostr;
  }
}
