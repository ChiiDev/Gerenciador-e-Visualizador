import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'cadastro.dart';
import 'login.dart';

void main() => runApp(Profile());

//DEPOIS ALTERAR DE ALGUMA FORMA! PRECISO QUE ESSA PÁGINA N SEJA A MAIS !
class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.deepOrange,
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => (LoginApp())));
                  },
                  child: Text('Voltar',
                    style: TextStyle(color: Colors.white, fontSize: 24),),
                ),
              ),
              //TEXTOS IMPROVISADOS PRA TROCAR DE PÁGINA
              Container(
                height: 100,
                width: 160,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => (CadastroApp())));
                  },
                  child: Text('CADASTRO',
                    style: TextStyle(color: Colors.white, fontSize: 24),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}