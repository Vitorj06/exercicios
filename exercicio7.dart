String inverterVogais(String s) {
  List<String> lista = s.split('');
  List<String> vogais = ["a","e","i","o","u","A","E","I","O","U"];

  List<String> achadas = [];
  for (int i = 0; i < lista.length; i++) {
    if (vogais.contains(lista[i])) {
      achadas.add(lista[i]);
    }
  }

  List<String> invertidas = [];
  for (int i = achadas.length - 1; i >= 0; i--) {
    invertidas.add(achadas[i]);
  }

  int pos = 0;
  for (int i = 0; i < lista.length; i++) {
    if (vogais.contains(lista[i])) {
      lista[i] = invertidas[pos];
      pos++;
    }
  }

  return lista.join('');
}

void main() {
  print(inverterVogais("Sorvete"));
  print(inverterVogais("code"));
}
