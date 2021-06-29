import 'package:flutter/material.dart';
import 'package:hire_me/core/model.dart';
import 'package:hire_me/ui/success_page.dart';

class HirePage extends StatefulWidget {
  final Freelancer freelancer;
  final String name;

  @override
  _HirePageState createState() =>
      _HirePageState(freelancer: freelancer, name: name);

  HirePage({required this.freelancer, required this.name});
}

class _HirePageState extends State<HirePage> {
  final Freelancer freelancer;
  final String name;
  TextEditingController ctrlMessage = TextEditingController(
      text:
          'Hi, Saya ingin merekrut Anda untuk job Saya ini. Anda dapat mereview job ini terlebih dahulu dan apabila tertarik, Anda dapat menerima job ini atau negosiasi harganya dengan Saya kembali. Terima kasih');
  TextEditingController ctrlNeeds = TextEditingController(text: '');
  TextEditingController ctrlDesc = TextEditingController(text: '');
  TextEditingController ctrlBudget = TextEditingController(text: '');

  @override
  void dispose() {
    ctrlMessage.dispose();
    ctrlNeeds.dispose();
    ctrlDesc.dispose();
    ctrlBudget.dispose();
    super.dispose();
  }

  _HirePageState({required this.freelancer, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  height: 290,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(freelancer.image))),
                ),
                Container(
                    margin: EdgeInsets.only(left: 24, top: 24),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            color: Color.fromRGBO(175, 74, 83, 1),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back,
                                    color: Colors.white)),
                          ),
                        ))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Center(
                child: Column(
                  children: [
                    Text(freelancer.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(175, 74, 83, 1))),
                    Text(freelancer.jobdesk,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(175, 74, 83, 0.7))),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(24, 36, 24, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kirim Pesan Private',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Colors.black)),
                    SizedBox(
                      height: 6,
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      maxLines: 5,
                      controller: ctrlMessage,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                ctrlMessage.clear();
                              },
                              icon: Icon(
                                Icons.clear,
                              ))),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text('Pekerjaan apa yang Anda butuh untuk dikerjakan?',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Colors.black)),
                    SizedBox(
                      height: 6,
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: ctrlNeeds,
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText:
                            'Contoh: Saya membutuhkan jasa pembuatan aplikasi mobile toko online',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text('Jelaskan kebutuhan Anda secara lengkap',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Colors.black)),
                    SizedBox(
                      height: 6,
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: ctrlDesc,
                      maxLines: 10,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text('Berapa budget Anda untuk job ini?',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Colors.black)),
                    SizedBox(
                      height: 6,
                    ),
                    TextField(
                        onChanged: (value) {
                          setState(() {});
                        },
                        controller: ctrlBudget,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), prefixText: 'IDR ')),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (ctrlMessage.text.trim() == '' ||
                                ctrlNeeds.text.trim() == '' ||
                                ctrlDesc.text.trim() == '' ||
                                ctrlBudget.text.trim() == '')
                            ? null
                            : () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return SuccessPage(name: name);
                                }));
                              },
                        child:  (ctrlMessage.text.trim() == '' ||
                                ctrlNeeds.text.trim() == '' ||
                                ctrlDesc.text.trim() == '' ||
                                ctrlBudget.text.trim() == '') 
                                ? Text('Isi data dengan lengkap!')
                                : Text('Send'),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(175, 74, 83, 1)),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
