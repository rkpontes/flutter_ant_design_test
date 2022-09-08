import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    this.textCapitalization = TextCapitalization.sentences,
    this.inputFormatters = const [],
    this.initialValue,
    this.labelText = '',
    this.errorText = '',
    this.hintText,
    this.prefix,
    this.keyboardType,
    this.controller,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.key,
    this.focusNode,
    this.maxLength,
    this.maxLines,
    this.autofocus = true,
    this.textInputAction,
    this.enabled = true,
    this.obscureText = false,
    this.textStyle,
    this.hintStyle,
    this.focusedBorderColor,
    this.enabledBorderColor,
    this.disabledBorderColor,
  });

  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization? textCapitalization;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Function(String?)? onChanged;
  final Function(String?)? onSaved;
  final String? initialValue;
  final String? labelText;
  final String? errorText;
  final Widget? suffixIcon;
  final String? hintText;
  final String? prefix;
  final FocusNode? focusNode;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final Color? disabledBorderColor;
  final int? maxLength;
  final int? maxLines;
  final bool? autofocus;
  final bool? enabled;
  final bool obscureText;
  @override
  final Key? key;

  @override
  Widget build(dynamic context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
      child: TextFormField(
        enabled: enabled,
        key: key,
        maxLines: maxLines ?? 1,
        maxLength: maxLength,
        cursorWidth: 1.0,
        focusNode: focusNode,
        controller: controller,
        initialValue: initialValue,
        inputFormatters: inputFormatters,
        textCapitalization: TextCapitalization.sentences,
        keyboardType: keyboardType,
        textInputAction: textInputAction ?? TextInputAction.done,
        obscureText: obscureText,
        style: textStyle,
        decoration: InputDecoration(
          prefix: Text(prefix ?? ''),
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: hintStyle,
          alignLabelWithHint: true,
          labelText: labelText,
          errorText: errorText == '' ? null : errorText,
          counterText: '',
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        onChanged: onChanged,
        onSaved: onSaved,
        autofocus: autofocus!,
        validator: validator,
      ),
    );
  }
}
