import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  void _getListagemAPI() {
    http.get(
      Uri.https('api.themoviedb.org', '4/list/2?language=en-US&page=1'),
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjhjYjgyODI0Njk5MWM2ZjQ1MTk0MWY4ODdhNmUzOSIsInN1YiI6IjY1ZTFkMmM5NTFmOTlhMDE4NTU5MWQ4NCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.x3Nxw_Ftt80km_LotEF3r_VMJgdXWPIjV46k1i1_3aM',
        'accept': 'application/json',
      },
    ).then(
      (Response value) => print(value.body));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getListagemAPI();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Text('Terceira aula'),
        ),
      ),
    );
  }
}
