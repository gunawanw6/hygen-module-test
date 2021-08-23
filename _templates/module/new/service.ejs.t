---
to: services/<%=fileName%>.service.js
---
import { isEmpty, get } from 'lodash';
import { Config } from '@constants';
import HttpService from '../helpers/http-request';
import { commons, authHeader } from '../helpers';

export const <%=name%> = async (cancelToken) => {
  const requestBody = `query{
    <%=name%> {
      internalId
    }
  }`;
  try {
    const response = await HttpService().graph(cancelToken)({ query: requestBody });
    return response.data.<%=name%>;
  } catch (error) {
    const err = error.response ? error.response.data.<%=name%> : error;
    return Promise.reject(err);
  }
};

export default { <%=name%> }