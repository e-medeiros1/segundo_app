import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.blue[100],
          ),
          child: const Center(
            child: Text(
              'TESTES - Segundo aplicativo',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              color: Colors.black,
              width: 196,
              height: 100,
              child: const Center(
                  child: Text(
                'Container in a row 1',
                style: TextStyle(color: Colors.white),
              )),
            ),
            Container(
              color: Colors.blue[700],
              width: 196,
              height: 100,
              child: const Center(child: Text('Container in a row 2')),
            )
          ],
        )
      ],
    );
  }
}
