---
to: actions/creators/<%=fileName%>.creator.js
---
<% action = h.inflection.underscore( name, true )%>
import {
  <%=h.changeCase.upper(action)%>_REQUEST,
  <%=h.changeCase.upper(action)%>_SUCCESS,
  <%=h.changeCase.upper(action)%>_CANCELLED,
  <%=h.changeCase.upper(action)%>_FAILED
} from '@actions/<%=fileName%>.action'; 

export const <%=name%>Request = (params = {}) => ({
  type: <%=h.changeCase.upper(action)%>_REQUEST,
  ...params,
});

export const <%=name%>Success = (data) => ({
  type: <%=h.changeCase.upper(action)%>_SUCCESS,
  data
});

export const <%=name%>Failed = (error) => ({
  type: <%=h.changeCase.upper(action)%>_FAILED,
  error
});

export const <%=name%>Cancelled = () => ({
  type: <%=h.changeCase.upper(action)%>_CANCELLED
});