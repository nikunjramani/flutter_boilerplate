
import 'package:flutter/cupertino.dart';

import '../index.dart';


class TextFieldWidget extends StatefulWidget {
  final String? title;
  final String? helperText;
  final bool isSecure;
  final bool showErrorInRed;
  final bool showSuffixIcon;

  final int maxLength;
  final String? hint;
  final TextInputType? inputType;
  final String? initValue;
  final Widget? suffix;
  final Widget? prefix;
  final TextEditingController? textEditingController;
  final String? Function(String? value)? validator;
  final Function(String)? onTextChanged;
  final Function(String)? onSaved;
  List<TextInputFormatter>? inputFormatters;

  static const int MAX_LENGTH = 500;
  bool readOnly;

  TextFieldWidget({super.key,
    this.title,
    this.hint,
    this.helperText,
    this.inputType,
    this.initValue = "",
    this.isSecure = false,
    this.showErrorInRed= false,
    this.textEditingController,
    this.validator,
    this.maxLength = MAX_LENGTH,
    this.onTextChanged,
    this.onSaved,
    this.inputFormatters,
    this.suffix,
    this.prefix,
    this.showSuffixIcon=false,
    this.readOnly = false,
  });

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late bool _passwordVisibility;
  late ThemeData theme;

  final FocusNode _focusNode = FocusNode();

  late Color _borderColor;
  double _borderSize = 1;

  @override
  void initState() {

    _passwordVisibility = !widget.isSecure;
    // widget.textEditingController?.text = widget.initValue ?? "";

    _focusNode.addListener(() {
      setState(() {
        _borderSize = _focusNode.hasFocus ? 1.7 : 1;
      });
    });
    super.initState();

  }

  @override
  void didChangeDependencies() {
    theme = Theme.of(context);
    _borderColor = theme.dividerColor;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 64,
          decoration: BoxDecoration(
            border: Border.all(color: _borderColor, width: _borderSize),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: TextFormField(
            readOnly: widget.readOnly,
            focusNode: _focusNode,
            controller: widget.textEditingController,
            autocorrect: false,
            obscureText: !_passwordVisibility,
            keyboardType: widget.inputType,
            cursorColor: Colors.white,
            validator: (value) {
              String? f = widget.validator?.call(value);
              setState(() {
                _borderColor = f != null ? Theme.of(context).dividerColor : Theme.of(context).dividerColor;
              });
              return f;
            },
            style: theme.textTheme.bodyMedium,
            maxLength: widget.maxLength,
            inputFormatters: widget.inputFormatters,
            maxLines: 1,
            onChanged: (text) {
              widget.onTextChanged?.call(text);
              String? f = widget.validator?.call(text);

              if( text.trim().isNotEmpty){

                setState(() {
                  _borderColor = f != null ? widget.showErrorInRed?Colors.red:Theme.of(context).focusColor : Theme.of(context).dividerColor;
                });
              }else{
                setState(() {
                  _borderColor = Theme.of(context).dividerColor;
                });
              }
              if(text.trim().isEmpty){
                setState(() {
                  _borderColor = Theme.of(context).dividerColor ;
                  // _focusNode.unfocus();
                });
              }
            },
            decoration: InputDecoration(
              errorStyle: widget.showErrorInRed?const TextStyle(fontSize: 11.0, color: Colors.red,fontWeight: FontWeight.w400):theme.textTheme.labelSmall,
              counterText: "",
              hintStyle: theme.textTheme.labelMedium,
              floatingLabelStyle:  theme.textTheme.labelMedium,
              labelText: widget.title,
              errorMaxLines: 3,
              helperText: widget.helperText,
              contentPadding: EdgeInsets.zero,
                suffixIcon: getSuffixIcon(),
              border: InputBorder.none,
              errorText: _errorText
            ),
          ),
        )
      ],
    );
  }
  String? get _errorText {
    final text = widget.textEditingController!.value.text;
    String? f = widget.validator?.call(text);

    if( text.trim().isNotEmpty){

      // setState(() {
      //   _borderColor = f != null ? widget.showErrorInRed?Colors.red:Theme.of(context).focusColor : Theme.of(context).dividerColor;
      // });
      return f;
    }else{
      // setState(() {
      //   _borderColor = Theme.of(context).dividerColor;
      // });
      return null;
    }
  }

  Widget? getSuffixIcon() {
    return widget.showSuffixIcon ? getPasswordSuffixIcon() : widget.suffix;
  }

  Widget? getPasswordSuffixIcon() {
    return IconButton(
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      padding: EdgeInsets.zero,
      icon: _passwordVisibility ? const Icon(Icons.remove_red_eye_outlined,color: Colors.black,) : const Icon(CupertinoIcons.eye_slash,color: Colors.black,),
      color: Colors.white,
      onPressed: () {
        setState(() {
          _passwordVisibility = !_passwordVisibility;
        });
      },
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}