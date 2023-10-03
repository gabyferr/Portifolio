import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portifolio/app/enum/rotas_enum.dart';
import 'package:portifolio/app/module/home/itens_cards_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final minhaLista = ItensCardsController().buscarItensCards();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        // shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomRight: Radius.circular(25),
        //         bottomLeft: Radius.circular(25)),
        //   ),
        elevation: 0.00,
        backgroundColor: const Color(0xFFA323FF),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 8, right: 8),
                  child: Card(
                    margin: const EdgeInsets.all(16.0),
                    child: Wrap(
                      children: [
                        Center(
                          child: Container(
                            width: double.infinity,
                            height: 275.0,
                            padding: const EdgeInsets.all(16.0),
                            child:
                                LayoutBuilder(builder: (context, constraints) {
                              final avatarSize =
                                  constraints.maxWidth > 700 ? 120.0 : 60.0;
                              final fontSize =
                                  constraints.maxWidth > 700 ? 24.0 : 16.0;

                              return SingleChildScrollView(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: avatarSize,
                                            backgroundImage: const AssetImage(
                                                'assets/img/img_fundo.jpg'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 16.0),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Gabriélly Custódio Ferreira",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: fontSize,
                                            ),
                                          ),
                                          const SizedBox(height: 8.0),
                                          Text(
                                            'Tenho 18 anos, sou formada em Técnico em Desenvolvimento de Sistemas-AMS. Estou cursando'
                                            ' o 4º de Análise em Desenvolvimento de Sistemas-AMS na FATEC Jales. Atualmente estou estagiando como'
                                            ' desenvolvedora na Precisão Sistemas em Jales-SP. Pretendo seguir na área de desenvolvimento mobile.',
                                            style: TextStyle(
                                              fontSize: fontSize,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Wrap(
              children: [
                LayoutBuilder(builder: (context, constraints) {
                  return SingleChildScrollView(
                    child: Center(
                      child: Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: [
                          GridView.builder(
                            itemCount: minhaLista.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 300.0,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              final item = minhaLista[index];
                              return Card(
                                child: SizedBox(
                                  width: 150.0,
                                  height: 200.0,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                  const SizedBox(height: 20.0),
                                                Text(
                                                  item.nome,
                                                  style: const TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 5,
                                                ),
                                                Text(
                                                  item.descricao,
                                                  style: const TextStyle(
                                                      fontSize: 14.0,
                                                      fontWeight: FontWeight.w200),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                  return Modular.to.navigate(item.rota.nameRoute);
                                                  },
                                                  child: const Text(
                                                    "Ir para as atividades e projetos",
                                                    style: TextStyle(
                                                      color: Color(0xFFFFFFFF),
                                                    ),
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty.all(
                                                            const Color(
                                                                0xFFD579FF)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
