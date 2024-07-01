import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final _key = GlobalKey<FormState>();
  final _age = TextEditingController();
  final _gender = TextEditingController();
  final _weight = TextEditingController();
  final _height = TextEditingController();
  final _activity = TextEditingController();
  var initial = 0.0;
  
  String determiner (initial){
     if (initial == 0){
     return 'Normal';
   }
  else if (initial == 1){
  return 'High';
   }
   else{
   return 'Extreme';
   }



 }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Input'),
      ),

      body: Column(
        children: [
            TextFormField(
            controller: _age,
            decoration: const InputDecoration(
              labelText: "Age"
            ),
            // validation
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value!.isEmpty || int.tryParse (value)  == null){
                return'Value is not valid';
              }
              else{
                return null;
              }
            },
            ),
            TextFormField(
            controller: _gender,
            decoration: const InputDecoration(
              labelText: "Gender"
            ),
            // validation
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value!.isEmpty || int.tryParse (value)  == null){
                return'Value is not valid';
              }
              else{
                return null;
              }
            },
            ),

            



            TextFormField(
            controller: _weight,
            decoration: const InputDecoration(
              labelText: "Weight"
            ),
            // validation
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value!.isEmpty || int.tryParse (value)  == null){
                return'Value is not valid';
              }
              else{
                return null;
              }
            },
            ),
            TextFormField(
            controller: _height,
            decoration: const InputDecoration(
              labelText: "Height"
            ),
            // validation
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value!.isEmpty || int.tryParse (value)  == null){
                return'Value is not valid';
              }
              else{
                return null;
              }
            },
            ),
            TextFormField(
            controller: _activity,
            decoration: const InputDecoration(
              labelText: "Activity"
            ),
            // validation
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value!.isEmpty || int.tryParse (value)  == null){
                return'Value is not valid';
              }
              else{
                return null;
              }
            },
            ),

      Text(
        determiner(initial)
    ),
    Slider(
       divisions: 2,
       min: 0.0,
       max: 2.0,
       value: initial, 
    onChanged: (value){
    setState(() {
    initial = value;
  });

 })
        ],
      ),
    );
  }
}