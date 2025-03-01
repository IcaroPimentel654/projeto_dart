import 'dart:io';

void main() {
  print('Digite um número de 1 a 12 para saber o mês correspondente:');

  int numero = obterNumeroValido();

  String mes = obterMes(numero);
  print(mes);
}

int obterNumeroValido() {
  String? input = stdin.readLineSync();

  try {
    int numero = int.parse(input!);

    if (numero < 1 || numero > 12) {
      print('Número inválido. Tente novamente.');
      return obterNumeroValido();
    }

    return numero;
  } catch (e) {
    print('Entrada inválida. Por favor, insira um número de 1 a 12.');
    return obterNumeroValido();
  }
}

String obterMes(int numero) {
  switch (numero) {
    case 1:
      return 'Janeiro';
    case 2:
      return 'Fevereiro';
    case 3:
      return 'Março';
    case 4:
      return 'Abril';
    case 5:
      return 'Maio';
    case 6:
      return 'Junho';
    case 7:
      return 'Julho';
    case 8:
      return 'Agosto';
    case 9:
      return 'Setembro';
    case 10:
      return 'Outubro';
    case 11:
      return 'Novembro';
    case 12:
      return 'Dezembro';
    default:
      return 'Número inválido. Por favor, insira um número de 1 a 12.';
  }
}
