import 'package:flutter_redux_boilerplate/actions/auth_actions.dart';
import 'package:flutter_redux_boilerplate/models/auth_state.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers([
  new TypedReducer<AuthState, UserLoginSuccess>(userLoginSuccessReducer),
  new TypedReducer<AuthState, UserLoginFailure>(userLoginFailureReducer),
  new TypedReducer<AuthState, UserLogout>(userLogoutReducer),
]);

AuthState userLoginSuccessReducer(AuthState auth, UserLoginSuccess action) {
  return new AuthState().copyWith(
      isAuthenticated: true, isAuthenticating: false, user: action.user);
}

AuthState userLoginFailureReducer(AuthState auth, UserLoginFailure action) {
  return new AuthState().copyWith(
      isAuthenticated: false, isAuthenticating: false, error: action.error);
}

AuthState userLogoutReducer(AuthState auth, UserLogout action) {
  return new AuthState();
}
