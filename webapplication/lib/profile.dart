import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        children: [
          ListTile(
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/arrow.png"),
            ),
            trailing: CircleAvatar(
              backgroundImage: AssetImage("assets/images/settings.png"),
            ),
          ),
          profilee(),
          container1(),
          container2()
        ],
      ),
    ));
  }

  Widget profilee() {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        tileColor: Colors.white,
        contentPadding: EdgeInsets.all(8), // Add padding inside the ListTile
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            padding: EdgeInsets.all(3),
            height: 160,
            width: 80,
            child: Image.asset(
              "assets/images/me.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aleena Mirza",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "aleenamirza@gmail.com",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget container1() {
    List<Map<String, dynamic>> items = [
      {
        "icon": Icons.person_2,
        "text": "Personal Details",
        "trailingIcon": Icons.arrow_forward,
      },
      {
        "icon": Icons.shopping_bag,
        "text": "My Order",
        "trailingIcon": Icons.arrow_forward,
      },
      {
        "icon": Icons.favorite,
        "text": "My favourite",
        "trailingIcon": Icons.arrow_forward,
      },
      {
        "icon": Icons.directions_bus,
        "text": "Shipping Address",
        "trailingIcon": Icons.arrow_forward,
      },
      {
        "icon": Icons.credit_card,
        "text": "My Card",
        "trailingIcon": Icons.arrow_forward,
      },
      {
        "icon": Icons.settings,
        "text": "Settings",
        "trailingIcon": Icons.arrow_forward,
      },
    ];

    List<Widget> cardList = items.map((item) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ListTile(
          tileColor: Colors.white,
          leading: Icon(item["icon"]),
          title: Text(
            item["text"],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Icon(item["trailingIcon"]),
        ),
      );
    }).toList();
    return Padding(
      padding: EdgeInsets.all(8), // Add padding around the container
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: cardList,
        ),
      ),
    );
  }
}

Widget container2() {
  List<Map<String, dynamic>> items = [
    {
      "icon": Icons.question_answer,
      "text": "FAQs",
      "trailingIcon": Icons.arrow_forward,
    },
    {
      "icon": Icons.security,
      "text": "Privacy Policy",
      "trailingIcon": Icons.arrow_forward,
    },
    // Add more items as needed
  ];

  List<Widget> cardList = items.map((item) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        tileColor: Colors.white,
        leading: Icon(item["icon"]),
        title: Text(
          item["text"],
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Icon(item["trailingIcon"]),
      ),
    );
  }).toList();

  return Padding(
    padding: EdgeInsets.all(8),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: cardList,
      ),
    ),
  );
}
