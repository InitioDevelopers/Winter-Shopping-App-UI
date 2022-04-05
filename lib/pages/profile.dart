import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 40.0,),
              height: 250.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/background.png',
                      ),
                      fit: BoxFit.cover)),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 90.0,
                          width: 90.0,
                          decoration: BoxDecoration(
                              image:  DecorationImage(
                                  image: AssetImage('assets/images/profile3.jpg'),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12.withOpacity(0.1),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0)
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0, top: 20.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'John Smith',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),
                                ),
                                Text(
                                  'john@yahoo.com',
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                              ]),
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: category(
                      txt: "Profile",
                      image: 'assets/images/profile.png',
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: category(
                      txt: "My Order",
                      image: 'assets/images/order.png',
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: category(
                      txt: "My Wishlist",
                      image: 'assets/images/wishlist.png',
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: category(
                      txt: "My Addresses",
                      image: 'assets/images/address.png',
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: category(
                      txt: "My Reviews",
                      image: 'assets/images/feedback.png',
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: category(
                      txt: "My Rewards",
                      image: 'assets/images/badge.png',
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: category(
                      txt: "Privacy Policy",
                      image: 'assets/images/privacy.png',
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: category(
                      txt: "Logout",
                      image: 'assets/images/logout_.png',
                      padding: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Component category class to set list
class category extends StatelessWidget {
  @override
  String? txt, image;
  GestureTapCallback? tap;
  double? padding;

  category({this.txt, this.image, this.tap, this.padding});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: padding!),
                      child: Image.asset(
                        image!,
                        height: 25.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        txt!,
                        style: const TextStyle(
                          fontSize: 14.5,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Sofia",
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black26,
                    size: 15.0,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(
            color: Colors.black12,
          )
        ],
      ),
    );
  }
}
