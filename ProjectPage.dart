// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';


class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff120D3A),
        toolbarHeight: 50,
        title: Text('Project Details',style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontFamily: 'MontaguSlab',
            fontWeight: FontWeight.w200
        ),),
      ),
      body: Container(
         alignment: Alignment.topCenter,
         margin: EdgeInsets.only(top:20),
        child: Stack(
                children:<Widget>[
                Container(
                     height: double.infinity,
                      width: double.infinity,
                      alignment: Alignment.topCenter,
                      child:Image(image: 
                      AssetImage('ProjectBackground.png'),
                      fit: BoxFit.cover,
                    )
                   ),
                  Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 25),
                  child: Column(
                        children:[
                          ProjectInfo(text:'Project Name:'),
                          const SizedBox(height: 18),
                          ProjectInfo(text:'Year:'),
                          const SizedBox(height: 18),
                          ProjectInfo(text:"First Student's Name:"),
                          const SizedBox(height: 18),
                          ProjectInfo(text:"Second Student's Name:"),
                          const SizedBox(height: 18),
                          ProjectInfo(text:"Third Student's Name:"),
                          const SizedBox(height: 18),
                          ProjectInfo(text:"Supervisor's Name:"),
                          const SizedBox(height: 18),
                          ProjectInfo(text:"President's Name:"),
                          const SizedBox(height:18),
                          ProjectInfo(text:"Examinator's Name:"),
                          const SizedBox(height: 18),
                          ProjectInfo(text:"Supervisor's Mark:"),
                          const SizedBox(height: 18),
                          ProjectInfo(text:"President's Mark:"),
                          const SizedBox(height:18),
                          ProjectInfo(text:"Examinator's Mark:"),
                        ],
                      )
                      ),
                      ])));}
                      
  Widget ProjectInfo({required text}){
  return Row(
      children: [
        Text(
            text, 
             style: TextStyle(
             color: Colors.black,
             fontSize: 15,
             fontFamily: 'MontaguSlab',
             fontWeight: FontWeight.w200
          ),
         )
        ],
       );
  }                   
                      }