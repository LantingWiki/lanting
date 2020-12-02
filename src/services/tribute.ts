import request from '@/utils/request';

export interface TributeParamsType {
  userName: string;
  password: string;
  mobile: string;
  captcha: string;
}

export async function tribute(params: TributeParamsType) {
  return request('https://lanting.wiki/api/user/tribute', {
    method: 'POST',
    data: params,
  });
}
