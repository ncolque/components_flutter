import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  //const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      //color: Color(0xF12F01F2),
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: FlutterLogo(
              size: 48.0,
            ), //Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo - title'),
            subtitle: Text(
                'Esto es un widget ListTile y esto es el subtitle de una tarjeta.'),
            trailing: Icon(Icons.more_vert),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text('Cancelar'),
                style: TextButton.styleFrom(primary: Colors.black),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Ok'),
                style: TextButton.styleFrom(primary: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          //Image(image: NetworkImage('url')),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner'),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(20.0, 10.0))
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
