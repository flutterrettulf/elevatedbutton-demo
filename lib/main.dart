import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: Size(88, 36),
          ),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Elevated Button Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            Text("This Button has an OnPressed Function"),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button1'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("This Button has a null value for  OnPressed Function"),
            const ElevatedButton(
              onPressed: null,
              child: Text("Button2"),
              style: ButtonStyle(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
                "Setting the style of a button using ButtonStyle.styleFrom"),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background color
                onPrimary: Colors.white, // foreground color
                shadowColor: Colors.green, // elevation color
                elevation: 5, // elevation of button
              ),
              child: const Text('Button3'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Elevated button with custom color for pressed state"),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button4'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.deepPurple;
                    return null; // Use the component's default.
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Elevated Button with an icon"),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
