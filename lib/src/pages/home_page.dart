
import 'package:flutter/material.dart';
import 'package:pruebas/src/providers/menu_provider.dart';
import 'package:pruebas/src/utils/geticon.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }
 Widget _lista() {
   //menuProvider.cargarData();
   /*
   estados del future:
   teniendo informacion, se resuelve o cuando da un error
   */
  //widguet para manegar sus 3 estados
    return FutureBuilder(
      //lo que queremos esperar
      future: menuProvider.cargarData(),
      //la info que tendra por defecto
      initialData: [],
      //resive una funcion que construya 
      builder: ( contex, AsyncSnapshot<List<dynamic>> snapshot ){
        return ListView(
          children: _listaItems(snapshot.data,contex),
        );
      },
    );
   /**/
 }

  List<Widget> _listaItems( List<dynamic> data ,BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
        //navegar entre pántallas
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          /*final router = MaterialPageRoute(
            builder: (context)=> AlertPage()
          );
          Navigator.push(context, router);   */     
        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
  }
}