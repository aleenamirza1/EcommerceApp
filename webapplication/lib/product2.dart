import 'package:flutter/material.dart';

class ProductInfo2 extends StatelessWidget {
  const ProductInfo2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 30),
          ListTile(
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/arrow.png"),
            ),
            trailing: CircleAvatar(
              backgroundImage: AssetImage("assets/images/cart.png"),
            ),
          ),
          Container(
            height: 330,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                "assets/images/Shoes.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Card(
              color: Colors.white,
              shadowColor: Colors.white,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Container(
                height: 600,
                width: 400,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Axel Arigato",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Clean 90 Triple Sneakers",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Text("(270 Review)")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/inc.jpg",
                                      width: 80,
                                      height: 60,
                                    ),
                                    Text(
                                      "Available in stocks",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              "  Size",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: Image.asset(
                          "assets/images/sizee.jpg",
                          width: 200,
                          height: 180,
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              "  Description",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a pair.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: Title(
                            color: Colors.black,
                            child: Text(
                              "Total Price \nRs 17,000",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                        trailing: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.add_shopping_cart,
                                color: Colors.white,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Add to Cart",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ))
        ]),
      ),
    );
  }
}
