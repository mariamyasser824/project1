import 'package:flutter/material.dart';

class widget_2 extends StatelessWidget {
  widget_2({super.key});
  List l = [
    "images/img_1.png",
    "images/img_2.png",
    "images/img_3.png",
    "images/img_1.png",
    "images/img_2.png",
    "images/img_3.png",
    "images/img_2.png",
    "images/img_1.png",
    "images/img_3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 472,
      width: 298,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, "screen3", arguments: l[index]);
            },
            child: SizedBox(
              height: 150,
              width: 150,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 70,
                      height: 105,
                      alignment: Alignment.center,
                      child: Center(
                          child: Image(
                        image: NetworkImage("${l[index]}"),
                        fit: BoxFit.fill,
                      )),
                    ),
                  ),
                  const Column(
                    children: [
                      Text(
                        "The jungle Book",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Rudyard kipling",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "19.99",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Icon(
                              Icons.euro,
                              color: Colors.white,
                              size: 13,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Text(
                                  "4.8",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Text(
                                  "(2598)",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: l.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
