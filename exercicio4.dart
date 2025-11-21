bool palindromo(String entrada) {
  String fraseOriginal = entrada.toLowerCase();
  String limpa = "";

  for (int i = 0; i < fraseOriginal.length; i++) {
    String c = fraseOriginal[i];
    if (RegExp(r'[a-z0-9]').hasMatch(c)) {
      limpa += c;
    }
  }

  String invertida = limpa.split('').reversed.join('');
  return invertida == limpa;
}

void main() {
  print(palindromo("A man, a plan, a canal: Panama"));
  print(palindromo("race a car")); 
  print(palindromo(" "));
}
