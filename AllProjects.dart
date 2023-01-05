

// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:second_app/ProjectPage.dart';


class AllProjects extends StatefulWidget {
  const AllProjects({Key? key}) : super(key: key);

  @override
  State<AllProjects> createState() => _AllProjectsState();
}

class _AllProjectsState extends State<AllProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff120D3A),
        toolbarHeight: 50,
        title: Text('All Projects',style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontFamily: 'MontaguSlab',
            fontWeight: FontWeight.w200
        ),),
      ),
      body:Container( 
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xffB298DC),
              // ignore: prefer_const_constructors
              Color(0xffB298DC),
              Color(0xffB298DC),

            ],
          ),),
        child:GridView.count(
        children: [
          ProjectCard(
            ProjectName: 'Project Name 1'),
          ProjectCard(
            ProjectName: 'Project Name 2'),
          ProjectCard(
            ProjectName: 'Project Name 3'),
          ProjectCard(
            ProjectName: 'Project Name 4'),
             ProjectCard(
            ProjectName: 'Project Name 5'),
          ProjectCard(
            ProjectName: 'Project Name 6'),
          ProjectCard(
            ProjectName: 'Project Name 7'),
          ProjectCard(
            ProjectName: 'Project Name 8'),
             ProjectCard(
            ProjectName: 'Project Name 9'),
          ProjectCard(
            ProjectName: 'Project Name 10'),
          
        ],
          crossAxisCount: 2,
          controller: ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10 
      
      ),));
      }
    Widget ProjectCard({required String ProjectName,}){ 
      return Card(
        color:Color(0xffB298DC),
        elevation: 0.0,
        margin: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          side: BorderSide(
           color: Color(0xff120D3A) ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[Image.asset('ProjectImg.png')]
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                TextButton(
                  child: Text(
          ProjectName,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            ),
          ),
          onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProjectPage()));
                  },)])]
      ) ,
      )
   );}}