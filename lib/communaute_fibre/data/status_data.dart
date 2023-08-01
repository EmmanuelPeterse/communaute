
class  StatutsSection{

late String statut; 
late String fulname;
late String ndFibere;
late String login;
late String clientNumber;
late String statutvalur; 
late String fulnamevalue;
late String ndFiberevalue;
late String loginvalue;
late String clientNumbervalue;

 
StatutsSection({
  required this.statut,
  required this.fulname,
  required this.ndFibere,
  required this.login,
  required this.clientNumber,
  required this.statutvalur,
  required this.fulnamevalue,
  required this.ndFiberevalue,
  required this.loginvalue,
  required this.clientNumbervalue,
});

 
 static List<StatutsSection> fectStatus(){

  return  [
    StatutsSection(statut: 'Statut', 
    fulname:  'Nom et prénom',
    ndFibere: 'ND fibre',
    login: 'Login', 
    clientNumber: 'N° client',
    statutvalur: 'Actif',
    fulnamevalue: 'Richemond Amany',
    ndFiberevalue: '2722234567',
    loginvalue: 'richmond@ofibre.ci',
    clientNumbervalue: '0707070707'
    )
    
  ];
 }



}




