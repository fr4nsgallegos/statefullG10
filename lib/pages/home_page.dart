import 'package:flutter/material.dart';
import 'package:statefullg10/constants/constants.dart';

class HomePage extends StatelessWidget {
  Widget buildMenuCard(BuildContext context, String titulo, String dias,
      double precio, String imagenMenu) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(imagenMenu),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Image.network(
          //   "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          //   width: MediaQuery.of(context).size.width / 3,
          // ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titulo,
                style: TextStyle(fontSize: 20),
              ),
              Text(dias, style: subTituloStyle),
              Text("S/ $precio", style: tituloStyle),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SetState Cards Assets App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Selecciona tu mejor elección:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuCard(context, "Menu 1", "Lun-Mar", 5,
                "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            buildMenuCard(context, "Menu 2", "Lun-Mmier", 7,
                "https://images.pexels.com/photos/10267922/pexels-photo-10267922.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            buildMenuCard(context, "Menu 3", "Sab-Dom", 10,
                "https://images.pexels.com/photos/5840086/pexels-photo-5840086.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ],
        ),
      ),
    );
  }
}
