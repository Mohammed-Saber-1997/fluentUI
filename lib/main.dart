import 'package:desktop_app/cubit/app_cubit.dart';
import 'package:desktop_app/home_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluent_ui/fluent_ui.dart';
// import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale("en", "US"), Locale("ar", "SA")],
      path: "assets/translations",
      fallbackLocale: const Locale("en", "US"),
      child: const MyApp(),
    ),
    // const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // static FluentLocalizations of(BuildContext context) {
  //   assert(debugCheckHasFluentLocalizations(context));
  //   return Localizations.of<FluentLocalizations>(context, FluentLocalizations)!;
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return FluentApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            // locale: AppCubit.get(context).isArabic
            //     ? const Locale("ar", "SA")
            //     : const Locale("en", "US"),
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              // textTheme: TextTheme(
              //   bodyText1: TextStyle(color: Colors.black),
              // ),
              brightness: Brightness.light,
              accentColor: Colors.blue,
              scaffoldBackgroundColor: Colors.white,
            ),
            darkTheme: ThemeData(
              // textTheme: TextTheme(
              //   bodyText1: TextStyle(color: Colors.white),
              // ),
              brightness: Brightness.dark,
              accentColor: Colors.green,
              scaffoldBackgroundColor: Colors.black,
            ),
            themeMode:
                AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
