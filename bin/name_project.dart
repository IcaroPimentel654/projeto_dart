import 'dart:io';

void main() {
  List<String> fileTypes = ['pdf', 'jpg', 'png', 'docx'];

  void checarTipoArquivo(List<String> fileTypes) {
    print(
      'Qual o tipo do seu arquivo?\ntipos de arquivos -> pdf, jpg, png, docx: ',
    );
    String input = stdin.readLineSync() ?? '';

    if (fileTypes.contains(input.toLowerCase())) {
      print('Tipo de Arquivo $input v�lido.');
    } else {
      print('Tipo de Arquivo $input inv�lido.');
      checarTipoArquivo(fileTypes);
    }
  }

  checarTipoArquivo(fileTypes);
}
