import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

mixin ResponsiveMixin {
  void initResponsive(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
  }
}

mixin ConnectivityMixin {
  final connectivity = Connectivity();
  Future<bool> thereIsInternetConnection() async {
    var connectivityResult = await connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }
}
