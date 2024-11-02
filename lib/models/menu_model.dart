class MenuModel {
  String titulo;
  String urlImage;
  String days;
  double price;

  //Contructor por defecto
  // MenuModel(this.titulo, this.urlImage, this.days, this.price);

  //Constructor declarativo (parámetros opcionales requeridos)
  MenuModel({
    required this.titulo,
    required this.urlImage,
    required this.days,
    required this.price,
  });
}

//CREANDO LISTA DE MENUMODEL

List<MenuModel> listMenu = [
  MenuModel(
      titulo: "Menu 1",
      urlImage:
          "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      days: "Lun - Mar",
      price: 8.5),
  MenuModel(
      titulo: "Menu 2",
      urlImage:
          "https://images.pexels.com/photos/10267922/pexels-photo-10267922.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      days: "Mier - Jue ",
      price: 5.5),
  MenuModel(
      titulo: "Menu 3",
      urlImage:
          "https://images.pexels.com/photos/5840086/pexels-photo-5840086.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      days: "Vier - Sab",
      price: 9),
  MenuModel(
      titulo: "Menu 4",
      urlImage:
          "https://images.pexels.com/photos/28115712/pexels-photo-28115712/free-photo-of-comida-plato-ligero-restaurante.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      days: "Dom",
      price: 10),
];
