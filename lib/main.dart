import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_example_1/constants.dart';
import 'package:flutter_web_example_1/screns/Login/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(
    enabled: false,
    builder: (ctx) => const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.purple,
            // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: kprimaryColor,
              iconColor: Colors.purple,
              prefixIconColor: Colors.purple,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.r)),
                borderSide: BorderSide.none,
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  // minimumSize: Size(200.w, 50.h),
                  backgroundColor: Color(0xffe7dcf5),
                  foregroundColor: Colors.white,
                  shape: StadiumBorder()),
            ),
          ),
          home: child,
        );
      },
      child: const LoginScreen(),
    );
  }
}
