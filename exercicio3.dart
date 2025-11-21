void main() {
  List<List<int>> resultado = [[1]];
  int numRows = 5;

  for (int i = 1; i < numRows; i++) {

    var anterior = resultado[i - 1];

    List<int> novaLinha = [1];

    for (int j = 0; j < anterior.length - 1; j++) {
      int soma = anterior[j] + anterior[j + 1];
      novaLinha.add(soma);
    }

    novaLinha.add(1);

    resultado.add(novaLinha);
  }

  print(resultado); 
}
