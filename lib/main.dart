import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provide.dart';
import 'tampilan_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => CryptoProvider()),
      ],
      child: MaterialApp(
        title: 'Pasar Crypto Syahrul Irfan',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: CryptoListScreen(),
      ),
    );
  }
}