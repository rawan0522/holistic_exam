import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Providers/registration_provider.dart';
import 'package:untitled/Screens/shop_screen.dart';
import 'package:untitled/Screens/signupscreen.dart';
class LoginScreen extends StatelessWidget {
LoginScreen({super.key});
TextEditingController email1 = TextEditingController();
TextEditingController password1 = TextEditingController();
final formkey =GlobalKey<FormState>();
@override
Widget build(BuildContext context) {
  final provider = Provider.of<REgistrationProvider>(context, listen:false );

  return Scaffold(
    appBar: AppBar(
      leading: Icon(Icons.menu),
      title: Text("Login" , style: TextStyle(fontSize: 20),),
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
                  ),

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
              ,child: Text("Login"), ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signupscreen(),));
            }, child: Text("Sign up")),
          ],
        ),
      ),
    ),
  );
}
}