class GradeTool {
  String assignLetterGrade(double numericGrade) {
    if (numericGrade < 60.0) {
      return "F";
    } else if (numericGrade < 70.0) {
      return "D";
    } else if (numericGrade < 80.0) {
      return "C";
    } else if (numericGrade < 90.0) {
      return "B";
    } else {
      return "A";
    }
  }
}
