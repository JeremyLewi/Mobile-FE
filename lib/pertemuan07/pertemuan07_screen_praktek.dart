import 'package:flutter/material.dart';

class Pertemuan07ScreenPraktek extends StatefulWidget {
  const Pertemuan07ScreenPraktek({Key? key}) : super(key: key);

  @override
  State<Pertemuan07ScreenPraktek> createState() =>
      _Pertemuan07ScreenPraktekState();
}

class _Pertemuan07ScreenPraktekState extends State<Pertemuan07ScreenPraktek> {
  int _index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          Container(
            margin: const EdgeInsets.all(5),
            width: 200,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: const TextField(
              decoration: InputDecoration(labelText: '  Telusuri Kontak'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ),
          const CircleAvatar(
            foregroundImage: NetworkImage('https://picsum.photos/200'),
          )
        ],
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_ic_call_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
