import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kedai/views/splash_screen/splash_sreen.dart';
import 'consts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // we are using getX so we have to change this material app into getmaterialapp
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        // to set appbar icons color
        iconTheme: IconThemeData(
          color: darkFontGrey
        ),
        backgroundColor: Colors.transparent),
      fontFamily: regular
      ),
      home: const SplashScreen(),
    );
  }
}
