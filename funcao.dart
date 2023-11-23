import 'dart:io';

void calcularNumerosAnteriores() {
  int somaTotal = 0;
  print("Digite um valor inteiro positivo:");

  try {
    int n = int.parse(stdin.readLineSync() ?? '');

    for (int i = 0; i < n; i++) {
      int restoA = i % 3;
      int restoB = i % 5;
      if (restoA == 0 || restoB == 0) {
        somaTotal += i;
      }
    }

    print("A soma dos valores é: $somaTotal");
  } catch (e) {
    print("Por favor, insira um número inteiro válido.");
  }
}

void main(List<String> args) {
  calcularNumerosAnteriores();
}
