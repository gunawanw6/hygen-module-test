---
to: actions/<%=fileName%>.action.js
---
export const <%=h.changeCase.upper(name)%>_REQUEST = '<%=h.changeCase.upper(name)%>_REQUEST';
export const <%=h.changeCase.upper(name)%>_SUCCESS = '<%=h.changeCase.upper(name)%>_SUCCESS';
export const <%=h.changeCase.upper(name)%>_CANCELLED = '<%=h.changeCase.upper(name)%>_CANCELLED';
export const <%=h.changeCase.upper(name)%>_FAILED = '<%=h.changeCase.upper(name)%>_FAILED';
