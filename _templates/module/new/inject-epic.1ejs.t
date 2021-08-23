---
to: actions/index.epic.js
inject: true
before: 'rootEpic'
---
import * as <%=name%>Epic from '@actions/epic/<%=fileName%>.epic';
