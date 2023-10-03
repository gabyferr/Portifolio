import 'package:flutter/material.dart';

class HomeEstuturaDados extends StatelessWidget {
  const HomeEstuturaDados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Estrutura de Dados",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        elevation: 0.00,
        backgroundColor: const Color(0xFFA323FF),
      ),
    );
  }
}