import 'package:flutter_redux_boilerplate/actions/auth_actions.dart';
import 'package:flutter_redux_boilerplate/models/app_state.dart';
import 'package:flutter_redux_boilerplate/models/product.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createProductMiddleware() => <Middleware<AppState>>[
      new TypedMiddleware<AppState, GetProductRequest>(getProduct),
    ];

final getProduct = _getProduct();

Middleware<AppState> _getProduct() {
  return (Store store, action, NextDispatcher next) async {
    if (action is GetProductRequest) {
      print("Middleware.....");
      //Appel API
      //Recup du produit
      Product produit = new Product("BigMac", "idBG");

      //Je dispatche vers le reducer afin de le stocker dans le Store
      store.dispatch(new GetProductRequestSuccess(produit));
    }

    next(action);
  };
}
