import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/sideNavBar/sideNavBar.dart';
import 'package:pie_chart/pie_chart.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {

  Map<String, double> dataMap = {
    "TotalLeave": 10,
    "RemainingDay": 5,
  };





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
     appBar: AppBar(
       title: Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Image(
             image: AssetImage("assets/logo.png"),
             fit: BoxFit.contain,
             height: 32,
           ),
           SizedBox(width: 65,),
           Icon(
               Icons.notifications
           )
         ],
       ),
       elevation: 0.0,
     ),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(

                padding: EdgeInsets.symmetric(vertical: 30),
                  child: PieChart(
                      dataMap: dataMap,
                    animationDuration: Duration(milliseconds: 800),
                    //chartLegendSpacing: 50,
                    chartRadius: MediaQuery.of(context).size.width / 2,
                   // colorList: ,
                    initialAngleInDegree: 0,
                    chartType: ChartType.disc,
                    ringStrokeWidth: 32,
                    //centerText: "HYBRID",
                    legendOptions: LegendOptions(

                      showLegendsInRow: false,
                     // legendPosition: LegendPosition.right,
                      showLegends: true,
                      //legendShape: _BoxShape.circle,
                      legendTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    chartValuesOptions: ChartValuesOptions(
                      showChartValueBackground: false,
                      showChartValues: true,
                      showChartValuesInPercentage: true,
                      showChartValuesOutside: false,
                    ),
                  ),
              ),
              SizedBox(height: 10,),

              Container(
               margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Text(
                  "Apply for leave",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),

              SizedBox(height: 30,),
              // recently added container
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Assigned",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15
                      ),
                    ),
                    Icon(
                      Icons.wrap_text,
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),

              // task assigned

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                width: MediaQuery.of(context).size.width,
              ),

              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                width: MediaQuery.of(context).size.width,
              ),

              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                width: MediaQuery.of(context).size.width,
              ),

              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ),
      ),


    );
  }
}
