import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_tool.dart';

void main() {
  final gradeTool = GradeTool();
  test('56.4 is an F', () {
    final result = gradeTool.assignLetterGrade(56.4);
    expect(result, "F");
  });
}
