import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomCartSheet extends StatelessWidget {
  const BottomCartSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: Container(
          height: 600,
          padding: EdgeInsets.only(top: 20),
          color: Color(0xFFCEDDEE),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 1; i < 3; i++)
                Container(
                  height: 500,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 140,
                          decoration: BoxDecoration(
                              color: Color(0xFFF5F9FD),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF475269).withOpacity(0.3),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                )
                              ]),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "itemPage");
                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 10, right: 60),
                                      height: 90,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF475269),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    Image.network(
                                      "https://images.pexels.com/photos/2385477/pexels-photo-2385477.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                      height: 130,
                                      width: 130,
                                      fit: BoxFit.contain,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Nike Shoes",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              color: Color(0xFFF5F9FD),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Color(0xFF475269)
                                                        .withOpacity(0.3),
                                                    blurRadius: 5,
                                                    spreadRadius: 1),
                                              ]),
                                          child: Icon(
                                            CupertinoIcons.minus,
                                            size: 18,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text(
                                            "02",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.blueAccent),
                                          ),
                                        ),
                                        Container(
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                color: Color(0xFFF5F9FD),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color(0xFF475269)
                                                          .withOpacity(0.3),
                                                      blurRadius: 5,
                                                      spreadRadius: 1),
                                                ]),
                                            child: Icon(
                                              CupertinoIcons.add,
                                              size: 18,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 25),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color(0xFF475269)
                                                    .withOpacity(0.4),
                                                blurRadius: 5,
                                                spreadRadius: 1)
                                          ]),
                                      child: Icon(
                                        Icons.delete,
                                        color: Colors.green,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "\$50",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.redAccent),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xFFF5F9FD),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF475269).withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 5)
                              ]),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Delivery Fee :",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Color(0xFF475269)),
                                  ),
                                  Text(
                                    " \$15",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color(0xFF475269)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Sub total :",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Color(0xFF475269)),
                                  ),
                                  Text(
                                    " \$65",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color(0xFF475269)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
