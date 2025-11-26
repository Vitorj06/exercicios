void inverter(List<String> s) {
  for (int i = 0, j = s.length - 1; i < j; i++, j--) {
    String temp = s[i];
    s[i] = s[j];
    s[j] = temp;
  }
}

void main() {
  List<String> s = ["h", "e", "l", "l", "o"];
  inverter(s);
  print(s);
}
