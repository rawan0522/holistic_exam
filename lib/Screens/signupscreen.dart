import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Screens/loginscreen.dart';
import 'package:untitled/Screens/shop_screen.dart';
import '../Providers/registration_provider.dart';

class Signupscreen extends StatelessWidget {
   Signupscreen({super.key});
   TextEditingController email1 = TextEditingController();
   TextEditingController password1 = TextEditingController();
   TextEditingController name = TextEditingController();
   TextEditingController phone = TextEditingController();
   final formkey =GlobalKey<FormState>();
   @override
   Widget build(BuildContext context) {
     final provider = Provider.of<REgistrationProvider>(context, listen:false );

     return Scaffold(
       appBar: AppBar(
         leading: Icon(Icons.menu),
         title: Text("Signup" , style: TextStyle(fontSize: 20),),
         centerTitle: true,
       ),
       body: Center(
         child: Form(
           key: formkey,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               TextFormField(
                 controller: name,
                 validator: (value) {
                   if(value!.isEmpty){
                     return " Requierd";
                   }
                 },
                 decoration: InputDecoration(
                     label: Text("name"),
                     icon: Icon(Icons.person),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                     )
                 ),
               ),SizedBox(height: 10,),
               TextFormField(
                 controller: email1,
                 validator: (value) {
                   if(value!.isEmpty){
                     return " Requierd";
                   }
                 },
                 decoration: InputDecoration(
                     label: Text("email"),
                     icon: Icon(Icons.email),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                     )
                 ),
               ),SizedBox(height: 10,),
               TextFormField(
                 controller: password1,
                 validator: (value) {
                   if(value!.isEmpty){
                     return " Requierd";
                   }
                 },
                 decoration: InputDecoration(
                     label: Text("password"),
                     icon: Icon(Icons.lock),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                     )
                 ),
               ),SizedBox(height: 10,),
               TextFormField(
                 controller: phone,
                 validator: (value) {
                   if(value!.isEmpty){
                     return " Requierd";
                   }
                 },
                 decoration: InputDecoration(
                     label: Text("phone"),
                     icon: Icon(Icons.phone),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                     )
                 ),
               ),SizedBox(height: 10,),
               MaterialButton(onPressed: ()async {
                 if(formkey.currentState!.validate()){
                   await provider.login(email: email1.text, password: password1.text);
                   if(provider.registrationModel?.status == true){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => ShopScreen(),));
                   }else{
                     print(provider.registrationModel?.message);
                   }
                 }
               }
                 ,child: Text("Sign up"), ),
               TextButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
               }, child: Text("Login")),
             ],
           ),
         ),
       ),
     );
   }
}