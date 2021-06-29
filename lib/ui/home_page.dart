import 'package:flutter/material.dart';
import 'package:hire_me/ui/programmer_page.dart';
import 'package:hire_me/ui/sosmed_page.dart';
import 'package:hire_me/ui/uixux_page.dart';
import 'package:hire_me/ui/detail_page.dart';
import 'package:intl/intl.dart';
import 'package:hire_me/core/model.dart';
import 'package:hire_me/core/data.dart';

class HomePage extends StatelessWidget {
  String name = '';
  late var jobs;

  HomePage(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(175, 74, 93, 1.0),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Stack(
              children: [
                Container(
                    color: Color.fromRGBO(175, 74, 93, 1.0),
                    height: MediaQuery.of(context).size.height * 1 / 5),
                Container(
                    margin: EdgeInsets.fromLTRB(24, 32, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateFormat.yMMMd().format(DateTime.now()),
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              color: Colors.grey[50]),
                        ),
                        Container(
                          width: 200,
                          child: Text(
                            'Hi, $name',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 2 / 3,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Selesaikan pekerjaan dengan talenta terbaik di bidangnya',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: Colors.grey[50]),
                          ),
                        ),
                      ],
                    )),
                Positioned(
                  bottom: -45,
                  right: 20,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1 / 4,
                    width: MediaQuery.of(context).size.width * 1 / 4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/person.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
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
                    margin: EdgeInsets.only(top: 24, left: 24, bottom: 12),
                    child: Text('Paling Banyak Dicari',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 2 / 7,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final JobDesk job = listJob[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return (index == 0)
                                  ? ProgrammerPage(name: name)
                                  : (index == 1)
                                      ? DesignerPage(name: name)
                                      : SosmedPage(name: name);
                            }));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: (index == 0) ? 20 : 12,
                                right: (index == listJob.length - 1) ? 20 : 12),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 150,
                                      child: Image.asset(job.image)),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(job.title,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                      (index == 0)
                                          ? '${job.count} programmer'
                                          : (index == listJob.length - 1)
                                              ? '${job.count} Designer'
                                              : '${job.count} Designer',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.grey))
                                ]),
                          ),
                        );
                      },
                      itemCount: listJob.length,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    height: 10,
                    color: Colors.grey[300],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12, left: 24, bottom: 12),
                    child: Text('Top Freelancer',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                  ),
                  Container(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final Freelancer freelancer = listFreelancer[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailPage(
                                  freelancer: freelancer, name: name);
                            }));
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(24, 8, 24, 8),
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
                                            image:
                                                NetworkImage(freelancer.image),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 8, 8, 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(freelancer.name,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black)),
                                      Text(freelancer.jobdesk,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.grey)),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Text(freelancer.location,
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
                      itemCount: 4,
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
