import 'package:flutter/material.dart';
import 'package:pjct/fn.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: screenOne(),
    );
  }
}

class screenOne extends StatefulWidget {
  const screenOne({Key? key}) : super(key: key);

  @override
  State<screenOne> createState() => _screenOneState();
}

class _screenOneState extends State<screenOne> {

String resultText = 'Type any number and sumbit';

  final textOCntrllr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: textOCntrllr,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  final number = textOCntrllr.text;
               final result  = await dataComing(number: number);
               setState(() {
                 resultText = result.text ?? 'loading';
               });
                },
                child: const Text('submit')),
                const SizedBox(height: 50,),
                 Text(resultText)
          ],
        ),
      ),
    );
  }
}
