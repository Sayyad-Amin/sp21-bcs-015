import 'package:flutter/material.dart';

void main() => runApp(ResumeApp());

class ResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Resume App'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Image.asset('assets/images/photo2.png',width: 200,height: 200,),
                    Column(
                      children: [
                        Text('SAYYAD AMIN',
                          style: TextStyle(fontSize:25,
                              color: Colors.green,
                              fontWeight:FontWeight.bold ),),
                        Text('Flutter Developer',
                          style: TextStyle(fontSize:18,
                              color: Colors.green,
                              fontWeight: FontWeight.w700 ),),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 11.0,right: 15),
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Proffesional Flutter Developer with less than a'
                        ' year of Experience in the Android Developement processes.'
                        'Involved in Android Developement, Testing, Deployment'
                        ' and Management. ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
              Text('---------------------------------------------',
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Icon(Icons.email,color: Colors.green,),
                      ),
                      SizedBox(width: 4),
                      Text('sayyad@gmail.com',style: TextStyle(fontSize: 20)),
                      SizedBox(width: 8),
                      Icon(Icons.add_call,color: Colors.green,),
                      SizedBox(width: 4),
                      Text('3136142653',style: TextStyle(fontSize: 20)),
                      SizedBox(width: 8,),
                      Icon(Icons.location_on,color: Colors.green,),
                      SizedBox(width: 4,),
                      Text('Vehari, Pakistan',style: TextStyle(fontSize: 20))
                    ],
                  ),
                ),
              ),
              Text('---------------------------------------------',
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: 900,
                  height: 700,
                  child: Row(

                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:12.0),
                                child: Text('WORK EXPERIENCE',
                                  style: TextStyle(fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  elevation: 8,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0,bottom: 7),
                                        child: Text('- Internship at XYZ Company',
                                            style: TextStyle(fontSize: 20,
                                                fontWeight:FontWeight.w600 )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Text('-Developed a mobile application using Flutter'
                                            ' to improve the user experience'
                                            ' of their existing app.',
                                            style: TextStyle(fontSize: 20,
                                                fontWeight:FontWeight.w600 )),
                                      ),
                                      SizedBox(height: 7),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Text('-Collaborated with senior developers to'
                                            ' implement new features and improve code quality.',
                                            style: TextStyle(fontSize: 20,
                                                fontWeight:FontWeight.w600 )),
                                      ),
                                    ],),
                                  ),
                                ),
                              ),
                              SizedBox(height: 28),
                              Text('EDUCATION',
                                style: TextStyle(fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),),
                              SizedBox(height: 10),
                              Text('BS in Computer Science',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold),),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text('Comsats University Islamabad Vehari Campus',
                                  style: TextStyle(fontSize: 20,
                                      fontWeight: FontWeight.w700),),
                              ),
                              SizedBox(height: 10),
                              Text('02/2021 - 02/2025',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.w500),),
                              SizedBox(height: 20),
                              Text('LANGUAGES',
                                style: TextStyle(fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text('English',style: TextStyle(fontSize: 25,
                                          fontWeight: FontWeight.w800)),
                                    ),
                                    SizedBox(width: 10),
                                    Text('Urdu',style: TextStyle(fontSize: 25,
                                        fontWeight: FontWeight.w800)),
                                    SizedBox(width: 10),
                                    Text('Punjabi',style: TextStyle(fontSize: 25,
                                        fontWeight: FontWeight.w800)),

                                  ],
                                ),
                              ),
                              SizedBox(height: 20)

                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Column(
                              children: [
                                Text('SKILLS',
                                  style: TextStyle(fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),),
                                SizedBox(height: 35),
                                Text('Programing',
                                  style: TextStyle(fontSize: 20,
                                      fontWeight:FontWeight.w600 ),),
                                SizedBox(height: 30),
                                Text('OOP',
                                  style: TextStyle(fontSize: 20,
                                      fontWeight:FontWeight.w600 ),),
                                SizedBox(height: 30),
                                Text('Dart',
                                  style: TextStyle(fontSize: 20,
                                      fontWeight:FontWeight.w600 ),),
                                SizedBox(height: 30),
                                Text('DSA',
                                  style: TextStyle(fontSize: 20,
                                      fontWeight:FontWeight.w600 ),),
                                SizedBox(height: 30),
                                Text('Soft Skills',
                                  style: TextStyle(fontSize: 20,
                                      fontWeight:FontWeight.w600 ),),
                                SizedBox(height: 30),
                                Text('Problem Solving',
                                  style: TextStyle(fontSize: 20,
                                      fontWeight:FontWeight.w600 ),),
                                SizedBox(height: 25),
                                Text('ORGANISATIONS',
                                  style: TextStyle(fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),),
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(left: 35.0),
                                  child: Text('XYZ Management Association',
                                      style: TextStyle(fontSize: 20,
                                          fontWeight:FontWeight.w600 )),
                                ),
                                SizedBox(height: 10),
                                Text('eBusiness Association',
                                    style: TextStyle(fontSize: 20,
                                        fontWeight:FontWeight.w600 )),

                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(height: 63),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                  ],
                                ),

                              ),
                              SizedBox(height: 28),
                              Container(


                                child: Row(
                                  children: [
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star_border),
                                    SizedBox(width: 5),
                                  ],
                                ),

                              ),
                              SizedBox(height: 28),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star_border),
                                    SizedBox(width: 5),
                                  ],
                                ),

                              ),
                              SizedBox(height: 28),
                              SizedBox(
                                child: Row(
                                  children: [
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                  ],
                                ),
                              ),
                              SizedBox(height: 28),
                              SizedBox(
                                child: Row(
                                  children: [
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                  ],
                                ),
                              ),
                              SizedBox(height: 28),
                              SizedBox(
                                child: Row(
                                  children: [
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                    Icon(Icons.star),
                                    SizedBox(width: 5),
                                  ],
                                ),
                              ),
                              SizedBox(height: 28),
                              SizedBox(height: 45,width: 300,
                                child: Text('HONOURS AND AWARDS',style: TextStyle(fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green)),),
                              Container(

                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    elevation: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(

                                        children: [
                                          Text("Best Presenter Award, XYZ Conference (2022)",
                                              style: TextStyle(fontSize: 20,
                                                  fontWeight:FontWeight.w600 )),
                                          SizedBox(height: 10),
                                          Text("Dean's List, University of XYZ (Fall 2021)",
                                              style: TextStyle(fontSize: 20,
                                                  fontWeight:FontWeight.w600 )),
                                          SizedBox(height: 10),
                                          Text("Outstanding Volunteer, XYZ Nonprofit (2020-2022)",
                                              style: TextStyle(fontSize: 20,
                                                  fontWeight:FontWeight.w600 )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              )


            ],
          ),
        )
    );
  }
}
