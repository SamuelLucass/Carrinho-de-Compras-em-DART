//Biblioteca de Input
import 'dart:io';

//Variavel Global (Todos os escopos de função leem)
List<String> produtos = [];

//Função Principal,Adicionar um produto no carrinho, imprimir a lista e remover item
main() {
  bool condicao = true;
  while (condicao) {
    print("=== ADICIONE UM PRODUTO ===");
    String? text = stdin.readLineSync();
    if (text == "sair") {
      print("=== TERMINOU O PROGRAMA ===");
      print(produtos);
      condicao = false;
    } else if (text == "imprimir") {
      imprimir();
      print("Digite 'Remover' para remover um item");
    } else if (text == "remover") {
      remover();
    } else {
      produtos.add(text!);
    }
  }
}

//Função paralela de impressão para o usuário
imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print("ITEM $i - ${produtos[i]}");
  }
}

//Função paralela de remoção de item do carrinho de compras
remover() {
  print("=== QUAL ITEM DESEJA REMOVER ?:");
  imprimir();
  int item = int.parse(stdin.readLineSync()!);
  produtos.removeAt(item);
  print("==== ITEM REMOVIDO");
}
