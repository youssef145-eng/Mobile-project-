
import 'package:my_project/DB/db_sql_lite.dart';

class AuthRepository {
  final db_sql_lite _dbHelper;

  AuthRepository(this._dbHelper);

  Future<Map<String, dynamic>?> login(String email, String password) async {
    final result = await _dbHelper.read_data('''
      SELECT * FROM Accounts WHERE email = ? AND password = ?
    ''', [email, password]);
    if (result.isNotEmpty) {
      return result.first;
    }
    return null;
  }
}
