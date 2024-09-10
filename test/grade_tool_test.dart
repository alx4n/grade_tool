import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_tool.dart';

void main() {
  final data = {
    0.564: LetterGrade.F,
    0.675: LetterGrade.D,
    0.799: LetterGrade.C,
    0.800: LetterGrade.B,
    0.942: LetterGrade.A,
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
