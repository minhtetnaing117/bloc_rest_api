import 'package:bloc_rest_api/bloc/post/cubit/post_contact_cubit.dart';
import 'package:bloc_rest_api/module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostContactCubit>(
      create: (context) => PostContactCubit(getIt.call()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add Screen'),
        ),
        body: BlocBuilder<PostContactCubit, PostContactState>(
          builder: (context, state) {
            return ContactForm();
          },
        ),
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  late String _name, _age, _job;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          TextFormField(
            decoration: const InputDecoration(border: OutlineInputBorder(),
            hintText: 'Enter Name'),
            validator: (value){
              if (value == null || value.isEmpty) {
                return 'Please Enter Name';
              }
              return null;
            },
            onSaved: (value) {
              _name = value!;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(border: OutlineInputBorder(),
            hintText: 'Enter Age'),
            validator: (value){
              if (value == null || value.isEmpty) {
                return 'Please Enter Age';
              }
              return null;
            },
            onSaved: (value) {
              _age = value!;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(border: OutlineInputBorder(),
            hintText: 'Enter Job'),
            validator: (value){
              if (value == null || value.isEmpty) {
                return 'Please Enter Job';
              }
              return null;
            },
            onSaved: (value) {
              _job = value!;
            },
          ),

          SizedBox(height: 10),
          OutlinedButton(onPressed: () { 

           },child: Text('Add Contact'),)
        ],
      ),
    );
  }
}
