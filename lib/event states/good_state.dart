import 'dart:convert';
import 'package:first_order/Colors/colors.dart';
import 'package:first_order/datamodels/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


class GoodState extends StatefulWidget {

  @override
  _GoodPageState createState() => _GoodPageState();
}
class _GoodPageState extends State<GoodState> {
  List<int> _selectedItems = List<int>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.white,
          title: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text('Your average screen time',
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.kBlack,
                        )),),
            ),
          ),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 19.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Icon(
                          Icons.signal_cellular_alt,
                        color: AppColors.kBlack,
                        size: 24.0,
                      ),
                    ),
                  )
              ),
            ],
          ),

        backgroundColor: Colors.white,
        body:
        SingleChildScrollView(
          child: Column(
            children: [

              //SizedBox(height:MediaQuery.of(context).size.height*0.038,),

            Padding(
              padding: const EdgeInsets.fromLTRB(38,31,38,0),
              child: Container(
                 height:MediaQuery.of(context).size.height*0.60,
                 width:MediaQuery.of(context).size.width*0.79,
                // height: 355,
                // width: 298,
               //color:Colors.blue,

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text('Keep up the good work!',
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.kBlue
                                  ))),
                        ),
                      ],

                    ),
                    //SizedBox(height:MediaQuery.of(context).size.height*0.029,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,24,0,0),
                      child: Center(
                        child: Container(
                          //margin: EdgeInsets.all(10),
                          //padding: EdgeInsets.all(10),
                          height:MediaQuery.of(context).size.height*0.5030,
                          width:MediaQuery.of(context).size.width*0.79,


                           // width:298,
                           // height:298,
                           //
                          decoration: BoxDecoration(

                            border:Border.all(
                              //width:MediaQuery.of(context).size.width*0.080,
                              width:29.85,
                              color:AppColors.kGreen,

                            ),
                            borderRadius: BorderRadius.circular(149),

                           // cricle image
                           //  decoration: BoxDecoration(
                           //    image: DecorationImage(image: AssetImage("assets/ellipse.png"),
                           //  //fit: BoxFit.cover,
                           //
                           //
                           //    )
                           //  ),

                            color:Colors.white,
                        ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text('5 days average',
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.normal,
                                            color: AppColors.kBlackLight
                                        ))),
                              ),

                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text('1hr 05m',
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            fontSize: 36.0,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.kBlackMedium
                                        ))),
                              )
                            ],
                          ),

                        ),
                      ),
                    ),
                  ],

                ),



              ),
            ),

              //SizedBox(height:MediaQuery.of(context).size.height*0.050,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,41,0,0),
                child: Center(
                  child: Container(
                    height:MediaQuery.of(context).size.height*0.0123,
                    width:MediaQuery.of(context).size.width*0.17,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color:AppColors.kGreen,)

                    ,),
                ),
              ),

              //SizedBox(height:MediaQuery.of(context).size.height*0.045,),
              Padding(
                padding: const EdgeInsets.fromLTRB(41,37,0,10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text('Your VIP events',
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.kBlue
                              ))),
                    ),
                  ],
                ),
              ),

                        FutureBuilder(
                          future: _getEvents(),
                 builder: (BuildContext context, AsyncSnapshot snapshot) {
                   if (snapshot.data == null) {
                            return Container(

                       child: Center(
                              child: FittedBox(   fit: BoxFit.scaleDown,child: Text('Loading')),
                               ),
                                      );
                                         } else {
                                    return
                                      Container(

                                        child:

                                        ListView.builder(
                                           shrinkWrap: true,
                                           itemCount: snapshot.data.length,
                                          // ignore: missing_return
                                          itemBuilder: (BuildContext context, int index) {
                                               return
                                                 Padding(
                                                   padding: const EdgeInsets
                                                       .fromLTRB(
                                                       20, 10.0, 20.0, 0.0),

                                                   child:
                                                   Container(

                                                       height: MediaQuery.of(context).size.height * 0.11090,
                                                       width: MediaQuery.of(context).size.width * 0.80,
                                                     // height: 66,
                                                     //  width: 335,
                                                       decoration: BoxDecoration(
                                                           color: (_selectedItems
                                                               .contains(
                                                               index))
                                                               ? AppColors
                                                               .kBlue
                                                               : Colors
                                                               .white,
                                                           border: Border
                                                               .all(
                                                               width: 3,
                                                               color: AppColors
                                                                   .kBlue
                                                           ),
                                                           borderRadius: BorderRadius
                                                               .circular(
                                                             30,)),

                                                       child:
                                                       _selectedItems.contains(index)?

                                                       Column(
                                                         crossAxisAlignment: CrossAxisAlignment.center,
                                                         mainAxisAlignment: MainAxisAlignment.center,
                                                         children: [
                                                           Row(
                                                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                             crossAxisAlignment: CrossAxisAlignment.center,
                                                             children: [

                                                               Column(
                                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                                 children: [

                                                                   FittedBox(
                                                                     fit: BoxFit.scaleDown,
                                                                     child: Text(
                                                                         snapshot
                                                                             .data[index]
                                                                             .cultureshock,
                                                                         style: GoogleFonts
                                                                             .openSans(
                                                                             textStyle: TextStyle(
                                                                                 fontSize: 18.0,
                                                                                 fontWeight: FontWeight
                                                                                     .w600,
                                                                                 color: Colors.white
                                                                             ))),
                                                                   ),
                                                                   FittedBox(
                                                                     fit: BoxFit.scaleDown,
                                                                     child: Text(
                                                                         snapshot
                                                                             .data[index]
                                                                             .today,
                                                                         style: GoogleFonts
                                                                             .openSans(
                                                                             textStyle: TextStyle(
                                                                                 fontSize: 12.0,
                                                                                 fontWeight: FontWeight
                                                                                     .w500,
                                                                                 color: Colors.white
                                                                             ))),
                                                                   ),
                                                                 ],
                                                               ),


                                                               FittedBox(
                                                                 fit: BoxFit.scaleDown,
                                                                 child: Text(
                                                                     'Added',
                                                                     style: GoogleFonts
                                                                         .openSans(
                                                                         textStyle: TextStyle(
                                                                             fontSize: 9.0,
                                                                             fontWeight: FontWeight
                                                                                 .normal,
                                                                             color: Colors.white
                                                                         ))),
                                                               ),

                                                               // IconButton(
                                                               //   icon: Icon(
                                                               //     Icons
                                                               //         .add,
                                                               //     size: 35.0,),
                                                               //   onPressed: () {
                                                               //     // if (!_selectedItems
                                                               //     //     .contains(
                                                               //     //     index)) {
                                                               //     //   setState(() {
                                                               //     //     _selectedItems
                                                               //     //         .add(
                                                               //     //         index);
                                                               //     //     // ignore: unnecessary_statements
                                                               //     //   });
                                                               //     // }
                                                               //   },
                                                               // )

                                                             ],
                                                           ),


                                                         ],
                                                       )


                                                           :


                                                       Column(
                                                         crossAxisAlignment: CrossAxisAlignment
                                                             .center,
                                                         mainAxisAlignment: MainAxisAlignment
                                                             .center,

                                                         children: [

                                                           Row(
                                                             mainAxisAlignment: MainAxisAlignment
                                                                 .spaceAround,
                                                             crossAxisAlignment: CrossAxisAlignment
                                                                 .center,
                                                             children: [
                                                               Column(
                                                                 crossAxisAlignment: CrossAxisAlignment
                                                                     .start,
                                                                 children: [
                                                                   FittedBox(
                                                                     fit: BoxFit.scaleDown,
                                                                     child: Text(
                                                                         snapshot
                                                                             .data[index]
                                                                             .cultureshock,
                                                                         style: GoogleFonts
                                                                             .openSans(
                                                                             textStyle: TextStyle(
                                                                                 fontSize: 18.0,
                                                                                 fontWeight: FontWeight
                                                                                     .w600,
                                                                                 color: AppColors
                                                                                     .kBlack
                                                                             ))),
                                                                   ),
                                                                   FittedBox(
                                                                     fit: BoxFit.scaleDown,
                                                                     child: Text(
                                                                         snapshot
                                                                             .data[index]
                                                                             .today,
                                                                         style: GoogleFonts
                                                                             .openSans(
                                                                             textStyle: TextStyle(
                                                                                 fontSize: 12.0,
                                                                                 fontWeight: FontWeight
                                                                                     .w500,
                                                                                 color: AppColors
                                                                                     .kBlack
                                                                             ))),
                                                                   ),
                                                                 ],
                                                               ),


                                                               FittedBox(
                                                                 fit: BoxFit.scaleDown,
                                                                 child: IconButton(
                                                                   icon: Icon(
                                                                     Icons
                                                                         .add,
                                                                     size: 35.0,),
                                                                   onPressed: () {
                                                                     if (!_selectedItems
                                                                         .contains(
                                                                         index)) {
                                                                       setState(() {
                                                                         _selectedItems
                                                                             .add(
                                                                             index);
                                                                         // ignore: unnecessary_statements
                                                                       });
                                                                     }
                                                                   },
                                                                 ),
                                                               )

                                                             ],
                                                           ),


                                                         ],
                                                       )
                                                   ),
                                                 );
                                             }
                                        ),
                                      );
                                    }}),



      ]),
        ),
        ));

  }


  Future<String> _loadRecentEvent() async {
    return await rootBundle.loadString('assets/data.json');
  }
  Future<List<Data>> _getEvents() async {
    String jsonString = await _loadRecentEvent();
    final jsonResponse = json.decode(jsonString);
    List<Data> recentEvents = [];
    for (var e in jsonResponse) {
      Data event = Data(
          e["cultureshock"], e["today"],e['time']);
      recentEvents.add(event);
    }
    print(recentEvents.length);
    return recentEvents;
  }

}
