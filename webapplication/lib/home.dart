import 'package:flutter/material.dart';
import 'package:webapplication/product1.dart';
import 'package:webapplication/product2.dart';
import 'package:webapplication/product3.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            ListTile(
              tileColor: Colors.white,
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/icon.png"),
              ),
              trailing: CircleAvatar(
                backgroundImage: AssetImage("assets/images/search.png"),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: percentoff("assets/images/70%.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: percentoff("assets/images/50%.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: percentoff("assets/images/25%.png"),
                  ),
                ],
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "  New Arrivals",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: product(
                      "assets/images/bag.png",
                      "The Marc Jacobs",
                      "Rs 5,000",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ProductInfo1()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: product(
                      "assets/images/Shoes.jpg",
                      "Axel Arigato",
                      "Rs 17,000",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ProductInfo2()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: product(
                      "assets/images/headphones.png",
                      "On Ear Headphone",
                      "Rs 7,000rs",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ProductInfo3()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "  Popular",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: popular("assets/images/hoodies.png",
                        "Agrito hoodies", "(4.9)", "Rs 4,999"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: popular("assets/images/heels.png", "Gia Borghini",
                        "(4.7)", "Rs 9,500"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: popular("assets/images/necklace.png", "Mochku",
                        "(4.7)", "Rs 2,100"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget percentoff(String pic) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        height: 180,
        width: 300,
        child: Image.asset(
          pic,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget product(String productpic, String productname, String productprice,
      Function() onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        shadowColor: Colors.white,
        elevation: 5.0,
        child: Container(
          height: 250,
          width: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  height: 180,
                  width: 300,
                  child: Image.asset(
                    productpic,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                productname,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                productprice,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget popular(String propic, String title, String rating, String rupees) {
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
          title: Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.star,
                  color: Colors.yellow, size: 18), // Add your desired icon here
              SizedBox(width: 5),
              Text(
                rating,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          trailing: Text(
            rupees,
            style: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
