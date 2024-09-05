enum LetterGrade { A, B, C, D, F }

class GradeTool {
  LetterGrade assignLetterGrade(double numericGrade) {
    if (numericGrade < 60.0) {
      return LetterGrade.F;
    } else if (numericGrade < 70.0) {
      return LetterGrade.D;
    } else if (numericGrade < 80.0) {
      return LetterGrade.C;
    } else if (numericGrade < 90.0) {
      return LetterGrade.B;
    } else {
      return LetterGrade.A;
    }
  }
}
