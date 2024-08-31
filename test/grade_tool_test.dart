import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_tool.dart';

void main() {
  final gradeTool = GradeTool();
  test('56.4 is an F', () {
    final result = gradeTool.assignLetterGrade(56.4);
    expect(result, "F");
  });
  test('67.5 is a D', () {
    final result = gradeTool.assignLetterGrade(67.5);
    expect(result, "D");
  });
  test('79.9 is a C', () {
    final result = gradeTool.assignLetterGrade(79.9);
    expect(result, "C");
  });
  test('80.0 is a B', () {
    final result = gradeTool.assignLetterGrade(80.0);
    expect(result, "B");
  });
  test('94.0 is an A', () {
    final result = gradeTool.assignLetterGrade(94.0);
    expect(result, "A");
  });
}
