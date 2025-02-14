
import 'package:flutter/material.dart';

class MudarCidade extends StatelessWidget {
  var _cidadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Mudar cidade"),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/white_snow.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cidade',
                  ),
                  controller: _cidadeController,
                  keyboardType: TextInputType.text,
                ),
              ),
              ListTile(
                title: FlatButton(
                  onPressed: () {
                    Navigator.pop(context, {
                      'cidade': _cidadeController.text
                    });
                  },
                  textColor: Colors.white70,
                  color: Colors.redAccent,
                  child: Text('Mostra o Tempo')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
