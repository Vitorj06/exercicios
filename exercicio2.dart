int numerosromanos(String s) {
  Map<String, int> valores = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int resultado = 0;

  for (int i = 0; i < s.length; i++) {
    int valoratual = valores[s[i]]!;
    if (i + 1 < s.length && valoratual < valores[s[i + 1]]!) {
      resultado -= valoratual;
    } else {
      resultado += valoratual;
    }
  }
  return resultado;
}

void main() {
  print(numerosromanos("III"));
  print(numerosromanos("LVIII"));
  print(numerosromanos("MCMXCIV"));
}
