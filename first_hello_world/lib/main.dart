import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // final _controller = TextEditingController();

  // @override
  // void dispose() {
  //   // 컨트롤러를 해제합니다.
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            // ListView를 Expanded 위젯으로 감싸서 크기를 조절
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: const Center(child: Text('Entry A')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: const Center(child: Text('Entry B')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: const Center(child: Text('Entry C')),
                  ),
                ],
              ),
            ),
            TextField(
              // controller: _controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '복습할 내용을 입력하세요',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // 텍스트 필드의 내용을 지웁니다.
                      // _controller.clear();
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
