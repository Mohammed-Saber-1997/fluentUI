import 'package:desktop_app/cubit/app_cubit.dart';
import 'package:desktop_app/tree_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppCubit.get(context).isDark ? Colors.black : Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ramadan'.tr(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
              child: Text(
                AppCubit.get(context).isDark ? 'Dark Mode' : 'Light Mode',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onPressed: () => AppCubit.get(context).changeAppMode(),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
              child: Text(
                context.locale.languageCode == 'en' ? 'English' : 'عربي',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onPressed: () async {
                if (context.locale.languageCode == 'en') {
                  await context.setLocale(context.supportedLocales[1]);
                } else {
                  await context.setLocale(context.supportedLocales[0]);
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
              child: const Text(
                'Go To TreeViewScreen',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  FluentPageRoute(
                    builder: (context) => const TreeViewScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   // onPressed: () => AppCubit.get(context).changeAppLanguage(),
      //   onPressed: () async {
      //     if (context.locale.languageCode == 'en') {
      //       await context.setLocale(context.supportedLocales[1]);
      //     } else {
      //       await context.setLocale(context.supportedLocales[0]);
      //     }
      //   },
      //
      //   // tooltip: 'Increment',
      //   child: Text(
      //     // AppCubit.get(context).isArabic ? 'English' : 'عربي',
      //     context.locale.languageCode == 'en' ? 'عربي' : 'English',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 12,
      //     ),
      //   ),
      // ),
    );
  }
}

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   void _changeLang() {
//     setState(() async {
//       if (context.locale.languageCode == 'en') {
//         await context.setLocale(context.supportedLocales[1]);
//       } else {
//         await context.setLocale(context.supportedLocales[0]);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times :'.tr(),
//               style: const TextStyle(
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10.0),
//               child: Text(
//                 '$_counter',
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             IconButton(
//               icon: const Icon(Icons.add),
//               onPressed: _incrementCounter,
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _changeLang,
//         // tooltip: 'Increment',
//         child: Text(
//           context.locale.languageCode == 'en' ? 'عربي' : 'English',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 12,
//           ),
//         ),
//       ),
//     );
//   }
// }
