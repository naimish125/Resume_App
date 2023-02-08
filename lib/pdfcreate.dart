// import 'dart:io';
//
// import 'package:path_provider/path_provider.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:resume/Model.dart';
//
//
// async {
//   final pdf = pw.Document();
//   var image = pw.MemoryImage(
//     File('${m1.image}').readAsBytesSync(),
//   );
//   pdf.addPage(pw.Page(
//     margin: pw.EdgeInsets.all(10),
//     orientation: pw.PageOrientation.portrait,
//     pageFormat: PdfPageFormat.a4,
//     build: (context) {
//       return pw.Column(
//         children: [
//           pw.SizedBox(height: 20,),
//           pw.Container(
//             margin: pw.EdgeInsets.symmetric(horizontal: 10),
//             height: 80,
//             width: double.infinity,
//             decoration: pw.BoxDecoration(
//                 border: pw.Border(bottom: pw.BorderSide(color: PdfColors.black))
//             ),
//             alignment: pw.Alignment.topCenter,
//             child: pw.Text("Resume",style: pw.TextStyle(fontSize: 30,color: PdfColors.black),),
//           ),
//           pw.Expanded (
//             child: pw.Container(
//               child: pw.Row(
//                 children: [
//                   pw.Expanded(
//                     flex: 2,
//                     child: pw.Container(
//                       margin: pw.EdgeInsets.only(left: 10),
//                       child: pw.Column(
//                         mainAxisAlignment: pw.MainAxisAlignment.center,
//                         children: [
//                           pw.Container(
//                             height: 120,
//                             width: 120,
//                             child: pw.Image(image),
//                             decoration: pw.BoxDecoration(
//                                 color: PdfColors.white,
//                                 border: pw.Border.all(color: PdfColors.black,width: 2)
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   pw.Expanded(
//                     flex: 3,
//                     child: pw.Container(
//                       margin: pw.EdgeInsets.only(right: 10),
//                       child: pw.Column(
//                         mainAxisAlignment: pw.MainAxisAlignment.center,
//                         children: [
//                           pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                   width: 70,
//                                   child: pw.Text("Name",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold,),)),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(
//                                   width: 100,
//                                   child: pw.Text("${m1.name} ${m1.surname}",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                   width: 70,
//                                   child: pw.Text("DOB",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(
//                                   width: 100,
//                                   child: pw.Text("${m1.bdate}/${m1.bmonth}/${m1.byear}",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                   width: 70,
//                                   child: pw.Text("Address",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(
//                                   width: 100,
//                                   child: pw.Text("${m1.address},${m1.city}",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                   width: 70,
//                                   child: pw.Text("Qualification",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold,),)),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(
//                                   width: 100,
//                                   child: pw.Text("${m1.qualification}",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                   width: 70,
//                                   child: pw.Text("Nationality",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(
//                                   width: 100,
//                                   child: pw.Text("${m1.nationality}",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                   width: 70,
//                                   child: pw.Text("Gender",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(
//                                   width: 100,
//                                   child: pw.Text("${m1.gender} ",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                   width:70,
//                                   child: pw.Text("Address",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(
//                                   width: 100,
//                                   child: pw.Text("${m1.address}",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                   width:70,
//                                   child: pw.Text("Phone NO.",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(
//                                   width: 100,
//                                   child: pw.Text("${m1.phone}",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                   width:70,
//                                   child: pw.Text("E-mail",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(
//                                   width: 100,
//                                   child: pw.Text("${m1.email}",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                   width:70,
//                                   child: pw.Text("Languages Known",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(
//                                   width: 100,
//                                   child: pw.Text("${m1.language1}\n${m1.language2}\n${m1.language3}",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           m1.hobby == ""?pw.Container():pw.Row(
//                             children: [
//                               pw.SizedBox(width: 70,child: pw.Text("Hobby",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(width: 100,child: pw.Text("${m1.hobby}  ${m1.city}",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           pw.SizedBox(height: 3,),
//
//                           m1.intreast == ""?pw.Container():pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                   width:70,
//                                   child: pw.Text("Intreast",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),)),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(
//                                   width: 100,
//                                   child: pw.Text("${m1.intreast}",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           m1.res10 == ""?pw.Container():pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                 width: 70,
//                                 child: pw.Text("10th Result",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),),
//                               ),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(width: 100,child: pw.Text("${m1.res10}%",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//
//                           m1.res12 == ""?pw.Container():pw.Row(
//                             children: [
//                               pw.SizedBox(
//                                 width: 70,
//                                 child: pw.Text("12th Result",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),),
//                               ),
//                               pw.SizedBox(width: 15,),
//                               pw.SizedBox(width: 100,child: pw.Text("${m1.res12}%",style: pw.TextStyle(color: PdfColors.black,),))
//                             ],
//                           ),
//                           pw.SizedBox(height: 3,),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           pw.Container(
//             margin: pw.EdgeInsets.symmetric(horizontal: 10),
//             height: 150,
//             width: double.infinity,
//             child: pw.Column(
//               crossAxisAlignment: pw.CrossAxisAlignment.start,
//               children: [
//                 pw.Text("More About me",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold,fontStyle: pw.FontStyle.italic,fontSize: 15),),
//                 pw.SizedBox(height: 10,),
//                 pw.Text("${m1.aboutyou}"),
//               ],
//             ),
//           )
//         ],
//       );
//     },
//   )
//   );
//   Directory? directory = await getExternalStorageDirectory();
//   var file = File("${directory!.path}/myresume.pdf");
//   await file.writeAsBytes(await pdf.save());
//   print("$file");
// }
//
//
//
// void resume2(ModelData m1)
// async {
//   final pdf = pw.Document();
//   var image = pw.MemoryImage(
//     File('${m1.image}').readAsBytesSync(),
//   );
//   pdf.addPage(pw.Page(
//     margin: pw.EdgeInsets.all(10),
//     orientation: pw.PageOrientation.portrait,
//     pageFormat: PdfPageFormat.a4,
//     build: (context) {
//       return pw.Stack(
//         children: [
//           pw.Container(
//             margin: pw.EdgeInsets.only(top: 50),
//             height: 150,
//             width: double.infinity,
//             color: PdfColors.black,
//           ),
//           pw.Padding(
//             padding: pw.EdgeInsets.only(left: 30),
//             child: pw.Container(
//               height: double.infinity,
//               width: 150,
//               color: PdfColors.black,
//             ),
//           ),
//           pw. Padding(
//             padding: pw.EdgeInsets.only(left: 45, top: 60),
//             child: pw.Container(
//               height: 120,
//               width: 120,
//               child:  pw.Container(
//                 decoration: pw.BoxDecoration(
//                     borderRadius: pw.BorderRadius.circular(30000)
//                 ),
//                 child: pw.Image(image),
//               ),
//             ),
//           ),
//           pw.Padding(
//             padding: pw.EdgeInsets.only(left: 30, top: 230),
//             child: pw.Expanded(
//               child: pw.Container(
//                 width: 150,
//                 child: pw.Column(
//                   children: [
//                     pw.Row(
//                       children: [
//                         pw.Padding(
//                           padding: pw.EdgeInsets.only(left: 10),
//                           child: pw.Text("Profile",
//                             style: pw.TextStyle(fontSize: 15,
//                                 fontWeight: pw.FontWeight.bold,
//                                 color: PdfColors.white),),
//                         )
//                       ],
//                     ),
//                     pw.Container(
//                       padding: pw.EdgeInsets.only(left: 10),
//                       child: pw.Row(
//                         children: [
//                           pw.Text("${m1.aboutyou}",
//                             style: pw.TextStyle(color: PdfColors.white),),
//                         ],
//                       ),
//                     ),
//                     pw.Row(
//                       children: [
//                         pw.Padding(
//                           padding: pw.EdgeInsets.only(left: 10),
//                           child: pw.Text("Contact Me",
//                             style: pw.TextStyle(fontSize: 15,
//                               fontWeight: pw.FontWeight.bold,
//                               color: PdfColors.white,),),
//                         )
//                       ],
//                     ),
//                     pw.Container(
//                       child: pw.Column(
//                         children: [
//                           pw.SizedBox(height: 8,),
//                           pw.Container(
//                               padding: pw.EdgeInsets.symmetric(horizontal: 10),
//                               width: 150,
//                               child: pw.Row(
//                                 children: [
//                                   pw.Icon(pw.IconData(0xe79a), color: PdfColors.white,
//                                     size: 15,),
//                                   pw.SizedBox(width: 5,),
//                                   pw.Container(width: 110,
//                                       child: pw.Text("${m1.phone}",
//                                         style: pw.TextStyle(
//                                             color: PdfColors.white),)),
//                                 ],
//                               )),
//                           pw.SizedBox(height: 5,),
//                           pw.Container(
//                               padding: pw.EdgeInsets.symmetric(horizontal: 10),
//                               width: 150,
//                               child: pw.Row(
//                                 children: [
//                                   pw. Icon(pw.IconData(0xe79a), color: PdfColors.white,
//                                     size: 15,),
//                                   pw.SizedBox(width: 5,),
//                                   pw.Container(width: 110,
//                                       child: pw.Text("${m1.email}",
//                                         style: pw.TextStyle(
//                                             color: PdfColors.white),)),
//                                 ],
//                               )),
//                           pw. SizedBox(height: 5,),
//                           pw. Container(
//                               padding: pw.EdgeInsets.symmetric(horizontal: 10),
//                               width: 150,
//                               child: pw.Row(
//                                 children: [
//                                   pw.Icon(pw.IconData(0xe79a), color: PdfColors.white,
//                                     size: 15,),
//                                   pw.SizedBox(width: 5,),
//                                   pw.Container(width: 110,
//                                       child: pw.Text("${m1.address}",
//                                         style: pw.TextStyle(
//                                             color: PdfColors.white),)),
//                                 ],
//                               )),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           pw. Padding(
//             padding: pw.EdgeInsets.only(left: 180, top: 75),
//             child: pw.Padding(
//               padding: pw.EdgeInsets.only(left:10),
//               child: pw.Container(height: 100, width: 200,
//                 child: pw.Column(children: [
//                   pw. Row(
//                     children: [
//                       pw. Text("${m1.name}\n${m1.surname}",style: pw.TextStyle(fontSize: 25,color: PdfColors.black,fontWeight:pw. FontWeight.bold),),
//                     ],
//                   ),
//                   pw. SizedBox(height: 5,),
//                   pw.Row(
//                     children: [
//                       pw.Text("${m1.experties}",style: pw.TextStyle(color: PdfColors.black),),
//                     ],
//                   ),
//                 ],),),
//             ),
//           ),
//           pw.Padding(
//             padding: pw.EdgeInsets.only(left: 180,top: 250),
//             child: pw.Container(
//               padding: pw.EdgeInsets.symmetric(horizontal: 10),
//               height: double.infinity,
//               width: double.infinity,
//               child: pw.Column(
//                 children: [
//                   pw.Row(
//                     children: [
//                       pw.Icon(pw.IconData(0xe79a),color: PdfColors.black,),
//                       pw.SizedBox(width: 5,),
//                       pw.Text("Education",style: pw.TextStyle(fontWeight: pw.FontWeight.bold),),
//                     ],
//                   ),
//                   pw.Padding(
//                     padding: pw.EdgeInsets.only(left: 30),
//                     child: pw.Row(
//                       children: [
//                         pw.Container(
//                             width: 150,
//                             child: pw.Text("Basically:-      ${m1.qualification}\n10th result:-   ${m1.res10}%\n12th result:-   ${m1.res12}%\n")),
//                       ],
//                     ),
//                   ),
//                   pw.Row(
//                     children: [
//                       pw.Icon(pw.IconData(0xe79a),color: PdfColors.white,),
//                       pw.SizedBox(width: 5,),
//                       pw.Text("Languages",style: pw.TextStyle(fontWeight: pw.FontWeight.bold),),
//                     ],
//                   ),
//                   pw.Padding(
//                     padding: pw.EdgeInsets.only(left: 30.0),
//                     child: pw.Row(
//                       children: [
//                         pw.Text("${m1.language1}\n${m1.language2}\n${m1.language3}")
//                       ],
//                     ),
//                   ),
//                   pw.Row(
//                     children: [
//                       pw.Icon(pw.IconData(0xe79a),color: PdfColors.black,),
//                       pw.SizedBox(width: 5,),
//                       pw.Text("Skills",style: pw.TextStyle(fontWeight: pw.FontWeight.bold),),
//                     ],
//                   ),
//                   pw.Padding(
//                     padding: pw.EdgeInsets.only(left: 30.0),
//                     child:pw. Row(
//                       children: [
//                         pw. Container(
//                             width: 150,
//                             child: pw.Text("${m1.skill}")),
//                       ],
//                     ),
//                   ),
//                   pw.Row(
//                     children: [
//                       pw.Icon(pw.IconData(0xe79a),color: PdfColors.black,),
//                       pw.SizedBox(width: 5,),
//                       pw.Text("Experience",style: pw.TextStyle(fontWeight: pw.FontWeight.bold),),
//                     ],
//                   ),
//                   pw. Padding(
//                     padding: pw.EdgeInsets.only(left: 30.0),
//                     child: pw.Row(
//                       children: [
//                         pw.Text("${m1.experience} years")
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       );
//     },
//   )
//   );
//   Directory? directory = await getExternalStorageDirectory();
//   var file = File("${directory!.path}/myresume.pdf");
//   await file.writeAsBytes(await pdf.save());
//   print("$file");
// }