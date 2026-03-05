import 'package:flutter/material.dart';
import 'package:flutter_notes/widget/custom_Container_button.dart';
import 'package:flutter_notes/widget/custom_textField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

//! Add form Field

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomTextFormField(
            hint: 'title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 20),
          CustomTextFormField(
            hint: "Content",
            maxLines: 8,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 80),
          CustomContainerButton(
onTap: (){
  if(formKey.currentState!.validate()){
  formKey.currentState!.save();

  }else{
    autovalidateMode = AutovalidateMode.always ;
    setState(() {
      
    });
  }
},

          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
