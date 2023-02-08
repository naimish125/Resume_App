import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume/Model.dart';



class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _Screen2State();
}

class _Screen2State extends State<Resume> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtSurname = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtadd = TextEditingController();
  TextEditingController txtexperties = TextEditingController();
  TextEditingController txtlastcompany = TextEditingController();
  TextEditingController txtexperience = TextEditingController();
  TextEditingController txtres10 = TextEditingController();
  TextEditingController txtres12 = TextEditingController();
  TextEditingController txthobby = TextEditingController();
  TextEditingController txtintreast = TextEditingController();
  TextEditingController txtdate = TextEditingController();
  TextEditingController txtmonth = TextEditingController();
  TextEditingController txtyear = TextEditingController();
  TextEditingController txtdegree = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtnationality = TextEditingController();
  TextEditingController txtaboutyou = TextEditingController();
  TextEditingController txtskill = TextEditingController();
  TextEditingController txtco1pos = TextEditingController();
  TextEditingController txtco1name = TextEditingController();
  TextEditingController txtco1some = TextEditingController();


  bool coper = false;
  bool cohom = false;
  bool copro = false;
  bool coedu = false;
  bool cohob = false;
  bool coint = false;
  bool copho = false;
  bool codre = false;
  bool cobir = false;
  bool coskill = false;
  bool cocity = false;
  bool colang = false;
  bool colgen = false;
  bool coexperience = false;
  bool lan1 = false;
  bool lan2 = false;
  bool lan3 = false;
  bool visi = true;
  bool coabout = false;


  String gen = "Male";
  String city = "Surat";
  String month = "January";
  String lan1s = "";
  String lan2s = "";
  String lan3s = "";
  String path = "";


  int? selected;

  var FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: FormKey,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Resume App"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      " Required Info",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(

                  maintainState: visi,
                  textColor: Colors.black,
                  onExpansionChanged: (value) {
                    setState(() {
                      coper = value;
                    });
                  },
                  leading: Icon(
                    Icons.person,
                    color: coper? Colors.black : Colors.black54,
                  ),
                  title: Text(
                    "Personal Information",
                    style: TextStyle(
                        fontWeight:
                        coper ? FontWeight.bold : FontWeight.normal),
                  ),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    TextFormField(
                      controller: txtName,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      controller: txtSurname,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Last Name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Last Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: txtPhone,
                      validator: (value) {
                        if (value!.length != 10) {
                          return "Enter valid number";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Phone Number",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    TextFormField(
                      controller: txtemail,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter E-mail Address ";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter E-mail",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  maintainState: visi,
                  textColor: Colors.black,
                  onExpansionChanged: (value) {
                    setState(() {
                      copro = value;
                    });
                  },
                  leading: Icon(
                    Icons.contact_mail,
                    color: copro ? Colors.black : Colors.black54,
                  ),
                  title: Text(
                    "Professional Info",
                    style: TextStyle(
                        fontWeight: copro ? FontWeight.bold : FontWeight.normal,
                        color: Colors.black),
                  ),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    TextFormField(
                      controller: txtexperience,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Experience";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Experience",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    TextFormField(
                      controller: txtlastcompany,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Last Company";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Last Company",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  onExpansionChanged: (value){
                    setState(() {
                      coskill = value;
                    });
                  },
                  leading: Icon(Icons.add_chart,color: coskill?Colors.black:Colors.black54,),
                  title: Text("Skills",style: TextStyle(color: Colors.black,fontWeight: coskill?FontWeight.bold:FontWeight.normal),),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    TextFormField(
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Enter minimum 1";
                        }
                        return null;
                      },
                      controller: txtskill,
                      decoration: InputDecoration(
                        hintText: "Enter skills",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  textColor: Colors.black,
                  leading: Icon(Icons.school,color: codre?Colors.black:Colors.black54,),
                  onExpansionChanged: (value) {
                    setState(() {
                      codre = value;
                    });
                  },
                  maintainState: visi,
                  title: Text("Qualification",style: TextStyle(fontWeight: codre?FontWeight.bold:FontWeight.normal),),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    TextFormField(
                      controller: txtdegree,
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Enter Your Qualification";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Qualification",
                        border: OutlineInputBorder(),

                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  maintainState: visi,
                  onExpansionChanged: (value) {
                    setState(() {
                      colang = value;
                    });
                  },
                  leading: Icon(
                    Icons.language,
                    color: colang ? Colors.black : Colors.black54,
                  ),
                  title: Text(
                    "Language",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight:
                        colang ? FontWeight.bold : FontWeight.normal),
                  ),
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: lan1,
                            onChanged: (value) {
                              setState(() {
                                lan1 = value!;
                                if(value == true)
                                {
                                  lan1s = "Hindi";
                                }
                              });
                            }),
                        Text(
                          "Hindi",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: lan2,
                            onChanged: (value) {
                              setState(() {
                                lan2 = value!;
                                if(value == true)
                                {
                                  lan2s = "Gujarati";
                                }
                              });
                            }),
                        Text(
                          "Gujarati",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: lan3,
                            onChanged: (value) {
                              setState(() {
                                lan3 = value!;
                                if(value == true)
                                {
                                  lan3s = "English";
                                }
                              });
                            }),
                        Text(
                          "English",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 14),
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black54,
                                  width: 2,
                                )),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.add,
                              color: Colors.black54,
                              size: 15,
                            )),
                        Text(" ADD"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                ExpansionTile(
                  maintainState: visi,
                  onExpansionChanged: (value) {
                    setState(() {
                      colgen = value;
                    });
                  },
                  title: Text(
                    "Gender",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight:
                        colgen ? FontWeight.bold : FontWeight.normal),
                  ),
                  leading: Icon(
                    Icons.female_outlined,
                    color: colgen ? Colors.black : Colors.black54,
                  ),
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: "Male",
                            groupValue: gen,
                            onChanged: (value) {
                              setState(() {
                                gen = value!;
                              });
                            }),
                        Text(
                          "Male",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: "Female",
                            groupValue: gen,
                            onChanged: (value) {
                              setState(() {
                                gen = value!;
                              });
                            }),
                        Text(
                          "Female",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: "Other",
                            groupValue: gen,
                            onChanged: (value) {
                              setState(() {
                                gen = value!;
                              });
                            }),
                        Text(
                          "Other",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
                ExpansionTile(
                  maintainState: visi,
                  onExpansionChanged: (value) {
                    setState(() {
                      cocity = value;
                    });
                  },
                  leading: Icon(
                    Icons.location_city,
                    color: cocity ? Colors.black : Colors.black54,
                  ),
                  title: Text(
                    "City",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight:
                        cocity ? FontWeight.bold : FontWeight.normal),
                  ),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    DropdownButton(
                      isExpanded: true,
                      items: [
                        DropdownMenuItem(
                          child: Text("Surat"), value: "Surat",
                        ),
                        DropdownMenuItem(
                          child: Text("Ahmedabad"),
                          value: "Ahmedabad",
                        ),
                        DropdownMenuItem(
                          child: Text("Gandhi Nagar"),
                          value: "Gandhi Nagar",
                        ),
                        DropdownMenuItem(
                          child: Text("Vapi"),
                          value: "Vapi",
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          city = value!;
                        });
                      },
                      value: city,
                    ),
                  ],
                ),
                ExpansionTile(
                  maintainState: visi,
                  onExpansionChanged: (value){
                    setState(() {
                      cobir = value;
                    });
                  },
                  leading: Icon(Icons.celebration_rounded,color: cobir?Colors.black:Colors.black54,),
                  title: Text("Date of Birth",style: TextStyle(color: Colors.black,fontWeight: cobir?FontWeight.bold:FontWeight.normal),),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: txtdate,
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Enter date";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Date",
                          border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      controller: txtmonth,
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Enter month";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Enter month",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: txtyear,
                      validator: (value) {
                        if(value!.isEmpty)

                        {
                          return "Enter year";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Enter year",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),

                ExpansionTile(
                  maintainState: visi,
                  onExpansionChanged: (value) {
                    setState(() {
                      copho = value;
                    });
                  },
                  leading: Icon(
                    Icons.photo_camera_outlined,
                    color: copho ? Colors.black : Colors.black54,
                  ),
                  title: Text(
                    "Photo",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight:
                        copho ? FontWeight.bold : FontWeight.normal),
                  ),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: ()  async{
                              ImagePicker image = ImagePicker();
                              XFile? xfile = await image.pickImage(source: ImageSource.gallery);

                              setState(() {
                                path = xfile!.path;

                              });

                            },
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.only(right: 2.5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.photo_album_outlined,color: Colors.white,size: 15,),
                                  SizedBox(width: 8,),
                                  Text("From Galery",style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  )
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () async{
                              ImagePicker camera = ImagePicker();
                              XFile? xfile = await camera.pickImage(source: ImageSource.camera);
                              setState(() {
                                path = xfile!.path;
                              });
                            },
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.only(right: 8,left: 2.5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.camera_alt_outlined,color: Colors.white,size: 15,),
                                  SizedBox(width: 8,),
                                  Text("From Camera",style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 20,
                ),

                ExpansionTile(
                  onExpansionChanged: (value) {
                    setState(() {
                      coedu = value;
                    });
                  },
                  title: Text(
                    "Education",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight:
                        coedu ? FontWeight.bold : FontWeight.normal),
                  ),
                  leading: Icon(
                    Icons.book_outlined,
                    color: coedu ? Colors.black : Colors.black54,
                  ),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    TextFormField(
                      controller: txtres10,

                      decoration: InputDecoration(
                        hintText: "Enter 10th percentage",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      controller: txtres12,
                      decoration: InputDecoration(
                        hintText: "Enter 12th percentage",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  maintainState: visi,
                  textColor: Colors.black,
                  onExpansionChanged: (value) {
                    setState(() {
                      cohob = value;
                    });
                  },
                  leading: Icon(
                    Icons.library_add,
                    color: cohob ? Colors.black : Colors.black54,
                  ),
                  title: Text(
                    "Hobby",
                    style: TextStyle(
                        fontWeight:
                        cohob ? FontWeight.bold : FontWeight.normal),
                  ),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    TextFormField(
                      controller: txthobby,
                      decoration: InputDecoration(
                        hintText: "Enter Your Hobby",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  maintainState: visi,
                  textColor: Colors.black,
                  onExpansionChanged: (value) {
                    setState(() {
                      coint = value;
                    });
                  },
                  leading: Icon(
                    Icons.link,
                    color: coint ? Colors.black : Colors.black54,
                  ),
                  title: Text(
                    "Intreast",
                    style: TextStyle(
                        fontWeight: coint ? FontWeight.bold : FontWeight.normal,
                        color: Colors.black),
                  ),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    TextFormField(
                      controller: txtintreast,
                      decoration: InputDecoration(
                        hintText: "Intreasted Field",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {

                    if (FormKey.currentState!.validate() ) {
                      ModelData m1 = ModelData(
                        name: txtName.text,
                        surname: txtSurname.text,
                        hobby: txthobby.text,
                        address: txtadd.text,
                        experience: txtexperience.text,
                        experties: txtexperties.text,
                        lastcompany: txtlastcompany.text,
                        phone: txtPhone.text,
                        res10: txtres10.text,
                        res12: txtres12.text,
                        gender: gen,
                        intreast: txtintreast.text,
                        language1: lan1s,
                        language2: lan2s,
                        language3: lan3s,
                        city: city,
                        bdate: txtdate.text,
                        bmonth: txtmonth.text,
                        byear: txtyear.text,
                        qualification: txtdegree.text,
                        email: txtemail.text,
                        nationality: txtnationality.text,
                        image: path,
                        aboutyou: txtaboutyou.text,
                        skill: txtskill.text,
                        comname: txtco1name.text,
                        compost: txtco1pos.text,
                        comsome: txtco1some.text,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Data Received 😊"),
                        duration: Duration(seconds: 1),
                      ));
                      Navigator.pushNamed(context, 'Selection', arguments: m1);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Please Enter Required Information !!!"),
                        duration: Duration(seconds: 1),
                      ));
                    }
                  },
                  child: Text("Submit"),
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}