enum LetterGrade { A, B, C, D, F }

class GradeTool {
  LetterGrade assignLetterGrade(double numericGrade) {
    if (numericGrade < 0.6) {
      return LetterGrade.F;
    } else if (numericGrade < 0.7) {
      return LetterGrade.D;
    } else if (numericGrade < 0.8) {
      return LetterGrade.C;
    } else if (numericGrade < 0.9) {
      return LetterGrade.B;
    } else {
      return LetterGrade.A;
    }
  }

  double percentToDouble(double percentGrade) {
    double numGrade = percentGrade / 100;
    return numGrade;
  }
}
