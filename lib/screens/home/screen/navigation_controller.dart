import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/screens/account/screen/accoount_home_screen.dart';
import 'package:coffee_shop/screens/home/screen/home_content_screen.dart';
import 'package:coffee_shop/screens/order/screen/order_home_screen.dart';
import 'package:coffee_shop/screens/shop/screen/shop_home.dart';
import 'package:coffee_shop/screens/wallet/screen/wallet_home_screen.dart';

part 'navigation_controller.g.dart';

class NavigationController = _NavigationController with _$NavigationController;

abstract class _NavigationController with Store {
  @observable
  int selectedIndex = 0;

  final List<Widget> screens = [
    const HomeContentScreen(),
    const ShopHomeScreen(),
    const OrderHomeScreen(),
    const WalletHomeScreen(),
    const AccountHomeScreen(),
  ];

  @action
  void setSelectedIndex(int index) {
    selectedIndex = index;
  }
}
