import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import'foodcard.dart';

class Update extends StatefulWidget {
  const Update({ Key? key }) : super(key: key);

  @override
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> with SingleTickerProviderStateMixin{

  final List<Tab> myTabs = <Tab>[
      Tab(text: 'INTAKE'),
      Tab(text: 'OUTTAKE'),
    ];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 84, 148, 130),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 84, 148, 130),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Intake(),
          Outtake()
        ]
      ),
    );
  }
}

class Intake extends StatefulWidget {
  const Intake({ Key? key }) : super(key: key);

  @override
  _IntakeState createState() => _IntakeState();
}

class _IntakeState extends State<Intake> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:foodcard()
    );
  }
}

class Outtake extends StatefulWidget {
  const Outtake({ Key? key }) : super(key: key);

  @override
  _OuttakeState createState() => _OuttakeState();
}

class _OuttakeState extends State<Outtake> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('SId')
    );
  }
}