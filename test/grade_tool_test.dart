import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_tool.dart';

void main() {
  final data = {
    56.4: "F",
    67.5: "D",
    79.9: "C",
    80.0: "B",
    94.2: "A",
  };

  final gradeTool = GradeTool();
  for (double numGrade in data.keys) {
    final expected = data[numGrade];
    test('$numGrade is a(n) $expected', () {
      final result = gradeTool.assignLetterGrade(numGrade);
      expect(result, expected);
    });
  }
}
