import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(height: 20),
      ListTile(
          tileColor: Colors.white,
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/arrow.png"),
          )),
      SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "  My Order",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: popular(
                        "assets/images/Shoes.jpg",
                        "Axel Arigato",
                        "ibiza classic sneakers",
                        "Quantity: 1",
                        "size: 42",
                        "Color: Black",
                        "Rs 17,000"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: popular(
                        "assets/images/headphones.png",
                        "On Ear Headphones",
                        "Beats Solo3 Wireless Kulak",
                        "Quantity: 1",
                        "size: M",
                        "Color: Grey",
                        "Rs 7,000"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}

Widget popular(String propic, String title, String name, String quantity,
    String size, String color, String rupees) {
  return Card(
    elevation: 5.0,
    child: ListTile(
      tileColor: Colors.white,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          padding: EdgeInsets.all(1),
          height: 120,
          width: 80,
          child: Image.asset(
            propic,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          Text(
            quantity,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          Text(
            size,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          Text(
            color,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
      trailing: Text(
        rupees,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
