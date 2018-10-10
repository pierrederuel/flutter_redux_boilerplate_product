import 'package:flutter_redux_boilerplate/actions/auth_actions.dart';
import 'package:flutter_redux_boilerplate/models/product.dart';
import 'package:redux/redux.dart';

Reducer<Product> productReducer = combineReducers([
  new TypedReducer<Product, GetProductRequestSuccess>(userLoginSuccessReducer),
  new TypedReducer<Product, GetProductRequestFailure>(userLoginFailureReducer),
]);

Product userLoginSuccessReducer(
    Product product, GetProductRequestSuccess action) {
  print("Reducer.....");
  return action.product;
}

Product userLoginFailureReducer(
    Product product, GetProductRequestFailure action) {
  return null;
}
