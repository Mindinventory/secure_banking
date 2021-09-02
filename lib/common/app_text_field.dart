import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constant/font_style.dart';

class AppTextField extends StatelessWidget {
  AppTextField({
    this.placeholder = '',
    this.value = '',
    this.isDropDown = false,
    this.onTextChange,
    this.onTapDropDown,
    this.inputFormatter,
    this.maxLength,
    this.isReadOnly = false,
    this.onSaved,
    Key? key,
  }) : super(key: key);

  final Function(String)? onTextChange;
  final VoidCallback? onTapDropDown;
  final String placeholder;
  final String value;
  final bool isDropDown;
  final List<TextInputFormatter>? inputFormatter;
  final int? maxLength;
  final bool isReadOnly;
  final Function(String)? onSaved;

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _searchController.text = value;
    return Container(
      height: 40,
      child: getTextField(),
    );
  }

  Widget getTextField() {
    var _isReadOnly = isReadOnly;
    if (isDropDown) {
      _isReadOnly = true;
    }
    return TextFormField(
      controller: _searchController,
      keyboardType: TextInputType.multiline,
      maxLines: 1,
      autofocus: false,
      readOnly: _isReadOnly,
      maxLength: maxLength,
      style: AppFontStyle.textFiledNormal(),
      inputFormatters: inputFormatter,
      onChanged: onTextChange,
      textInputAction: TextInputAction.next,
      onSaved: (String? value) {
        onSaved!(value!);
      },
      decoration: InputDecoration(
        counterText: '',
        focusColor: Colors.white,
        hoverColor: Colors.white,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0),
          borderRadius: BorderRadius.all(
            Radius.circular(2.0),
          ),
        ),
        filled: true,
        hintText: '',
        hintStyle: AppFontStyle.textFiledNormal(color: Colors.grey),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0),
          borderRadius: BorderRadius.all(
            Radius.circular(2.0),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0),
          borderRadius: BorderRadius.all(
            Radius.circular(2.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0),
          borderRadius: BorderRadius.all(
            Radius.circular(2.0),
          ),
        ),
        suffixIcon: isDropDown
            ? const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
                size: 30,
              )
            : null,
      ),
    );
  }
}
