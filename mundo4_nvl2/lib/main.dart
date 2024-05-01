import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'PARADISUS VARADERO RESORT & SPA',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Text(
            'Resort de luxo em Varadero, Cuba',
            style: TextStyle(
              color: Colors.grey[600], 
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber, 
              ),
              const Padding(padding: EdgeInsets.only(right: 4)),
              const Text('5', style: TextStyle(color: Colors.amber)), 
            ],
          ),
        ],
      ),
    );

    Widget _buildButton(String label, IconData icon) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(icon),
            color: Colors.blueAccent,
            onPressed: () {
              // Adicione a funcionalidade aqui
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButton('Local', Icons.location_on),
        _buildButton('Contato', Icons.call),
        _buildButton('Compartilhar', Icons.share),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Paradisus Varadero Resort & Spa, um paraíso na cubana Playa Azul Ecoresort de luxo 5 Estrelas Ultra Tudo Incluído, localizado à beira da praia na região de Rincón Francés, dentro da reserva ecológica de Varadero. A elegância privilegia este encantador ambiente de privacidade, em especial suas seções exclusivas Royal Service (Somente Adultos) e Family Concierge. O hotel surpreende por sua animada integração com a natureza do entorno, seu amplo lobby muito perto da orla de uma praia exclusiva em forma de enseada, belos jardins com palmeiras, ambientado com vegetação tropical, terraços de onde é possível desfrutar de espetaculares pores do sol. Conta com o original Yhi Spa com passarela e vista para o mar, gazebo de casamento, áreas de convenções e reuniões, salão de jogos para crianças e acomodações familiares. Destacam-se suas modernas e elegantes acomodações, todas Junior Suite com vista para o mar, o jardim ou piscinas. Conexão Wi-Fi gratuita. Sua seção Royal Service oferece experiências únicas em excelentes suítes e vilas.Recomendado para famílias, casamentos, luas de mel, grupos, incentivos e wellness/spa.',
        softWrap: true,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
        ),
      ),
    );

    return MaterialApp(
      title: 'Resort tudo incluso',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Resort tudo incluso',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/Resort.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
