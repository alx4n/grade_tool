enum LetterGrade { A, B, C, D, F }

/*class NumberGRade {
  final double value;
  NumberGrade(this.value) {
    if (value < 0 || value > 1) {
      throw Exception('Value outside bounds.');
    }
  }
}*/

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
}
