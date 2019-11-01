import 'package:flutter/material.dart';

void main() => runApp(MyApp());


// Todo 1 Define a Custom Widget
class MyCustomForm extends StatefulWidget {
    @override
    _MyCustomFormState createState() => _MyCustomFormState();
}

//  Todo 2 - Create a corresponding class for Custom Widget
class _MyCustomFormState extends State<MyCustomForm> {


// Todo 3 - Create a textController and use it to retrieve the current value
    final myController = TextEditingController();



    @override
    Widget build(BuildContext context) {
        // TODO: implement build
        return null;
    }


    // Todo 4 - Call dispose of the TextEditingController when you’ve finished using it. This ensures that you discard any resources used by the object.





}
