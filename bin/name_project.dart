import 'dart:io';

void main() {
  Map<String, String> operationsMethods = {
    "deposito": "Depósito",
    "retirada": "Retirada",
    "transferencia": "Transferência",
    "pagamento": "Pagamento",
  };

  double getOperationValue() {
    print("\nDigite o valor da operação:");
    String valueInput = stdin.readLineSync()!;
    if (double.tryParse(valueInput) == null) {
      print("\nValor inválido. Tente novamente.");
      return getOperationValue();
    }
    return double.parse(valueInput);
  }

  String getOperationMethods() {
    print(
      "\nDigite uma operação (deposito, retirada, transferencia, pagamento):",
    );
    String operationInput = stdin.readLineSync()!.toLowerCase();
    if (!operationsMethods.containsKey(operationInput)) {
      print("\nOperação inválida. Tente novamente.");
      return getOperationMethods();
    }
    return operationInput;
  }

  String operation = getOperationMethods();
  double value = getOperationValue();

  print(
    "\nOperação escolhida: ${operationsMethods[operation]}, Valor: $value\n",
  );
}
