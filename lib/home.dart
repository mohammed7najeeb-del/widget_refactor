import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final container = Container(
    color: const Color.fromARGB(255, 163, 21, 87),
    height: 40,
    width: 40,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Layout"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Widget_Row2(container: container),
                const SizedBox(height: 16),
                const Widget_Row1(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Widget_Row2 extends StatelessWidget {
  const Widget_Row2({
    super.key,
    required this.container,
  });

  final Container container;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        container,
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            color: const Color.fromARGB(255, 10, 7, 218),
            height: 40,
          ),
        ),
        const SizedBox(width: 16),
        Container(
          color: const Color.fromARGB(255, 36, 188, 183),
          height: 40,
          width: 40,
        ),
      ],
    );
  }
}

class Widget_Row1 extends StatelessWidget {
  const Widget_Row1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color.fromARGB(255, 255, 7, 7),
              height: 40,
              width: 40,
            ),

            const SizedBox(height: 16),

            Container(
              color: const Color.fromARGB(255, 255, 64, 64),
              height: 40,
              width: 40,
            ),

            const SizedBox(height: 16),

            Container(
              color: const Color.fromARGB(255, 255, 64, 64),
              height: 40,
              width: 40,
            ),

            const SizedBox(height: 20),

            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 243, 33, 208),
              radius: 100,
              child: Widget_Stack(),
            ),

            const SizedBox(height: 20),

            const Text("End Of The Line"),
          ],
        ),
      ],
    );
  }
}

class Widget_Stack extends StatelessWidget {
  const Widget_Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color.fromARGB(255, 54, 136, 244),
          height: 100,
          width: 100,
        ),
        Container(
          color: const Color.fromARGB(255, 82, 255, 143),
          height: 60,
          width: 60,
        ),
        Container(
          color: const Color.fromARGB(255, 162, 0, 255),
          height: 40,
          width: 40,
        ),
      ],
    );
  }
}