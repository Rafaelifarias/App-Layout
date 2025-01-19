import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'programa layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                //color: const Color.fromARGB(255, 79, 206, 151),
                child: const Text('layout superior'),
              ),
            ),
            Expanded(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        border:Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        boxShadow:const [
                           BoxShadow(
                          color: Colors.black,
                          blurRadius: 15,
                          offset: Offset(10, 10),
                        ),
                      ], 
                      ),
                      
                      child: const Text('meu aplicativo'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                // color: const Color.fromARGB(255, 58, 203, 124),
                child: const Text('inferior'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
