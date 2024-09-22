import 'package:flutter/material.dart';
class MaterialHomePage extends StatefulWidget{
  const MaterialHomePage({super.key});
  @override
  State createState()=> _currency();
}

// ignore: camel_case_types
class _currency extends State{
double result=0;
final TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    double result=0;
    print("helo");
    const border=OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(127, 0, 255, 1),
                  width:2.0,
                  style:BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
                borderRadius: BorderRadius.all(Radius.circular(27)),
              );
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 16, 16, 1),
      appBar: AppBar(
        backgroundColor:  const Color.fromRGBO(16, 16, 16, 1),
        title: const Text('BROTHER EYE',style: TextStyle(
          color:Color.fromRGBO(127, 0, 255, 1), 
        ),),
      ),
        body: Center( child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Greetings from Alfred"
            ,style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.bold,
              color:Color.fromRGBO(252,222,33,1)
            ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style:const TextStyle(
                  color: Color.fromRGBO(252,222,33,1)
                ),
               decoration: const InputDecoration( 
                hintText: 'Master Wayen, enter Amount in USD',
                prefixIcon:Icon(Icons.monetization_on ),
                focusedBorder:border,
                enabledBorder: border,
               ), 
               keyboardType: const TextInputType.numberWithOptions(),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  result= double.parse(textEditingController.text)*81; 
                  print(result);
                });
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(127, 0, 255, 1)),
                elevation:WidgetStatePropertyAll(27) 
              ),
              child: const Text("Click here for the suit up",style: TextStyle(color: Color.fromRGBO(252, 222, 33, 1)),),
            ),
            Text(
              result.toString(),style: TextStyle(color: Color.fromRGBO(252,222,33,1)),
            )
          ],
        )
        )
      );
  }
  
}