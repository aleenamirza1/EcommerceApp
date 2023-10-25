import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
  const Notify({super.key});

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
                backgroundImage: AssetImage("assets/images/arrow.png"),
              ),
              trailing: CircleAvatar(
                backgroundImage: AssetImage("assets/images/opt.jpg"),
              ),
            ),
            SizedBox(height: 5),
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    "  Notifications",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            person(
              "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
              "Ayesha",
              "it is a long established fact that a reader will be distracted by the readable content of a page.",
              "2 hours ago",
            ),
            person(
              "https://images.unsplash.com/photo-1496302662116-35cc4f36df92?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
              "Aliza",
              "There are many variations of passages of Lorem Ipsum available.",
              "2 hours ago",
            ),
            person(
              "https://images.unsplash.com/photo-1542206395-9feb3edaa68d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80",
              "Arhama",
              "if you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing.",
              "4 hours ago",
            ),
            person(
              "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1965&q=80",
              "Aahil",
              "if you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing.",
              "6 hours ago",
            ),
            person(
              "https://images.unsplash.com/photo-1496302662116-35cc4f36df92?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
              "Faraz",
              "it is a long established fact that a reader will be distracted by the readable content of a page.",
              "6 hours ago",
            ),
            person(
              "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1888&q=80",
              "Rahmeen",
              "it is a long established fact that a reader will be distracted by the readable content of a page.",
              "! day ago",
            ),
            person(
              "https://images.unsplash.com/photo-1601412436009-d964bd02edbc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80",
              "ALeena",
              "There are many variations of passages of Lorem Ipsum available.",
              "1 day ago",
            ),
            person(
              "https://images.unsplash.com/photo-1578916045370-25461e0cf390?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1899&q=80",
              "Ali",
              "if you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing.",
              "1 day ago",
            ),
            person(
              "https://images.unsplash.com/photo-1620259570543-31964aa22586?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
              "Feroze",
              "it is a long established fact that a reader will be distracted by the readable content of a page.",
              "2 day ago",
            ),
            person(
                "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
                "Ayesha",
                "it is a long established fact that a reader will be distracted by the readable content of a page.",
                "2 days ago"),
          ],
        ),
      ),
    );
  }
}

Widget person(String imageUrl, String name, String message, String time) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 2),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromARGB(255, 214, 214, 217)),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: ListTile(
      contentPadding: EdgeInsets.all(5),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          '$name: $message',
          style: TextStyle(
            color: Color.fromARGB(255, 64, 62, 62),
            fontSize: 14,
          ),
        ),
        SizedBox(height: 4),
        Text(
          time,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        )
      ]),
    ),
  );
}
