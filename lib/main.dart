import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bottom_bar.dart';
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
  final int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Removed const here
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
            100), // const is fine here because all parameters are constants
        child: AppBarWidget(
            title: "First Page",
            icon:
                Icons.home), // Assuming AppBarWidget's parameters are constants
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
      bottomNavigationBar: BottomBar(
        // ignore: avoid_print, no_leading_underscores_for_local_identifiers
        leftPress: (int index) =>
            print(index), // This lambda function makes BottomBar non-constant
        index: 0,
      ),
    );
  }
}
