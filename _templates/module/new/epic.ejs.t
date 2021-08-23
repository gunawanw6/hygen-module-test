---
to: actions/epic/<%=fileName%>.epic.js
---
import { ofType } from 'redux-observable';
import {
  mergeMap,
  flatMap,
  takeUntil,
  tap,
  catchError,
  ignoreElements
} from 'rxjs/operators';
import { from } from 'rxjs';
<% action = h.inflection.underscore( name, true )%>
import {
  <%=h.changeCase.upper(action)%>_REQUEST,
  <%=h.changeCase.upper(action)%>_SUCCESS,
  <%=h.changeCase.upper(action)%>_CANCELLED,
  <%=h.changeCase.upper(action)%>_FAILED
} from '@actions/<%=fileName%>.action'; 
import { openToast } from '@helpers/toaster';
import { commons } from '@helpers';
import { <%=name%> } from '@services/<%=fileName%>.service';

// eslint-disable-next-line import/prefer-default-export
export const <%=name%>RequestEpic = (action$) => action$.pipe(
  ofType(<%=h.changeCase.upper(action)%>_REQUEST),
  mergeMap((action) => {
    const source = commons.generateAxiosCancelToken();
    const { callback } = action;
    return from(<%=name%>()).pipe(
      flatMap((res) => {
        if (typeof callback === 'function') {
          callback(res.data);
        }
        return Promise.resolve({
          type: <%=h.changeCase.upper(action)%>_SUCCESS
        });
      }),
      takeUntil(action$.pipe(
        ofType(<%=h.changeCase.upper(action)%>_CANCELLED),
        tap(() => source.cancel('cancelled'))
      )),
      catchError((error) => Promise.resolve({
        type: <%=h.changeCase.upper(action)%>_FAILED
      }))
    );
  })
);