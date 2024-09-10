import 'package:flutter/material.dart';
import 'package:grade_tool/grade_tool.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grade Tool',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: const Scaffold(body: GradeToolWidget()),
    );
  }
}

class GradeToolWidget extends StatefulWidget {
  const GradeToolWidget({super.key});

  @override
  State<GradeToolWidget> createState() => _GradeToolWidgetState();
}

class _GradeToolWidgetState extends State<GradeToolWidget> {
  final TextEditingController _controller = TextEditingController();
  String _letterGrade = '';

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: const TextStyle(
          fontSize: 32,
          color: Colors.black,
        ),
        child: Column(
          children: [
            const Text('Enter your percent grade'),
            TextField(
              controller: _controller,
            ),
            ElevatedButton(
              onPressed: _onButtonPressed,
              child: const Text('Get letter grade'),
            ),
            Text(_letterGrade),
          ],
        ));
  }

  void _onButtonPressed() {
    setState(() {
      GradeTool gradeTool = GradeTool();
      final textFieldContent = _controller.text;
      double percentGrade = double.parse(textFieldContent);
      final numGrade = gradeTool.percentToDouble(percentGrade);
      LetterGrade letterGrade = gradeTool.assignLetterGrade(numGrade);
      _letterGrade = "You got a(n) ${letterGrade.name}";
    });
  }
}
