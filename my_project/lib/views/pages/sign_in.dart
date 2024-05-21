import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_project/views/pages/home_page.dart';
import 'package:my_project/views/widgets/custom_scaffold.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  final _formSignInKey = GlobalKey<FormState>(); 
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [const Expanded(
        flex: 1,
        child: SizedBox(height:10.0 ,),      ),
        Expanded(flex: 7,
          child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0)
            )
          ),
          child:Form(
            key: _formSignInKey,
            child:Column(children: [
              Text('welcome back',
              style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w900
                   ),
              ),
              const SizedBox(height: 20,),
              TextFormField(

                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'please enter email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: const Text('Email'),
                  hintText: 'Enter Email',
                  hintStyle:const TextStyle(color:  Colors.black26),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black12
                    ),
                    borderRadius: BorderRadius.circular(10.0)
                  ) 
                ),
              ),
           const SizedBox(height: 20,),
              TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'please enter password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: const Text('password'),
                  hintText: 'Enter password',
                  hintStyle:const TextStyle(color:  Colors.black26),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black12
                    ),
                    borderRadius: BorderRadius.circular(10.0)
                  ) 
                ),
              )  
           ,const SizedBox(height: 20,),
           SizedBox(
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home_page()));
              },child: const Text('sign in'),
            ),
           ),
           const SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 10,
                          ),
                            child: Text(
                              'Sign in with',
                              style: TextStyle(
                                color: Colors.black45,
                              ),),

                          ),
                           Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey.withOpacity(0.5),
                            )),
            ],
           ),
           const SizedBox(height: 10,),
           Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Icon(
          FontAwesomeIcons.facebook,
          size: 48, // Adjust the size as needed
          color: Colors.blue, // Customize the color
        ),
         Icon(
          FontAwesomeIcons.x,
          size: 48, // Adjust the size as needed
          //color: Colors.blue, // Customize the color
        ),
          Icon(
          FontAwesomeIcons.snapchat,
          size: 48, // Adjust the size as needed
          color: Color.fromARGB(255, 243, 240, 33), // Customize the color
        ),
         Icon(
          FontAwesomeIcons.apple,
          size: 48, // Adjust the size as needed
         // color: Colors.blue, // Customize the color
        ),
            ],

           )
            ],) ) ,
        ))],)
    );
  }
}