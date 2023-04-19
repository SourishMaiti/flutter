import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ritiriwaz/providers/users.dart';
import 'package:ritiriwaz/screens/home_screen.dart';

import 'login_screen.dart';

class RegScreen extends StatefulWidget {
  static const routeName = '/edit_pdt';

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  final _lastscope = FocusNode();
  final _phscope = FocusNode();
  final _locscaope = FocusNode();
  final _emailscope = FocusNode();
  final _form = GlobalKey<FormState>();

  var _editedUser =
      Users(email: '', firstanme: '', lastname: '', loc: '', ph: 0, status: '');

  String dropdownvalue = 'Bride';

  // List of items in our dropdown menu
  var items = [
    'Bride',
    'Groom',
    'Other ',

  ];

  DateTime _selectedDate=DateTime.now();

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  void dispose() {
    _lastscope.dispose();
    _phscope.dispose();
    _emailscope.dispose();

    super.dispose();
  }

  var isLoading = false;

  Future<void> _saveForm() async {
    final isValid = _form.currentState?.validate();

    if (!(isValid!)) return;
    _form.currentState?.save();
    setState(() {
      isLoading = true;
    });

    setState(() {
      isLoading = false;
    });
    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginScreen()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),

      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: EdgeInsets.all(10),
              child: Form(
                key: _form,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton(
                        alignment: AlignmentDirectional.topStart,

                        // Initial Value
                        value: dropdownvalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(label: Text('First Name')),
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_lastscope);
                        },
                        validator: (value) {
                          if ((value as String).isEmpty)
                            return 'please enter a first name';
                          return null;
                        },
                      ),
                      TextFormField(
                        focusNode: _lastscope,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(label: Text('Last Name')),
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_phscope);
                        },
                        validator: (value) {
                          if ((value as String).isEmpty)
                            return 'please enter a last name';
                          return null;
                        },
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration:
                            InputDecoration(label: Text('Phone Number')),
                        focusNode: _phscope,
                        keyboardType: TextInputType.number,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_emailscope);
                        },
                        validator: (value) {
                          if (double.tryParse(value as String) == null)
                            return 'please enter phone number';
                          if ((value as String).length < 10)
                            return 'please enter a valid phone number';

                          return null;
                        },
                      ),
                      TextFormField(
                        //textInputAction: TextInputAction.next,
                        decoration: InputDecoration(label: Text('Email Id')),
                        onFieldSubmitted: (val) {
                          FocusScope.of(context).requestFocus(_locscaope);
                        },

                        focusNode: _emailscope,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return 'Invalid email!';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        //textInputAction: TextInputAction.next,
                        decoration: InputDecoration(label: Text('Location')),

                        focusNode: _locscaope,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a location';
                          }
                          return null;
                        },
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.pink),
                              ),
                          child: Text(
                            'Choose Date',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: _presentDatePicker,
                        ),
                          Text(DateFormat.yMd().format(_selectedDate)),
                        ]
                      ),
                      SizedBox(height: 140,),

                    ],
                  ),
                ),
              ),
            ),
      bottomNavigationBar: TextButton(onPressed: _saveForm, child: Text('Submit',style: TextStyle(
        fontSize: 20
      ),)),
    );
  }
}
