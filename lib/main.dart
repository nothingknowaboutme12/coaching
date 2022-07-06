import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coaching app",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: FlutterLogo(
            size: 30,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
              size: 30,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              onPressed: () {},
            )
          ],
          elevation: 0.0,
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 130,
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    "Get Coaching",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 100, 20, 0),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(blurRadius: 0.5, color: Colors.grey.shade300),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "YOU HAVE",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 43, 7, 1),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                const Text(
                                  "206",
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "💕",
                                  style: TextStyle(fontSize: 30),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {
                            print("hello");
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green.shade100,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20)),
                          child: Text(
                            "Buy More",
                            style: TextStyle(
                                color: Colors.green.shade900, fontSize: 25),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "MY COACHES",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "VIEW POST SESSION",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 8, right: 6),
              child: GridView(
                primary: false,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12.0),
                children: [
                  CardItem(
                    name: "Umair",
                    desc: "Available",
                    CardNmbr: 1,
                  ),
                  CardItem(
                    name: "Umair",
                    desc: "Away",
                    CardNmbr: 2,
                  ),
                  CardItem(
                    name: "Umair",
                    desc: "Away",
                    CardNmbr: 3,
                  ),
                  CardItem(
                    name: "Umair",
                    desc: "Available",
                    CardNmbr: 4,
                  ),
                  CardItem(
                    name: "Umair",
                    desc: "Available",
                    CardNmbr: 5,
                  ),
                  CardItem(
                    name: "Umair",
                    desc: "Away",
                    CardNmbr: 6,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  CardItem({required this.name, required this.desc, required this.CardNmbr});
  final String name;
  final String desc;
  final int CardNmbr;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 7.0,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  maxRadius: 34,
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/736x/8d/07/d9/8d07d969955c7044702e7da9703e17f1.jpg"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 45),
                  height: 24,
                  width: 23,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.white),
                      color: desc == "Away" ? Colors.amber : Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(top: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: desc == "Away" ? Colors.grey.shade300 : Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Text(
                "Request",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
