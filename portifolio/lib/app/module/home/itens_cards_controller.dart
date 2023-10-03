import 'package:portifolio/app/enum/rotas_enum.dart';
import 'package:portifolio/app/module/home/itens_cards_model.dart';

class ItensCardsController {
  List<ItensCardsModel> buscarItensCards() {
    return [
      ItensCardsModel(
          nome: "Estrutura de Dados", descricao: "Atividades e Projtos", rota: Rotas.ESTRUTURA),
          
      // ItensCardsModel(
      //     nome: "Interação Humano e Computador",
      //     descricao: "Atividades e Projtos"),
      // ItensCardsModel(
      //     nome: "Projeto Integrador",
      //     descricao: "Atividades e Projtos"),
      // ItensCardsModel(
      //     nome: "Programação Web e Mobile III",
      //     descricao: "Atividades e Projtos"),
      // ItensCardsModel(
      //     nome: "Interação Humano e Computador",
      //     descricao: "Atividades e Projtos"),
    ];
  }
}
