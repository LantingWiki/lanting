import { Controller } from 'egg';

export default class HomeController extends Controller {
  public async index() {
    const { ctx } = this;
    ctx.body = await ctx.service.home.home(ctx);
  }

  public async wechatEcho() {
    const { ctx } = this;
    ctx.body = await ctx.service.home.wechatEcho(ctx);
  }
}
