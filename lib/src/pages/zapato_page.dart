import 'package:flutter/material.dart';
import 'package:shoesapp/src/helpers/helpers.dart';
import 'package:shoesapp/src/widgets/curtom_widgets.dart';

class ZapatoPage extends StatelessWidget {
  const ZapatoPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    cambiarStatusDark();
    return Scaffold(
      /* body: CustomAppBar(texto: 'For You',) */
      /* body: ZapatoSizeProvider() */
      body: Column(
        children: <Widget>[
          CustomAppBar(texto: 'For you'),
          SizedBox(height: 20,),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: 'zapato-1', // identifi unico
                    child: ZapatoSizePreview()
                  ),
                  ZapatoDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  )
                ],
              ),
            ),
          ),
          AgregarCarritoBoton(monto: 180.0)
        ],
      ),
    );
  }
}