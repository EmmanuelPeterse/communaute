import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

import 'package:gptone/screen/inputcode.dart';

class Testplace extends StatefulWidget {
  const Testplace({Key? key}) : super(key: key);

  @override
  State<Testplace> createState() => _TestplaceState();
}

class _TestplaceState extends State<Testplace> {
  late String
      password; // Variable pour stocker le mot de passe saisi par l'utilisateur
  bool isButtonEnabled = false;

  String saisie = '';
  bool isSaisieValide = false;

  bool color = false;
  Color containerColor = Colors.grey;
  Color containerColors = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Variable pour contrôler l'état d'activation du bouton

              TextField(
                onChanged: (value) {
                  setState(() {
                    password = value; // Mettre à jour la valeur du mot de passe
                    isButtonEnabled =
                        password.isNotEmpty && password == 'motdepasse';
                  });
                },
                obscureText:
                    false, // Masquer le texte saisi pour un champ de mot de passe
                decoration: InputDecoration(errorText: 'entre un numérovalide'),
              ),

              ElevatedButton(
                onPressed: isButtonEnabled
                    ? () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeInputCode();
                        }));

                        // Action à effectuer lorsque le bouton est cliqué
                      }
                    : null, // Désactive le bouton si isButtonEnabled est false
                child: Text('Valider'),
              ),

              TextField(
                onTap: () {
                  var value;
                  setState(() {
                    saisie = value; // Mettre à jour la valeur de la saisie
                    if (isSaisieValide = saisie.length >= 8) {
                      // Vérifier la validité de la saisie en temps réel
                    }
                  });
                },
                onChanged: (value) {
                  setState(() {
                    saisie = value;

                    isSaisieValide = saisie.length >= 8;
                  });
                },
                decoration: InputDecoration(
                  // labelText: 'Saisie',
                  errorText: isSaisieValide
                      ? ''
                      : 'dsjhsdjf', // Afficher un message d'erreur si la saisie est invalide
                ),
              ),

              GestureDetector(
                onTap: isSaisieValide ? () {} : null,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 100,
                  color: isSaisieValide ? Colors.orange : Colors.greenAccent,
                  child: Text("valider"),
                ),
              ),

              TextField(
                enabled:
                    !isSaisieValide, // Désactiver le champ de saisie si la saisie est valide
                onChanged: (value) {
                  setState(() {
                    saisie = value; // Mettre à jour la valeur de la saisie
                    isSaisieValide = saisie.length >=
                        8; // Vérifier la validité de la saisie en temps réel
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Saisie',
                  hintText: 'Entrez votre saisie',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: isSaisieValide
                          ? Colors.grey
                          : Colors
                              .red, // Changer la couleur de la bordure si la saisie est invalide
                    ),
                  ),
                  errorText: isSaisieValide
                      ? null
                      : 'La saisie est invalide', // Afficher un message d'erreur si la saisie est invalide
                ),
              ),

              PasswordField(
                color: Colors.blue,
                passwordConstraint: r'.*[@$#.*].*',
                inputDecoration: PasswordDecoration(),
                hintText: 'must have special characters',
                border: PasswordBorder(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.shade100,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.shade100,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        BorderSide(width: 2, color: Colors.red.shade200),
                  ),
                ),
                errorMessage:
                    'must contain special character either . * @ # \$',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
