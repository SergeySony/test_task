import 'package:flutter/material.dart';
import 'package:test_task/res/app_text_style.dart';
import 'package:test_task/res/screen_color_scheme.dart';

void main() {
  runApp(const Main());
}

/// The first class where our application starts.
class Main extends StatelessWidget {
  /// Const constructor.
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

/// Our home page, which implements a background color change
/// when clicking anywhere on the screen.
class MyHomePage extends StatefulWidget {
  /// Const constructor.
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScreenColorScheme _scheme = ScreenColorScheme();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _scheme.backgroundColor,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => clickOnScreenEvent(),
        child: Center(
          child: Text(
            'Hey there',
            style: AppTextStyle.roboto30
                .copyWith(color: _scheme.textColorVisibleOnBackground),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void clickOnScreenEvent() {
    setState(() {
      _scheme = ScreenColorScheme();
    });
  }
}
