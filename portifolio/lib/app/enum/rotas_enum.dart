
enum Rotas{
  ESTRUTURA;
}

extension rotasExtension on Rotas{
  String get nameRoute => mapRotas[this]!;
}

Map<Rotas, String>mapRotas={

  Rotas.ESTRUTURA:'/homeEstruturaDeDados',

};

