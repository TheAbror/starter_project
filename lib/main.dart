import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}




// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   ApiProvider.create();

//   await FlutterDownloader.initialize(debug: true, ignoreSsl: true);

//   /// For logging
//   setUpLogging();

//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
//     (_) {
//       runApp(
//         MultiBlocProvider(
//           providers: [
//             BlocProvider(create: (context) => AuthBloc()),
//             BlocProvider(create: (context) => SplashBloc()),
//             BlocProvider(create: (context) => ProfileBloc()),
//             BlocProvider(create: (context) => InquiryBloc()),
//             BlocProvider(create: (context) => DashboardBloc()),
//           ],
//           child: const MyApp(),
//         ),
//       );
//     },
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProfileBloc, ProfileState>(
//       builder: (context, state) {
//         return ScreenUtilInit(
//           designSize: const Size(360, 800),
//           minTextAdapt: true,
//           splitScreenMode: true,
//           builder: (context, child) {
//             return MaterialApp(
//               theme: state.isLightMode ? lightTheme() : darkTheme(),
//               themeMode: ThemeMode.system,
//               debugShowCheckedModeBanner: false,
//               builder: BotToastInit(),
//               navigatorObservers: [BotToastNavigatorObserver()],
//               onGenerateRoute: MainRouteGenerator().generateRoute,
//             );
//           },
//         );
//       },
//     );
//   }
// }
