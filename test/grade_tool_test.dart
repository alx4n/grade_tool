import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_tool.dart';

void main() {
  final data = {
    56.4: LetterGrade.F,
    67.5: LetterGrade.D,
    79.9: LetterGrade.C,
    80.0: LetterGrade.B,
    94.2: LetterGrade.A,
  };

  final gradeTool = GradeTool();
  for (double numGrade in data.keys) {
    final expected = data[numGrade];
    test('$numGrade is a(n) $expected', () {
      final calculatedGrade = gradeTool.percentToDouble(numGrade);
      final result = gradeTool.assignLetterGrade(calculatedGrade);
      expect(result, expected);
    });
  }
}
