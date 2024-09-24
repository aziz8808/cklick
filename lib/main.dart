import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Work()));
}

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  var kun = "";
  var manzil = "";
  var oy = "";
  int vaqt = 0;

  dynamic sana = "";
  String bomdod = "";
  String quyosh_chiqishi = "";
  String peshin = "";
  String asr = "";
  String shom = "";
  String xufton = "";
  String city = "";
  String? errorMessage;

  // Qo'shimcha ma'lumotlar uchun o'zgaruvchilar
  String saharlik = "";
  String quyosh_botishi = "";
  String yarim_tun = "";
  String kechaning_birinchi_uchdanbiri = "";
  String kechaning_oxirgi_uchdanbiri = "";
  String hijriy_sana = "";
  String hijriy_yil = "";
  String hijriy_hafta_kuni_en = "";
  String hijriy_hafta_kuni_ar = "";
  String milodiy_sana = "";
  String milodiy_oy = "";
  String milodiy_yil = "";
  String kenglik = "";
  String uzunlik = "";
  String hisoblash_usuli = "";
  int hisoblash_usuli_id = 0;

  void getdate(String city) async {
    setState(() {
      kun = "";
      manzil = "";
      oy = "";
      vaqt = 0;
      sana = "";
      bomdod = "";
      quyosh_chiqishi = "";
      peshin = "";
      asr = "";
      shom = "";
      xufton = "";
      errorMessage = null;
      // Qo'shimcha ma'lumotlarni ham tozalash
      saharlik = "";
      quyosh_botishi = "";
      yarim_tun = "";
      kechaning_birinchi_uchdanbiri = "";
      kechaning_oxirgi_uchdanbiri = "";
      hijriy_sana = "";
      hijriy_yil = "";
      hijriy_hafta_kuni_en = "";
      hijriy_hafta_kuni_ar = "";
      milodiy_sana = "";
      milodiy_oy = "";
      milodiy_yil = "";
      kenglik = "";
      uzunlik = "";
      hisoblash_usuli = "";
      hisoblash_usuli_id = 0;
    });

    try {
      String encodedCity = Uri.encodeComponent(city);
      String API =
          "https://api.aladhan.com/v1/timingsByAddress/present?address=$city";
      print("Requesting API: $API");

      http.Response response = await http.get(Uri.parse(API));

      if (response.statusCode == 200) {
        Map<String, dynamic> kunvaqti = jsonDecode(response.body);

        if (kunvaqti.containsKey("data")) {
          setState(() {
            // Asosiy ma'lumotlar
            kun = kunvaqti["data"]["date"]["gregorian"]["weekday"]["en"];
            manzil = kunvaqti["data"]["meta"]["timezone"];
            sana = kunvaqti["data"]["date"]["readable"];
            oy = kunvaqti["data"]["date"]["hijri"]["month"]["en"];
            vaqt = int.parse(kunvaqti["data"]["date"]["hijri"]["day"]);

            // Namoz vaqtlari
            bomdod = kunvaqti["data"]["timings"]["Fajr"];
            quyosh_chiqishi = kunvaqti["data"]["timings"]["Sunrise"];
            peshin = kunvaqti["data"]["timings"]["Dhuhr"];
            asr = kunvaqti["data"]["timings"]["Asr"];
            shom = kunvaqti["data"]["timings"]["Maghrib"];
            xufton = kunvaqti["data"]["timings"]["Isha"];

            // Qo'shimcha ma'lumotlar
            saharlik = kunvaqti["data"]["timings"]["Imsak"];
            quyosh_botishi = kunvaqti["data"]["timings"]["Sunset"];
            yarim_tun = kunvaqti["data"]["timings"]["Midnight"];
            kechaning_birinchi_uchdanbiri =
                kunvaqti["data"]["timings"]["Firstthird"];
            kechaning_oxirgi_uchdanbiri =
                kunvaqti["data"]["timings"]["Lastthird"];

            // Hijriy sana ma'lumotlari
            hijriy_sana = kunvaqti["data"]["date"]["hijri"]["date"];
            hijriy_yil = kunvaqti["data"]["date"]["hijri"]["year"];
            hijriy_hafta_kuni_en =
                kunvaqti["data"]["date"]["hijri"]["weekday"]["en"];
            hijriy_hafta_kuni_ar =
                kunvaqti["data"]["date"]["hijri"]["weekday"]["ar"];

            // Milodiy sana ma'lumotlari
            milodiy_sana = kunvaqti["data"]["date"]["gregorian"]["date"];
            milodiy_oy = kunvaqti["data"]["date"]["gregorian"]["month"]["en"];
            milodiy_yil = kunvaqti["data"]["date"]["gregorian"]["year"];
            milodiy_oy = kunvaqti["data"]["date"]["gregorian"]["month"]
                    ["number"]
                .toString();
            // Joylashuv ma'lumotlari
            kenglik = kunvaqti["data"]["meta"]["latitude"].toString();
            uzunlik = kunvaqti["data"]["meta"]["longitude"].toString();

            // Hisoblash usuli haqida ma'lumot
            hisoblash_usuli = kunvaqti["data"]["meta"]["method"]["name"];
            hisoblash_usuli_id = kunvaqti["data"]["meta"]["method"]["id"];

            // Shahar nomi
            this.city = city;
          });
          print("Data fetched successfully");
        } else {
          print("API response doesn't contain 'data' key");
          print("Response body: ${response.body}");
          setState(() {
            errorMessage = "Invalid data received from server";
          });
        }
      } else {
        print("API request failed with status code: ${response.statusCode}");
        print("Response body: ${response.body}");
        setState(() {
          errorMessage = "Failed to fetch data. Please try again.";
        });
      }
    } catch (e) {
      print("Error fetching data: $e");
      setState(() {
        errorMessage = "An error occurred. Please try again.";
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getdate("Qoqon");
    updateTime();
  }

  DateTime currentTime = DateTime.now();

  void updateTime() {
    setState(() {
      currentTime = DateTime.now();
    });
    Future.delayed(Duration(seconds: 1), updateTime);
  }

  TextEditingController box = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBar(
            centerTitle: true,
            title: Text(
              "Namoz vaqtlari",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  fontFamily: "name2",
                  color: Colors.white),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      backgroundColor: Colors.black45,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: box,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            city = box.text;
                            getdate(city);
                          });
                        },
                        icon: Icon(
                          Icons.search,
                          color: Colors.amber,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellow)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (errorMessage != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  errorMessage!,
                  style: TextStyle(color: Colors.red),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Center(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              "Bomdod : ",
                              style: TextStyle(
                                  fontFamily: "name2",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              bomdod,
                              style: TextStyle(
                                  fontFamily: "name2",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              'Quyosh : ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              quyosh_chiqishi,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              'Peshin : ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              peshin,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              'Asr : ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              asr,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              'Shom : ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              shom,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              'Xufton : ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              xufton,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              'Sana : ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              milodiy_sana,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              'Kun : ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              kun,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              'Manzil : ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              manzil,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              'Arabcha oy : ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              oy,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              'Oyning kuni : ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              vaqt.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              'Hijriy yil : ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Center(
                            child: Text(
                              hijriy_yil,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
