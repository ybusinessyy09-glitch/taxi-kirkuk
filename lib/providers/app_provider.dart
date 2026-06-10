import 'package:flutter/foundation.dart';

class AppProvider extends ChangeNotifier {
  bool _isLoading = false;
  String? _phoneNumber;
  String? _userName;

  bool get isLoading => _isLoading;
  String? get phoneNumber => _phoneNumber;
  String? get userName => _userName;
  bool get isLoggedIn => _phoneNumber != null;

  Future<bool> login(String phone, String password) async {
    if (phone.trim().isEmpty || password.trim().isEmpty) {
      return false;
    }

    _isLoading = true;
    notifyListeners();

    await Future<void>.delayed(const Duration(milliseconds: 600));

    _phoneNumber = phone.trim();
    _userName = 'مسافر';
    _isLoading = false;
    notifyListeners();
    return true;
  }

  void logout() {
    _phoneNumber = null;
    _userName = null;
    notifyListeners();
  }
}
