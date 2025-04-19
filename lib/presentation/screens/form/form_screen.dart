import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/form/validations/form_validations.dart';
import 'package:flutter_widgets/presentation/screens/form/widgets/terms_field/terms_field.dart';
import 'package:flutter_widgets/presentation/screens/form/widgets/text_field/text_field.dart';
import 'package:flutter_widgets/presentation/screens/snackbar/utils/snackbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateful widget that represents a form screen in the application.
///
/// This widget is responsible for creating the state of the form screen
/// and managing its lifecycle. It utilizes internal organization-specific
/// modules for form validations, text fields, and other UI components.
class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final _nameCtrl = TextEditingController();
  final _lastnameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _confirmPasswordCtrl = TextEditingController();

  bool _isTermsAccepted = false;
  bool _formValid = false;

  /// Validates the form by checking the current state of the form key.
  /// Updates the form's validity status based on the validation result
  /// and whether the terms are accepted.
  void _validateForm() {
    final isValid = _formKey.currentState?.validate() ?? false;
    setState(() => _formValid = isValid && _isTermsAccepted);
  }

  /// Handles changes to the terms acceptance state.
  ///
  /// Updates the `_isTermsAccepted` variable based on the provided [value].
  /// If [value] is null, it defaults to `false`. Also triggers form validation
  /// by calling `_validateForm()`.
  void _onChangedTerms(value) => setState(() {
    _isTermsAccepted = value ?? false;
    _validateForm();
  });

  /// Returns a function that displays a success snackbar if the form is valid.
  ///
  /// If the form is not valid, returns null.
  dynamic _onSave() =>
      _formValid
          ? () => SnackBarCustom.open(
            context,
            "¡User created!",
            SnackbarType.success,
          )
          : null;

  /// Disposes of the controllers and releases resources.
  ///
  /// This method is called when the object is removed from the widget tree
  /// permanently. It ensures that all controllers are properly disposed of
  /// to prevent memory leaks.
  @override
  void dispose() {
    _nameCtrl.dispose();
    _lastnameCtrl.dispose();
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    _confirmPasswordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: const AppBarCustom(title: "Form"),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          onChanged: _validateForm,
          child: Column(
            spacing: 16.0,
            children: [
              const SizedBox(),
              TextFieldCustom(
                name: "Name",
                controller: _nameCtrl,
                validations: validationsName,
              ),
              TextFieldCustom(
                name: "Lastname",
                controller: _lastnameCtrl,
                validations: validationsLastname,
              ),
              TextFieldCustom(
                name: "Email",
                keyboardType: TextInputType.emailAddress,
                controller: _emailCtrl,
                validations: validationsEmail,
              ),
              TextFieldCustom(
                name: "Password",
                obscureText: true,
                controller: _passwordCtrl,
                validations: validationsPassword,
              ),
              TextFieldCustom(
                name: "Confirm password",
                obscureText: true,
                controller: _confirmPasswordCtrl,
                validations:
                    (value) => validationsConfirmPassword(value, _passwordCtrl),
              ),
              TermsField(
                isTermsAccepted: _isTermsAccepted,
                onChanged: _onChangedTerms,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _onSave(),
                  child: const Text("Save"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
