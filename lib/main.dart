import 'package:flutter/material.dart';
import 'package:nike_shop_app/brandSelector.dart';
import 'package:nike_shop_app/customIcons.dart';
import 'package:nike_shop_app/productCard.dart';
import 'package:nike_shop_app/productsContainer.dart';
import 'package:nike_shop_app/profileClipper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentTabIndex = 0;
  var tabs = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.bookmark_border),
      title: Container()
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      title: Container()
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: Stack(
          children: <Widget>[
            BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedIconTheme: IconThemeData(
                color: Colors.black,
                size: 26,
              ),
              currentIndex: _currentTabIndex,
              items: tabs,
              onTap: (index) {
                setState(() {
                  _currentTabIndex = index;
                });
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 30, top: 50, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(CustomIcons.menu),
                    onPressed: () {},
                  ),
                  ClipOval(
                    clipper: ProfileClipper(), 
                    child: Image.asset(
                      "assets/images/portrait.jpg",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
              child: Text(
                "Explore",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  letterSpacing: 1.5
                ),
              ),
            ),
            BrandSelector(brands: ['Nike', 'Adidas', 'Reebok', 'New Balance'],),
            SizedBox(
              height: 380,
              child: ListView.builder( 
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: products.length,
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemBuilder: (context, index) {
                  Shoes shoes = products[index];
                  return Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: ProductCard(
                      shoes: shoes,
                      cardNum: index
                    )
                  );
                },
              ),
            )
          ],
        )
      )
    );
  }
}
