import 'package:api/Screens/login_screen.dart';
import 'package:api/Screens/splash_screen.dart';
import 'package:api/controllers/services_Controller.dart';
import 'package:api/firebase_options.dart';
import 'package:api/view/products.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      initialBinding: BindingsBuilder(() {
        Get.put(ProductsController());
      }),
      getPages: [
        GetPage(
          name: "/", 
          page: () => SplashScreen()
        ),
        GetPage(
          name: '/signin',
          page: () =>  LoginScreen(),
        ),
        GetPage(
          name: '/products',
          page: () => const ProductsPage(),
          binding: BindingsBuilder(() {
            Get.lazyPut<ProductsController>(() => ProductsController());
          }),
        ),
      ],
    )
  );
}
