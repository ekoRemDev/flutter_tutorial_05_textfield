import 'package:flutter/material.dart';

// TODO 01 - Create a TextEditingController
// TODO 02 - Supply the TextEditingController to a TextField
// TODO 03 - Connect controller to textfield


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        // TODO: implement build
        return MaterialApp(title: 'Input Tex',
            home: MyCustomForm(),);
    }

}


// Todo 01-1 Define a Custom Widget
class MyCustomForm extends StatefulWidget {
    @override
    _MyCustomFormState createState() => _MyCustomFormState();
}


//  Todo 01-2 - Create a corresponding class for Custom Widget
class _MyCustomFormState extends State<MyCustomForm> {


    // Todo 01-3 - Create a textController and use it to retrieve the current value
    final myController = TextEditingController();


    // Todo 01-4 - Call dispose of the TextEditingController when you’ve finished using it. This ensures that you discard any resources used by the object.
    @override
    void dispose() {
        myController.dispose();
        super.dispose();
    }

    // Todo 02-1 Create Widget
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Retrieve Text Input'),
            ),
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                    controller: myController, // Todo 03 - 1 connect controller to textfield
                ),
            ),
            floatingActionButton: FloatingActionButton(
                // When the user presses the button, show an alert dialog containing
                // the text that the user has entered into the text field.
                onPressed: () {
                    return showDialog(
                        context: context,
                        builder: (context) {
                            return AlertDialog(
                                // Retrieve the text the that user has entered by using the
                                // TextEditingController.
                                content: Text(myController.text),
                            );
                        },
                    );
                },
                tooltip: 'Show me the value!',
                child: Icon(Icons.text_fields),
            ),
        );
    }


}
