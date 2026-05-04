import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeDemo extends StatefulWidget {
  const DateTimeDemo({super.key});

  @override
  State<DateTimeDemo> createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DAte Time Picker"),backgroundColor: Colors.blue,),
      body: Column(
        children: [
          Text(DateFormat.yMd().format(selectedDate)),
          ElevatedButton(onPressed: (){
            showDatePicker(
                context: context,
                firstDate: DateTime.now(),
                lastDate: DateTime(2126))
                .then((value){
                  setState(() {
                    selectedDate = value!;
                  });
            });
          }, child: Text("Select Date")),
          Text(
            selectedTime != null
                ? selectedTime!.format(context).toString()
                : "No Time Selected"
          ),
          ElevatedButton(onPressed: (){
            showTimePicker(
                context: context,
                initialTime: TimeOfDay.now())
                .then((value){
                  setState(() {
                    selectedTime = value;
                  });
            });
          }, child: Text("Select Time"))
        ],
      ),
    );
  }
}
