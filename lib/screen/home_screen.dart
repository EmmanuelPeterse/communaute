

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gptone/screen/inputcode.dart';
import 'package:gptone/screen/principal_screen/principalscreen.dart';
import 'package:gptone/screen/principal_screen/secondaire_screem.dart';
import 'package:gptone/testplace/testform.dart';
import 'package:validation_textformfield/validation_textformfield.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final _key = GlobalKey<FormState>();
  
  String _visibility = '';
  late String _valeurText;
  late bool _griseButton = false;
  late bool _errorControler= false;


  late String _controller ;
  final String _one = '07';

  TextEditingController _control = TextEditingController();


  @override
  void dispose() {
    _control;
   _errorControler;
    super.dispose();
  }

  late Widget _text;


  @override
  void initState() {
    // wigdet place
    _text = Text("un text");
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 24,top: 54),
                    child: Image.asset("assets/images/image 4.png"),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 22,top: 52,right: 62),
                    child: const Text("Connection par OTP",
                      style: TextStyle(color: Colors.black,
                          fontSize: 30,fontWeight: FontWeight.w700,fontFamily: 'Roboto-Black.ttf'),),
                  ),

                ]
                ,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 26, top: 7, ),
                    child: RichText(
                      text: const TextSpan(

                        children: <TextSpan>[
                          TextSpan(
                            text: 'Vous allez recevoir un code OTP de 6 chiffres\n par SMS sur le numéro' ,
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Roboto'),
                          ),
                          TextSpan(
                            text: ' +225: 07 07 21 08.',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600,fontSize: 16,fontFamily: 'Roboto'),
                          ),
                          TextSpan(
                            text: '\n Veuillez saisir ce code dans la case ci-dessous\n pour vous connecter.',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Roboto'),
                          )
                        ]
                      )
                    )
                  ),


                ],

              ),

              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                      key: _key,
                        child: Column(
                          children: [
                            Container(
                              width:353,
                              alignment: Alignment.bottomCenter,
                              margin: const EdgeInsets.only(left: 19,top: 16,right: 20),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: EmailValidationTextField(
                                keyboardType: TextInputType.number,
                                cursorColor: Colors.black,
                                whenTextFieldEmpty: 'Numéro de téléphone',
                                validatorMassage: _errorControler? 'numéro valide':'numéro invalide',
                                decoration: InputDecoration(
                                  isDense: true,
                                  fillColor: const Color(0xFFFFFF),
                                  filled: true,
                                  labelText: '',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(color: Colors.black12),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(color: Colors.black12),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(color: Colors.black12),
                                  ),
                                 // errorText: _errorControler? 'Require*':'numéro invalide',

                                ),
                                onSaved: (values){
                                  _valeurText = _valeurText;
                                },

                                onChanged: (values){
                                  setState(() {
                                      _controller = values;
                                      if(_controller!= null && values.trim().isEmpty){


                                      }
                                      else if(!_controller.startsWith('07') || values!.length != 10){
                                          _errorControler = _errorControler ;
                                      }
                                      else{
                                        _griseButton =!_griseButton;
                                        _errorControler = !_errorControler ;
                                      }

                                  });
                                },
                              ),

                            ),

                          ],
                        )),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: _griseButton ? (){
                        if(_key.currentState!.validate()){
                          setState(() {
                            _key.currentState!.save();
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return HomeInputCode();
                            }));


                          });
                        }
                      }:null,
                       child: Container(
                         height: 56,
                         width: 289,
                         alignment: Alignment.center,
                         margin: const EdgeInsets.only(left: 43,top: 25,right: 43,bottom: 16),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: _griseButton? Colors.orange[700]:Colors.grey,
                         ),
                         child: TextButton(
                           style: ButtonStyle(
                             backgroundColor: MaterialStateProperty.all(
                                 _griseButton? Colors.transparent:Colors.transparent)
                           ),
                           onPressed: _griseButton ? () {
                             Navigator.push(context, MaterialPageRoute(builder: (context){
                               return HomePrincipal();
                             }));
                           }:null,
                           child: Text("valider",
                             style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,
                                 fontSize: 16,fontFamily: 'inter-Black.ttf'),),

                         ),
                       ),
                    ),





                ],
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 22,bottom: 11),
                    child: const Text("Connexion Par :",
                      style: TextStyle(color: Colors.black,
                          fontSize: 30,fontWeight: FontWeight.w700 ),),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 54,
                    width: 353,
                    margin: const EdgeInsets.only(left: 22,bottom: 7,right: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12)
                    ),

                    child: GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Container(
                            height: 20,
                            width: 20,
                            margin: const EdgeInsets.only(left: 18,right: 20),
                            child:Image.asset("assets/images/google.png"),
                          ),

                          const Text("Continuer avec Google",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w700,fontFamily: 'Helvetica.ttf'),

                          ),
                        ],
                    ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 1,
                    width: 156,
                    color: Colors.black12,
                    margin: const EdgeInsets.only(left: 22, top: 16,bottom: 16),
                  ),

                  Container(
                    margin: const EdgeInsets.all(9),
                    child: const Text("ou",style: TextStyle(color: Colors.black12,fontSize: 14,
                           fontFamily: 'Helvetica.ttf'),),
                  ),

                  Container(
                    height: 1,
                    width: 156,
                    color: Colors.black12,
                    margin: const EdgeInsets.only(top: 22,bottom: 16),
                  ),
                ],
              ),

              Container(
                height: 54,
                width: 353,
                margin: const EdgeInsets.only(left: 2,bottom: 7,right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12)
                ),

                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Container(
                        height: 20,
                        width: 20,
                        margin: const EdgeInsets.only(left: 18,right: 20),
                        child:Image.asset("assets/images/facebook.png"),
                      ),

                      const Text("Continuer avec Facebook",
                        style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.w700,fontFamily: 'Helvetica.ttf'),

                      ),
                    ],
                  ),
                ),
              ),

              Container(
                child: _text,
              ),
              ElevatedButton(
                onPressed: (){
                setState(() {
                  _text = SecondaireScreen().text;
                });
                },  child: Text("hanger")),


            ]),
        ) ,)),
    );
  }
}