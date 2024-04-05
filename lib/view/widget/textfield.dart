import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hidetitle;

  const CustomTextField({
    super.key,
    required this.title,
    required this.hidetitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 25.0),
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green, width: 2),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF777A77), width: 1),
              ),
              border: OutlineInputBorder(),
              counterText: '',
              hintText: hidetitle,
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final String title;
  final String hidetitle;

  const PasswordTextField({
    super.key,
    required this.title,
    required this.hidetitle,
  });

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 25.0),
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            obscureText: _obscureText,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: widget.hidetitle,
              suffixIcon: InkWell(
                onTap: _togglePasswordVisibility,
                child: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Customphone extends StatelessWidget {
  final String title;
  final String hidetitle;

  const Customphone({
    super.key,
    required this.title,
    required this.hidetitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 25.0),
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 8),
          IntlPhoneField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            initialCountryCode: 'INA',
            inputFormatters: [
              FilteringTextInputFormatter
                  .digitsOnly, // Hanya menerima input angka
            ],
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          )
        ],
      ),
    );
  }
}
