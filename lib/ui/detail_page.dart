import 'package:flutter/material.dart';
import 'package:hire_me/core/model.dart';
import 'package:hire_me/ui/hire_page.dart';

class DetailPage extends StatelessWidget {
  final Freelancer freelancer;
  final String name;

  DetailPage({required this.freelancer, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 194, 185, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color: Color.fromRGBO(175, 74, 83, 1),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back, color: Colors.white)),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 24),
                      child: FavoriteButton()),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 4,
                            color: Colors.white
                          ),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(freelancer.image))),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 160,
                          child: Text(freelancer.name,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(175, 74, 83, 1))),
                        ),
                        Text(freelancer.jobdesk,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Color.fromRGBO(175, 74, 83, 0.7))),
                        SizedBox(
                          height: 6
                        ),
                        Text(
                          freelancer.location,
                          style : TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black.withOpacity(0.5)
                            )
                          ),
                        SizedBox(
                          height: 14,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HirePage(
                                  freelancer: freelancer, name: name);
                            }));
                          },
                          child: Text('Hire Me'),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(175, 74, 83, 1)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 32, left: 24),
                        child: Text(
                          'Overview',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 12, left: 24, right: 24),
                        child: Text(
                          freelancer.overview,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24, left: 24),
                        child: Text(
                          'Skills',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 24, top: 6),
                        child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: freelancer.skills.map((skill) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '• $skill',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  )
                                ],
                              );
                            }).toList()),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24, left: 24),
                        child: Text(
                          'Portofolio',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: freelancer.portofolio.map((portfolio) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(24, 6, 24, 6),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: NetworkImage(portfolio),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Color.fromRGBO(175, 74, 83, 1),
        child: IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: Icon((!isFavorite) ? Icons.favorite_border : Icons.favorite),
            color: Colors.white),
      ),
    );
  }
}
