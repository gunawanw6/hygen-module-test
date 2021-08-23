---
to: actions/<%=fileName%>.action.js
---
<% action = h.inflection.underscore( name, true )%>
export const <%=h.changeCase.upper(action)%>_REQUEST = '<%=h.changeCase.upper(action)%>_REQUEST';
export const <%=h.changeCase.upper(action)%>_SUCCESS = '<%=h.changeCase.upper(action)%>_SUCCESS';
export const <%=h.changeCase.upper(action)%>_CANCELLED = '<%=h.changeCase.upper(action)%>_CANCELLED';
export const <%=h.changeCase.upper(action)%>_FAILED = '<%=h.changeCase.upper(action)%>_FAILED';
