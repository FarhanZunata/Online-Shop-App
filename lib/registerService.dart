import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterService{
  // TODO: Implement methods for registering users
  final BuildContext context;

  RegisterService(this.context);

  Future<void> registerUser(String username, String email, String password, String confirmPassword) async{
    const String url = 'http://10.0.2.2:3000/shop/register';

    if(username.isEmpty || email.isEmpty || confirmPassword.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('All form are required'),
          ),
      );
      return;
    }

    if(confirmPassword != password){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Passwords do not match'),
          ),
      );
      return;
    }

    final Map<String, String> body = {
      'username': username,
      'email': email,
      'password': password,
    };

    try{
      final response = await http.post(
        Uri.parse(url),
        headers:{"Content-Type": "application/json"},
        body: json.encode(body),
      );

      if(response.statusCode == 200){
        context.go('/emailConfirm');
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Failed to register'),
          )
        );
      }
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('An error occured: $e'),
        )
      );
    }
  }
}