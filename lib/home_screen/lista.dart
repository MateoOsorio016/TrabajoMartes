
import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_screen/categorias.dart';
import 'package:flutter_application_2/home_screen/insumos.dart';
import 'package:flutter_application_2/home_screen/productos.dart';




class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();

}

class _MyListState extends State<MyList> {



  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: const Text('Menu')),
     body: 
     ListView(
      children: [
         ListTile(
          title: const Text('Lista de Insumos', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
          trailing: const Icon(Icons.water_drop_outlined),
           onTap: (){
            final route = MaterialPageRoute(builder: (context)=> const InsumosList());
            Navigator.push(context, route);
          },
        ),
         ListTile(
          title: const Text('Lista de categorias', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
          trailing: const Icon(Icons.list_alt),
           onTap: (){
            final route = MaterialPageRoute(builder: (context)=> const CategoriaList());
            Navigator.push(context, route);
          },
        ),
         ListTile(
          title: const Text('Lista de Productos', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
          trailing: const Icon(Icons.production_quantity_limits),
           onTap: (){
            final route = MaterialPageRoute(builder: (context)=> const ProductosList());
            Navigator.push(context, route);
          },
        ),
        // ListTile(
        //   title: const Text('Crear Categoria'),
        //   trailing: const Icon(Icons.water_drop_outlined),
        //    onTap: (){
        //     final route = MaterialPageRoute(builder: (context)=> const Categorias());
        //     Navigator.push(context, route);
        //   },
        // ),
        //  ListTile(
        //   title: const Text('Calcular Calorías'),
        //   trailing: const Icon(Icons.water_drop_outlined),
        //    onTap: (){
        //     final route = MaterialPageRoute(builder: (context)=> const Calorias());
        //     Navigator.push(context, route);
        //   },
        // ),
        // ListTile(
        //   title: const Text('Lista de Rutinas de Ejercicio'),
        //   trailing: const Icon(Icons.water_drop_outlined),
        //    onTap: (){
        //     final route = MaterialPageRoute(builder: (context)=> const MyList3());
        //     Navigator.push(context, route);
        //   },
        // ),
        //  ListTile(
        //   title: const Text('Calcular Presión Arterial'),
        //   trailing: const Icon(Icons.water_drop_outlined),
        //    onTap: (){
        //     final route = MaterialPageRoute(builder: (context)=> const Presion());
        //     Navigator.push(context, route);
        //   },
        // ),
        // ListTile(
        //   title: const Text('Contacto'),
        //   trailing: const Icon(Icons.water_drop_outlined),
        //    onTap: (){
        //     final route = MaterialPageRoute(builder: (context)=> const Contacto());
        //     Navigator.push(context, route);
        //   },
        // ),
        
      ],
     ),
    );
  }
}