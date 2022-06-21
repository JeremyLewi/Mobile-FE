//!M05

// import 'package:flutter/material.dart';
// import 'package:flutter_learning/pertemuan05/pertemuan05_screen.dart';
// import 'package:flutter_learning/pertemuan05/pertemuan05_provider.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//         providers: [
//           ChangeNotifierProvider(create: (_) => Pertemuan05Provider()),
//         ],
//         child: MaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//           ),
//           home: const Pertemuan05Screen(),
//         ));
//   }
// }

//!M06

// import 'package:flutter/material.dart';
// import 'package:flutter_learning/pertemuan06/pertemuan06_provider.dart';
// import 'package:provider/provider.dart';

// import 'pertemuan06/pertemuan06_screen.dart';

// void main() {
//   runApp(MultiProvider(providers: [
//     ChangeNotifierProvider(create: (_) => Pertemuan06Provider()),
//   ], child: const MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final prov = Provider.of<Pertemuan06Provider>(context);
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: prov.enableDarkMode == true ? prov.dark : prov.light,
//       home: const Pertemuan06Screen(),
//     );
//   }
// }

//? STUDI KASUS M06

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_learning/pertemuan06/studi_kasus/studi_kasus_provider.dart';
// import 'package:flutter_learning/pertemuan06/studi_kasus/studi_kasus_screen.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => StudiKasusProvider()),
//       ],
//       child: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Mobile Front-End',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: const StudiKasusScreen(),
//     );
//   }
// }

// //!M07

// import 'package:flutter/material.dart';
// import 'package:flutter_learning/pertemuan07/pertemuan07_provider.dart';
// import 'package:flutter_learning/pertemuan07/pertemuan07_screen.dart';
// import 'package:flutter_learning/pertemuan07/pertemuan07_screen_praktek.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MultiProvider(providers: [
//     ChangeNotifierProvider(create: (_) => Pertemuan07Provider()),
//   ], child: const MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final prov = Provider.of<Pertemuan07Provider>(context);
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Pertemuan07ScreenPraktek(),
//     );
//   }
// }

//! - UTS

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import './screens/products_overview_screen.dart';
// import './screens/product_detail_screen.dart';
// import './screens/cart_screen.dart';
// import './providers/all_products.dart';
// import './providers/cart.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (context) => Cart(),
//         ),
//         ChangeNotifierProvider(
//           create: (context) => Products(),
//         ),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'MyShop',
//         theme: ThemeData(
//           primarySwatch: Colors.indigo,
//           accentColor: Colors.amber,
//           fontFamily: 'Lato',
//         ),
//         home: ProductsOverviewScreen(),
//         routes: {
//           ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
//           CartScreen.routeName: (ctx) => CartScreen(),
//         },
//       ),
//     );
//   }
// }

//? STUDI KASUS M09

// import 'package:flutter/material.dart';
// import 'package:flutter_learning/pertemuan09/pertemuan09_provider.dart';
// import 'package:flutter_learning/pertemuan09/pertemuan09_screen.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MultiProvider(providers: [
//     /// Provider kita pindahkan pada void main agar MyApp dapat menggunakan provider.
//     /// Tambahkan provider disini!
//     /// Provider minggu lalu, ini dihapus jika terjadi error.
//     // ChangeNotifierProvider(create: (_) => Pertemuan05Provider()),
//     // ChangeNotifierProvider(create: (_) => Pertememuan05SCProvider()),
//     // ChangeNotifierProvider(create: (_) => IFBProvider()),
//     // ChangeNotifierProvider(create: (_) => LogicProvider()),
//     // ChangeNotifierProvider(create: (_) => Pertemuan06Provider()),
//     // ChangeNotifierProvider(create: (_) => Pertemuan07Provider()),

//     //Provider minggu09
//     ChangeNotifierProvider(create: (_) => Pertemuan09Provider())
//   ], child: const MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // uncomment ini untuk menggunakan Provider Pertemuan06Provider()
//     // final prov = Provider.of<Pertemuan06Provider>(context);
//     return MaterialApp(
//       title: 'Mobile Front-End',
//       debugShowCheckedModeBanner: false,
//       // Gunakan "theme" ini untuk menerapkan enable dark mode sesuai topik materi minggu06 tentang switch.

//       // theme: prov.isActive == true ? prov.dark : prov.light,
//       theme: ThemeData(
//         brightness: Brightness.light,
//         primarySwatch: Colors.red,
//       ),
//       home: const Pertemuan09Screen(),
//     );
//   }
// }

//? Latihan

// import 'package:flutter/material.dart';
// import 'package:flutter_learning/pertemuan09/latihan/latihan_screen.dart';
// import 'package:flutter_learning/pertemuan09/pertemuan09_provider.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MultiProvider(providers: [
//     /// Provider kita pindahkan pada void main agar MyApp dapat menggunakan provider.
//     /// Tambahkan provider disini!
//     /// Provider minggu lalu, ini dihapus jika terjadi error.
//     // ChangeNotifierProvider(create: (_) => Pertemuan05Provider()),
//     // ChangeNotifierProvider(create: (_) => Pertememuan05SCProvider()),
//     // ChangeNotifierProvider(create: (_) => IFBProvider()),
//     // ChangeNotifierProvider(create: (_) => LogicProvider()),
//     // ChangeNotifierProvider(create: (_) => Pertemuan06Provider()),
//     // ChangeNotifierProvider(create: (_) => Pertemuan07Provider()),

//     //Provider minggu09
//     ChangeNotifierProvider(create: (_) => Pertemuan09Provider())
//   ], child: const MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // uncomment ini untuk menggunakan Provider Pertemuan06Provider()
//     // final prov = Provider.of<Pertemuan06Provider>(context);
//     return MaterialApp(
//       title: 'Mobile Front-End',
//       debugShowCheckedModeBanner: false,
//       // Gunakan "theme" ini untuk menerapkan enable dark mode sesuai topik materi minggu06 tentang switch.

//       // theme: prov.isActive == true ? prov.dark : prov.light,
//       theme: ThemeData(
//         brightness: Brightness.light,
//         primarySwatch: Colors.red,
//       ),
//       home: const LatihanPertemuan09(),
//     );
//   }
// }

//! M11

// import 'package:flutter/material.dart';
// import 'package:flutter_learning/pertemuan11/pertemuan11_screen.dart';
// import 'package:provider/provider.dart';
// import 'pertemuan11/pertemuan11_provider.dart';

// void main() {
//   runApp(MultiProvider(providers: [
//     //Provider minggu11
//     ChangeNotifierProvider(create: (_) => Pertemuan11Provider())
//   ], child: const MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // uncomment ini untuk menggunakan Provider Pertemuan06Provider()
//     // final prov = Provider.of<Pertemuan06Provider>(context);
//     return MaterialApp(
//       title: 'Mobile Front-End',
//       debugShowCheckedModeBanner: false,
//       // Gunakan "theme" ini untuk menerapkan enable dark mode sesuai topik materi minggu06 tentang switch.

//       // theme: prov.isActive == true ? prov.dark : prov.light,
//       theme: ThemeData(
//         brightness: Brightness.light,
//         primarySwatch: Colors.purple,
//       ),
//       home: const Pertemuan11Screen(),
//     );
//   }
// }

//! M13

// import 'package:flutter/material.dart';
// import 'package:flutter_learning/pertemuan13/pertemuan13_screen.dart';
// import 'package:provider/provider.dart';
// import 'pertemuan13/pertemuan13_provider.dart';

// void main() {
//   runApp(MultiProvider(providers: [
//     //Provider minggu13
//     ChangeNotifierProvider(create: (_) => Pertemuan13Provider())
//   ], child: const MyApp()));

// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//       title: 'Mobile Front-End',
//       debugShowCheckedModeBanner: false,

//       theme: ThemeData(
//         brightness: Brightness.light,
//         primarySwatch: Colors.purple,
//       ),
//       home:Pertemuan13Screen(),
//     );
//   }
// }

//! M14
import 'package:flutter/material.dart';
import 'package:flutter_learning/pertemuan14/pertemuan14_screen.dart';
import 'package:provider/provider.dart';
import 'pertemuan13/pertemuan13_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    //Provider minggu13
    ChangeNotifierProvider(create: (_) => Pertemuan13Provider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Front-End',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
      ),
      home: Pertemuan14Screen(),
    );
  }
}
