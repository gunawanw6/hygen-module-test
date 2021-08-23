---
to: actions/creators/<%=fileName%>.creator.js
---
import {
  <%=h.changeCase.upper(name)%>_REQUEST,
  <%=h.changeCase.upper(name)%>_SUCCESS,
  <%=h.changeCase.upper(name)%>_CANCELLED,
  <%=h.changeCase.upper(name)%>_FAILED
} from '@actions/<%=fileName%>.action'; 

export const <%=name%>Request = (params = {}) => ({
  type: <%=h.changeCase.upper(name)%>_REQUEST,
  ...params,
});

export const <%=name%>Success = (data) => ({
  type: <%=h.changeCase.upper(name)%>_SUCCESS,
  data
});

export const <%=name%>Failed = (error) => ({
  type: <%=h.changeCase.upper(name)%>_FAILED,
  error
});

export const <%=name%>Cancelled = () => ({
  type: <%=h.changeCase.upper(name)%>_CANCELLED
});