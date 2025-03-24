import 'package:flutter/material.dart';
import 'package:tasktrek/pages/forgotReset.dart';

class forgot_page_2 extends StatefulWidget {
  const forgot_page_2({super.key});



  @override
  State<forgot_page_2> createState() => _forgot_pagePageState();
}

class _forgot_pagePageState extends State<forgot_page_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 1, 143, 129),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255,1,143,129),
        actions: [
        

        ],

      ),
      body: Center(
        child: 
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Column(
              children: [
                Text(
                  'OTP Verification',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Enter the OTP code you received in your',
                  style: TextStyle(
                    fontSize: 8,
                  ),
                ),
                Text(
                  'phone number',
                  style: TextStyle(
                    fontSize: 8,
                  ),
                ),
                SizedBox(height: 60),
                Padding(padding:EdgeInsets.symmetric(horizontal: 20),
                child: 
                Row(
                  
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: SizedBox(
                        height: 30.0,
                        width: 30.0,
                        child: TextFormField(
                          style: TextStyle(fontSize: 10.0),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: '0',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),

                      child: SizedBox(
                        height: 30.0,
                        width: 30.0,
                        child: TextFormField(
                          style: TextStyle(fontSize: 10.0),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: '0',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: SizedBox(
                        height: 30.0,
                        width: 30.0,
                        child: TextFormField(
                          style: TextStyle(fontSize: 10.0),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: '0',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: SizedBox(
                        height: 30.0,
                        width: 30.0,
                        child: TextFormField(
                          style: TextStyle(fontSize: 10.0),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: '0',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: SizedBox(
                        height: 30.0,
                        width: 30.0,
                        child: TextFormField(
                          style: TextStyle(fontSize: 10.0),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: '0',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),),
                SizedBox(height: 4),
                Text(
                  'This account will receive an OTP code on their phone number.',
                  style: TextStyle(
                    fontSize: 7,
                  ),
                ),
                SizedBox(height: 30),
                Padding(padding: EdgeInsets.symmetric(horizontal: 70),
                  child: 
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => forgot_Reset(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        iconColor: Colors.black,
                        minimumSize: Size(double.infinity, 20),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.black,
                      ),
                      child: Text(
                        'Verify',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        ),)
                ),
              ],
            ),
          ),
      ),
    );
  }
}
