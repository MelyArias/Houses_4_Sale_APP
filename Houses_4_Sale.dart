import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}
class App0601 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());}}

//Controllers
final usernameController = TextEditingController();
final passwordController = TextEditingController();
final nameController = TextEditingController();
final phoneController = TextEditingController();
final emailController= TextEditingController();
final streetController = TextEditingController();
final cityController = TextEditingController();
final zipController = TextEditingController();
final descriptionController= TextEditingController();
final priceController = TextEditingController();
//Constants for the State Dropdown

const _AL = "AL"; const _AK = "AK"; const _AZ = "AZ";const _AR = "AR";const _CA = "CA";
const _CO = "CO";const _CT = "CT";const _DE = "DE";const _FL = "FL";const _GA = "GA";
const _HI = "HI";const _ID = "ID";const _IL = "IL";const _IN = "IN";const _IA = "IA";
const _KS = "KS";const _KY = "KY";const _LA = "LA";const _ME = "ME";const _MD = "MD";
const _MA = "MA";const _MI = "MI";const _MN = "MN";const _MS = "MS";const _MO = "MO";
const _MT = "MT";const _NE = "NE";const _NV = "NV";const _NH = "NH";const _NJ = "NJ";
const _NM = "NM";const _NY = "NY";const _NC = "NC";const _ND = "ND";const _OH = "OH";
const _OK = "OK";const _OR = "OR";const _PA = "PA";const _RI = "RI";const _SC = "SC";
const _SD = "SD";const _TN = "TN";const _TX = "TX";const _UT = "UT";const _VT = "VT";
const _VA = "VA";const _WA = "WA";const _WV = "WV";const _WI = "WI";const _WY = "WY";
//Dropdowns
const _listOfStates = [
  DropdownMenuItem(value: _AL, child: Text(_AL,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _AK, child: Text(_AK,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _AZ, child: Text(_AZ,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _AR, child: Text(_AR,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _CA, child: Text(_CA,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _CO, child: Text(_CO,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _CT, child: Text(_CT,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _DE, child: Text(_DE,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _FL, child: Text(_FL,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _GA, child: Text(_GA,textScaleFactor: 1.5)),

  DropdownMenuItem(value: _HI, child: Text(_HI,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _ID, child: Text(_ID,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _IL, child: Text(_IL,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _IN, child: Text(_IN,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _IA, child: Text(_IA,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _KS, child: Text(_KS,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _KY, child: Text(_KY,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _LA, child: Text(_LA,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _ME, child: Text(_ME,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _MD, child: Text(_MD,textScaleFactor: 1.5)),

  DropdownMenuItem(value: _MA, child: Text(_MA,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _MI, child: Text(_MI,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _MN, child: Text(_MN,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _MS, child: Text(_MS,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _MO, child: Text(_MO,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _MT, child: Text(_MT,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _NE, child: Text(_NE,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _NV, child: Text(_NV,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _NH, child: Text(_NH,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _NJ, child: Text(_NJ,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _NM, child: Text(_NM,textScaleFactor: 1.5)),

  DropdownMenuItem(value: _NY, child: Text(_NY,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _NC, child: Text(_NC,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _ND, child: Text(_ND,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _OH, child: Text(_OH,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _OK, child: Text(_OK,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _OR, child: Text(_OR,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _PA, child: Text(_PA,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _RI, child: Text(_RI,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _SC, child: Text(_SC,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _SD, child: Text(_SD,textScaleFactor: 1.5)),

  DropdownMenuItem(value: _TN, child: Text(_TN,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _TX, child: Text(_TX,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _UT, child: Text(_UT,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _VT, child: Text(_VT,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _VA, child: Text(_VA,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _WA, child: Text(_WA,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _WV, child: Text(_WV,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _WI, child: Text(_WI,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _WY, child: Text(_WY,textScaleFactor: 1.5)),
  DropdownMenuItem(value: _SD, child: Text(_SD,textScaleFactor: 1.5)),
];
var _StatesValue = null;
bool _isOn = false;
int _radioValue;
String _whatWasRead = "";
String _result;
int _numOfHouses=1;
int sumOfPrize=0;
String resultCalculation()
{
  if (int.parse(priceController.text)>237000)
  {
    return _result=" Unfortunately, you're price is too high "
        " and you have a low chance of selling you're house in this state";
  }
  else{
    return _result="you're price is at or below national avarage price of houses sold. "
        "Therefore, you have a high chance of selling you're house";
  }}
  double AverageHomePrize(){
  sumOfPrize+=int.parse(priceController.text);
  double average=sumOfPrize/_numOfHouses;
  return average;
}
class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  String _isOn_text='No';
  bool isEmpty (String s){
  }

    void _refreshStatesDropdown(String newValue) {
    setState(() => _StatesValue = newValue);}

    void _refreshRadio(int newValue) {
    setState(() {_radioValue = newValue;});}

    void _refresh(newValue) {
    if (_isOn==true){
      _isOn_text="No";
    }
    if (_isOn==false){
      _isOn_text="Yes";
    }
    setState(() {
      _isOn = newValue;
    });
  }


  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    streetController.dispose();
    cityController.dispose();
    zipController.dispose();
    priceController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Houses for Sale', textScaleFactor: 2,),
            backgroundColor: Colors.pinkAccent,
            actions: <Widget>[
        new IconButton(icon: new Icon(Icons.android, size: 40.0),
      onPressed: (){
        Navigator.push(
            context,MaterialPageRoute(builder: (context) => Admin()));
      },
    ),
    ],
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  'https://g.foolcdn.com/editorial/images/483191/house-with-for-sale-sign_gettyimages-177735411.jpg',
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Have a house you want to sell? '
                          'To enter a house for sale, please answer all questions.', textScaleFactor: 2,),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Contact Information",textScaleFactor: 1.5,),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your first and last name',
                      labelText: 'Name',
                    ),
                    controller: nameController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.phone),
                    hintText: 'Enter a phone number',
                    labelText: 'Phone',
                  ),
                  controller: phoneController,
                    inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.phone,),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter an email address',
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Text("Are you the owner of the house?",textScaleFactor: 1.7,),
                      Switch(value: _isOn, onChanged: _refresh),
                      Text('$_isOn_text',),],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("House Address",textScaleFactor: 1.5,),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.map),
                      hintText: 'Enter Street Address',
                      labelText: 'Street Address',
                    ),
                    controller: streetController,
                    keyboardType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.map),
                      hintText: 'Enter City',
                      labelText: 'City',
                    ),
                    controller: cityController,
                    keyboardType: TextInputType.text,
                  ),
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("State",textScaleFactor: 1.5,),
                    ),
                    Container(
                      child: DropdownButton<String>(
                        items: _listOfStates, //_dropdownMenuItems,
                        onChanged: _refreshStatesDropdown,
                        value: _StatesValue, // onChangeDropdownItem,
                        hint: Text("Select One"),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.map),
                      hintText: 'Enter Zipcode',
                      labelText: 'Zipcode',
                    ),
                    controller:zipController,
                    inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("House Information",textScaleFactor: 1.5,),
                ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Number of bedrooms: ',textScaleFactor:2),
            Text('0-1'),
              Radio(
                  value: 1, groupValue: _radioValue, onChanged: _refreshRadio),
            Text('2-3'),
              Radio(
                  value: 2, groupValue: _radioValue, onChanged: _refreshRadio),
            Text('4-5'),
              Radio(value: 4, groupValue: _radioValue, onChanged: _refreshRadio),

            Text('6+'),
              Radio(value: 6, groupValue: _radioValue, onChanged: _refreshRadio),
              ],
            ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.home),
                      hintText: 'House Description',
                      labelText: 'Enter House Description',
                    ),
                    maxLines: null,
                    controller: descriptionController,
                    keyboardType: TextInputType.multiline,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: priceController,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.attach_money),
                      hintText: 'Enter Asking Price',
                      labelText: 'Asking Price',
                    ),
                    inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                  ),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    RaisedButton(color: Colors.green,child: Text("Submit",style: TextStyle(fontSize: 20.0,)),
                      onPressed: () {_save();_read();
                if(nameController.text.isEmpty || phoneController.text.isEmpty || emailController.text.isEmpty ||
                    streetController.text.isEmpty || cityController.text.isEmpty ||
                    zipController.text.isEmpty || descriptionController.text.isEmpty || priceController.text.isEmpty)
                  {
                    showDialog(context: context,builder: (BuildContext context) {
                  // return object of type Dialog
                  return AlertDialog(
                    backgroundColor: Colors.red,
                  title: new Text("Empty Questions",textScaleFactor: 2),
                  content: new Text("Please Answer ALL Questions",textScaleFactor: 1.5),
                  actions: <Widget>[
                  new FlatButton(
                  child: new Text("Close"),
                  onPressed: () {
                  Navigator.of(context).pop();},),],
                  );},);}
                else{resultCalculation();
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Results()),
                        );
                      }},)
                  ],
                )
              ]),
        )
    )
    );
  }
  final prefsKey = 'key';


  _save() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(prefsKey, '$_whatWasRead\n House Number: ${_numOfHouses}\n Name: ${nameController.text}\n Phone: ${phoneController.text}\n '
        'Email: ${emailController.text}\n Owner: ${_isOn_text}\n Street: ${streetController.text}\n '
        'City: ${cityController.text}\n State: ${_StatesValue}\n Zipcode: ${zipController.text}\n '
        'Number of Bedrooms: at least ${_radioValue}\n House Description: ${descriptionController.text}\n '
        'Asking Price: ${priceController.text}\n Average Home Prize Now: \$${AverageHomePrize()}\n');
    nameController.text = "";
    phoneController.text = "";
    emailController.text = "";
    streetController.text = "";
    cityController.text = "";
  }

  _read() async {
    final prefs = await SharedPreferences.getInstance();
    _whatWasRead = prefs.getString(prefsKey) ?? "";
    setState(() {});
  }
}

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
        Image.network('http://d3vfpr1jrz597r.cloudfront.net/ecards/video-thumbs/npg5779.jpg'),
              Text("Congrats, you have submitted your house for sale! Based on your answers, we have concluded that "
                  "$_result",textScaleFactor: 3),

           RaisedButton(
            onPressed: ()
            {Navigator.pop(
                context,MaterialPageRoute(builder: (context) => MyHomePage()));
              priceController.clear();nameController.clear();
            phoneController.clear();emailController.clear();
            streetController.clear();cityController.clear();zipController.clear();
            _StatesValue=null;descriptionController.clear();
            _radioValue=null;_isOn = false;_numOfHouses++;},
            child: Text('END'),),
       ]),
      ),
    );

  }
}

class Admin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Admin"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
       Padding(
         padding: const EdgeInsets.all(15.0),
         child: Column(
           children: <Widget>[
             new Icon(Icons.android, size: 300.0),
           ],
         ),
       ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Username',
                labelText: 'Username',)),
        ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            RaisedButton(
            child: Text('Login',style: TextStyle(fontSize: 20.0)),
              onPressed: ()
              {
                if (usernameController.text=="MELY" && passwordController.text=="PASSWORD"){
                Navigator.push(
                      context,MaterialPageRoute(builder: (context) => ResultsForAdmin()));
                usernameController.clear();
                passwordController.clear();}
                else{
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      // return object of type Dialog
                      return AlertDialog(
                        backgroundColor: Colors.red,
                        title: new Text("Wrong Username and/or Password",textScaleFactor: 2),
                        content: new Text("Username is MELY and the Password is PASSWORD",textScaleFactor: 1.5),
                        actions: <Widget>[
                          // usually buttons at the bottom of the dialog
                          new FlatButton(
                            child: new Text("Close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                              usernameController.clear();
                              passwordController.clear();},),],);},);};})]
      ),
    ));
  }
}
class ResultsForAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Saved Information',textScaleFactor: 2,),
              Text(_whatWasRead),
              RaisedButton(
                onPressed: ()
                {Navigator.pop(
                    context,MaterialPageRoute(builder: (context) => MyHomePage()));},
                child: Text('END'),),
            ]
          ),
      )
    ),
    );
  }
}

