
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackthonproject/prefs/shared_pref_controller.dart';
import 'package:hackthonproject/screens/Category_Screen.dart';
import 'package:hackthonproject/screens/event_details.dart';
import 'package:hackthonproject/screens/event_screen.dart';
import 'package:hackthonproject/screens/launch_screen.dart';
import 'package:hackthonproject/screens/sign_in_screen.dart';

void main ()async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initPref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:()=>
          MaterialApp(
            initialRoute:'/signin_screen' ,
            routes: {
              '/launch_screen': (context) => LaunchScreen(),
              '/signin_screen': (context) => Signin(),
              '/Category_Screen' : (context) => CategoryScreen(),
              '/event_screen' : (context) => EventScreen(),
              '/event_details' : (context) => EventDetailes(),

            },

            home:  Signin(),
          ),
    );
  }
}