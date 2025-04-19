import 'package:flutter/material.dart';

/// Validates a name input by checking if it is non-null, non-empty, and
/// within the specified character length range.
/// 
/// Returns a validation error message if the input is invalid, otherwise
/// returns null.
/// 
/// - Parameters:
///   - value: The input value to validate.
/// 
/// - Returns: A string error message if validation fails, or null if the
///   input is valid.
dynamic validationsName(dynamic value) {
  if (value == null || value.trim().isEmpty) {
    return 'Name is required';
  }
  if (value.length < 2 || value.length > 20) {
    return 'Must be between 2 and 20 characters';
  }
  return null;
}

/// Validates a lastname input by ensuring it is non-null, non-empty, and
/// within the specified character length range of 2 to 20.
/// 
/// Returns a validation error message if the input is invalid, otherwise
/// returns null.
/// 
/// - Parameters:
///   - value: The input value to validate.
/// 
/// - Returns: A string error message if validation fails, or null if the
///   input is valid.
dynamic validationsLastname(dynamic value) {
  if (value == null || value.trim().isEmpty) {
    return 'Lastname is required';
  }
  if (value.length < 2 || value.length > 20) {
    return 'Must be between 2 and 20 characters';
  }
  return null;
}

/// Validates an email input by checking if it is non-null, non-empty, and
/// matches a standard email format.
/// 
/// Returns a validation error message if the input is invalid, otherwise
/// returns null.
/// 
/// - Parameters:
///   - value: The input value to validate.
/// 
/// - Returns: A string error message if validation fails, or null if the
///   input is valid.
dynamic validationsEmail(dynamic value) {
  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  if (value == null || value.trim().isEmpty) {
    return 'Email is required';
  }
  if (!emailRegex.hasMatch(value)) {
    return 'Invalid email';
  }
  return null;
}

/// Validates a password input by ensuring it is non-null, non-empty, and
/// within the specified character length range of 8 to 20.
/// 
/// Returns a validation error message if the input is invalid, otherwise
/// returns null.
/// 
/// - Parameters:
///   - value: The input value to validate.
/// 
/// - Returns: A string error message if validation fails, or null if the
///   input is valid.
dynamic validationsPassword(dynamic value) {
  if (value == null || value.isEmpty) {
    return 'Password is required';
  }
  if (value.length < 8 || value.length > 20) {
    return 'Must be between 8 and 20 characters';
  }
  return null;
}

/// Validates a confirm password input by checking if it is non-null, 
/// non-empty, and matches the password in the provided controller.
/// 
/// Returns a validation error message if the input is invalid, otherwise
/// returns null.
/// 
/// - Parameters:
///   - value: The input value to validate.
///   - passwordCtrl: The controller containing the original password.
/// 
/// - Returns: A string error message if validation fails, or null if the
///   input is valid.
dynamic validationsConfirmPassword(
  dynamic value,
  TextEditingController passwordCtrl,
) {
  if (value == null || value.isEmpty) {
    return 'Confirm password';
  }
  if (value != passwordCtrl.text) {
    return 'Passwords do not match';
  }
  return null;
}
