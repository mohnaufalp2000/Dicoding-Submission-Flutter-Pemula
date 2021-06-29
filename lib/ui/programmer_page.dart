import 'package:flutter/material.dart';
import 'package:hire_me/core/model.dart';
import 'package:hire_me/core/data.dart';
import 'package:hire_me/ui/detail_page.dart';

class ProgrammerPage extends StatelessWidget {
  final String name;

  ProgrammerPage({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                child: Stack(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.40,
                        width: double.infinity,
                        color: Color.fromRGBO(236, 194, 185, 1),
                        child: Image.asset('images/programmer.png')),
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Colors.black.withOpacity(0.61),
                            Colors.black.withOpacity(0)
                          ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                    ),
                    Positioned(
                        bottom: 24,
                        left: 24,
                        child: Text(
                          'Programmer',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 24),
                        )),
                    Positioned(
                        top: 24,
                        left: 24,
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child:
                                Icon(Icons.arrow_back, color: Colors.white))),
                  ],
                ),
              ),
              Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final Freelancer programmer = listProgrammer[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailPage(
                            freelancer: programmer,
                            name: name,
                          );
                        }));
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(programmer.image),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(programmer.name,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                  Text(programmer.jobdesk,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.grey)),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text(programmer.location,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.grey)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: listProgrammer.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
