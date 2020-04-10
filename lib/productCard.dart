import 'package:flutter/material.dart';
import 'package:nike_shop_app/productsContainer.dart';

class ProductCard extends StatelessWidget{
  final Shoes shoes;
  final int cardNum;

  ProductCard({this.shoes, this.cardNum});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: shoes.colors,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft
                  ),
                  boxShadow: [
                      BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 8),
                      blurRadius: 8
                    )
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Text(
                        "0${cardNum+1}",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          letterSpacing: 2
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10, left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "${shoes.name}",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                              ),
                            ),
                            Text(
                              "\$${shoes.price}",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),
                            )
                          ],
                        )
                      )
                    ),
                    Positioned(
                      left: -10,
                      top: 60,
                      child: Image.asset(shoes.shoeUrl, width: 200, height: 200, fit: BoxFit.cover),
                    )
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }

}