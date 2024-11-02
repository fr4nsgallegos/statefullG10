import 'package:flutter/material.dart';
import 'package:statefullg10/constants/constants.dart';
import 'package:statefullg10/models/menu_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? selectedMenuIndex;
  Widget buildMenuCard(BuildContext context, MenuModel menu, int index) {
    menu.isSelected = selectedMenuIndex == index;
    return GestureDetector(
      onTap: () {
        selectedMenuIndex = menu.isSelected == true ? null : index;
        setState(() {});

        // menu.isSelected =
        //     !menu.isSelected; //cambia el valor de true a false y viceversa
        // setState(() {});
        // print(menu.titulo);
        // print(menu.isSelected);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: menu.isSelected == true ? Color(0xffFDD770) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: menu.isSelected ? Colors.white : Colors.black, width: 2),
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
                  image: NetworkImage(menu.urlImage),
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
                  menu.titulo,
                  style: TextStyle(
                    fontSize: 20,
                    color: menu.isSelected ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  menu.days,
                  style: TextStyle(
                    fontSize: 18,
                    color: menu.isSelected ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  "S/ ${menu.price}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: menu.isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Column(
              children: List.generate(
                listMenu.length,
                (index) {
                  return buildMenuCard(
                    context,
                    listMenu[index],
                    index,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
