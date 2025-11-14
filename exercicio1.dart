List<int> Lerdigits(List<int> digits) {
  if (digits.isEmpty) return [1];

  {
    if (digits.any((d) => d < 0 || d > 9)) {
      throw ArgumentError('informe um digito entre 0 e 9');
    }

    for (int i = digits.length - 1; i >= 0; i--) {
      if (digits[i] < 9) {
        digits[i] = digits[i] + 1;
        return digits;
      } else {
        digits[i] = 0;
      }
    }
    List<int> result = List<int>.filled(digits.length + 1, 0);
    result[0] = 1;
    return result;
  }
}

void main() {
  print(Lerdigits([1,4,8]));
}
