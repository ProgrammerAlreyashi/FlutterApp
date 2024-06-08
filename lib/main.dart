import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/app_bar.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget implements PreferredSizeWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarWidget(title: "First Page", icon: Icons.home),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:mainAxisAlignment.Center,
          childern:<Widget>[
            const Text(
              "how many niggas do you know? "
            ),
            Text(
              '$_counter',
              style: theme.of(context).textThem.headlineMedium,
            ),
          ]
        ),
      ),
      flotingActionButten: FlotingActionButten(
        onPressed: _incrementCounter,
        tooltip: 'increment',
        child: const Icon(Icons.add),
        )
    );
  }
}
