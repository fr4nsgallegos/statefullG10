import 'package:flutter/material.dart';
import 'package:statefullg10/constants/constants.dart';
import 'package:statefullg10/models/deport_model.dart';
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

  List<DeportModel> favoriteDeportList = [];

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
                runSpacing: 16, //ESPACIADO VERTICAL ENTRE FILAS
                alignment: WrapAlignment.spaceAround,
                children: [
                  for (int i = 0; i < deportModelList.length; i++)
                    ItemDeportWidget(
                      deporte: deportModelList[i],
                    )
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              height: 48,
            ),
            Text(
              "Mis deportes favoritos son:",
              style: tituloStyle,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: [
                  buildDeporteContainer("Volery"),
                  buildDeporteContainer("Volery"),
                  buildDeporteContainer("Volery"),
                  buildDeporteContainer("Volery"),
                  buildDeporteContainer("Volery"),
                  buildDeporteContainer("Volery"),
                  buildDeporteContainer("Volery"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
