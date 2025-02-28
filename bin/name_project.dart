import 'dart:io';

//Validaçao de categorias de produtos em um sistema de estoque.
void main() {
  List<String> categorias = ['eletronicos', 'alimentos', 'vestuario', 'livros'];
  
  while(true){
    print('Digite a categoria do produto: eletronicos, alimentos, vestuario, livros\n');
    String categoria = stdin.readLineSync() ?? '';

    if (categorias.contains(categoria.toLowerCase())) {
      print('Categoria válida: ' + categoria);
      break;
    } else {
      print('Categoria inválida.');
    }
  }
}
