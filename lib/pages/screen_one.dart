import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:  TabBar(
            tabs: [
              Tab(
                child: Text('আবেদনের বিস্তারিত',style: TextStyle(color: Colors.deepPurple),),
              ),
              Tab( child: Text('আবেদনকারীর বিস্তারিত',style: TextStyle(color: Colors.deepPurple),),),
            ],
          ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('আমিন মিয়া',style: TextStyle(fontSize: 20,color: Colors.deepPurple),),
                              Row(
                                children: [
                                  Expanded(
                                      flex: 4,
                                      child: Text('এন আইডি')),
                                  Expanded(
                                      flex: 1,
                                      child: Text('-')),
                                  Expanded(
                                      flex: 4,
                                      child: FittedBox(child: Text('৩৬৯৭৪৬৪৬৪')))
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      flex: 4,
                                      child: Text('মোবাইল')),
                                  Expanded(
                                      flex: 1,
                                      child: Text('-')),
                                  Expanded(
                                      flex: 4,
                                      child: FittedBox(child: Text('০১৯০৩৯৪৯৩০')))
                                ],
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                                  onPressed: (){}, child: Text('যাচাইকৃত তথ্য দেখুন')),

                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: (){}, child: const Icon(Icons.calendar_month,color: Colors.deepPurple,)),
                        const Text('১৪ ফেব্রুয়ািরী, ২০২৩'),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('আবেদন আইডি নং')),
                              Expanded(
                                  flex: 1,
                                  child: Text('-',style: TextStyle(fontWeight: FontWeight.bold),)),
                              Expanded(
                                  flex: 4,
                                  child: Text('০১৯০৩৯৪৯৩০',style: TextStyle(fontWeight: FontWeight.bold)))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('সেবার নাম')),
                              Expanded(
                                  flex: 1,
                                  child: Text('-',style: TextStyle(fontWeight: FontWeight.bold),)),
                              Expanded(
                                  flex: 4,
                                  child: Text('চারি্ত্রিক সনদ',style: TextStyle(fontWeight: FontWeight.bold)))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('ভাষা')),
                              Expanded(
                                  flex: 1,
                                  child: Text('-',style: TextStyle(fontWeight: FontWeight.bold),)),
                              Expanded(
                                  flex: 4,
                                  child: Text('বাংলা',style: TextStyle(fontWeight: FontWeight.bold)))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('সরবরাহের মাধ্যম')),
                              Expanded(
                                  flex: 1,
                                  child: Text('-',style: TextStyle(fontWeight: FontWeight.bold),)),
                              Expanded(
                                  flex: 2,
                                  child: Text('নিজে গিয়ে',style: TextStyle(fontWeight: FontWeight.bold))),
                              Expanded(
                                  flex: 2,
                                  child: Text('(সাধারন)',style: TextStyle(color: Colors.green)))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('অবস্হা')),
                              Expanded(
                                  flex: 1,
                                  child: Text('-',style: TextStyle(fontWeight: FontWeight.bold,),)),
                              Expanded(
                                  flex: 4,
                                  child: Text('বাতিলকৃত',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text('বাতিলকারী')),
                              Expanded(
                                  flex: 1,
                                  child: Text('-',style: TextStyle(fontWeight: FontWeight.bold),)),
                              Expanded(
                                  flex: 2,
                                  child: FittedBox(child: Text('সজল চন্দ্র বর্মন',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))),
                              Expanded(
                                  flex: 2,
                                  child: FittedBox(child: Text('(পাচদোনা ইউনিয়ন)',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold))))
                            ],
                          ),
                        ],
                      )
                    ),
                   const SizedBox(height: 15,),
                   Column(
                     children: [
                       Align(
                           alignment: Alignment.centerLeft,
                           child: Text('ফি এর বিবরণ',style: TextStyle(fontSize: 18,color: Colors.deepPurple),)),
                       Container(
                         height: MediaQuery.of(context).size.height / 4,
                         width: MediaQuery.of(context).size.height / 2,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(5),
                           border: Border.all(color: Colors.grey,width: 1),

                         ),
                         child: Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 10, top: 10,bottom: 10),
                               child: Row(
                                 children: [
                                   Expanded(
                                       flex: 4,
                                       child: Text('সার্টিফিকেট ফি')),
                                   Expanded(
                                       flex: 1,
                                       child: Text('-',style: TextStyle(fontWeight: FontWeight.bold),)),
                                   Expanded(
                                       flex: 4,
                                       child: Text('০ টাকা',style: TextStyle(fontWeight: FontWeight.bold))),

                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 10, top: 10,bottom: 10),
                               child: Row(
                                 children: [
                                   Expanded(
                                       flex: 4,
                                       child: Text('ভ্যাট')),
                                   Expanded(
                                       flex: 1,
                                       child: Text('-',style: TextStyle(fontWeight: FontWeight.bold),)),
                                   Expanded(
                                       flex: 4,
                                       child: Text('০.৭৫ টাকা',style: TextStyle(fontWeight: FontWeight.bold))),

                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 10, top: 10,bottom: 10),
                               child: Row(
                                 children: [
                                   Expanded(
                                       flex: 4,
                                       child: Text('লেনদেন ফি')),
                                   Expanded(
                                       flex: 1,
                                       child: Text('-',style: TextStyle(fontWeight: FontWeight.bold),)),
                                   Expanded(
                                       flex: 4,
                                       child: Text('০.৪৭ টাকা',style: TextStyle(fontWeight: FontWeight.bold))),

                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 10, top: 10),
                               child: Row(
                                 children: [
                                   Expanded(
                                       flex: 4,
                                       child: Text('সেবা সহজীকরন ফি')),
                                   Expanded(
                                       flex: 1,
                                       child: Text('-',style: TextStyle(fontWeight: FontWeight.bold),)),
                                   Expanded(
                                       flex: 4,
                                       child: Text('১৫ টাকা',style: TextStyle(fontWeight: FontWeight.bold))),

                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 15),
                               child: Divider(color: Colors.deepPurple,thickness: 3,),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 10, top: 0),
                               child: Row(
                                 children: [
                                   Expanded(
                                       flex: 4,
                                       child: Text('মোট ফি',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple),)),
                                   Expanded(
                                       flex: 1,
                                       child: Text('-',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple),)),
                                   Expanded(
                                       flex: 4,
                                       child: Text('১৬.২২ টাকা',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple)))

                                 ],
                               ),
                             ),
                           ],
                         ),
                       )
                     ],
                   ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,elevation: 0,
                                minimumSize: Size(90, 40)
                            ),
                            onPressed: (){}, child: const Text('প্রত্যাখান')),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,elevation: 0,
                              minimumSize: Size(90, 40)
                            ),
                            onPressed: (){}, child: const Text('প্রত্যাখান নোট')),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,elevation: 0,
                                minimumSize: Size(90, 40)
                            ),
                            onPressed: (){}, child: const Text('অনুমোদন করুন'))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Icon(Icons.directions_transit, size: 350),
          ],
        ),
      ),
    );;
  }
}
