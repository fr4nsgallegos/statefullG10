import 'package:flutter/material.dart';
import 'package:statefullg10/constants/constants.dart';
import 'package:statefullg10/widgets/item_deport_widget.dart';

class FavoriteDeportsPage extends StatefulWidget {
  @override
  State<FavoriteDeportsPage> createState() => _FavoriteDeportsPageState();
}

class _FavoriteDeportsPageState extends State<FavoriteDeportsPage> {
  Widget buildDeporteContainer(String deporte) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.orange, width: 2),
        // color: Colors.orange,
      ),
      child: Text(deporte),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SetState Texts App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "¿Cuáles son tus deportes favoritos?",
              style: tituloStyle,
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Wrap(
                spacing: 8, //ESPACIADO HORIZONTAL ENTRE ELEMENTOS
                runSpacing: 8, //ESPACIADO VERTICAL ENTRE FILAS
                alignment: WrapAlignment.spaceAround,
                children: [
                  ItemDeportWidget(),
                  ItemDeportWidget(),
                  ItemDeportWidget(),
                  ItemDeportWidget(),
                  ItemDeportWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
