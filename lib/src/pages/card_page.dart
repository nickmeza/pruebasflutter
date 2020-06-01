import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('si lees esto felicidades ganaste un Iphone 10'),
            subtitle: Text('hola amigo como estas deseas ver recidencia cerca de ti?'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('Cancelar')),
              FlatButton(onPressed: (){}, child: Text('Ok'), color: Colors.blue,),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://www.urban-hub.com/wp/wp-content/uploads/2018/05/180525_UH_BlogContentImage_ChaoyangPark_1200x800.png'),
            placeholder: AssetImage('assets/edificios.png'),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('descuento en departamentos alameda 4 piso'),
          )
        ],
      ),
    );
  }
}
