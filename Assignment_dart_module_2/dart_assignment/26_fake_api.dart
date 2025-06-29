import 'dart:async';

Future<Map<String, dynamic>> fetchUser(int userId) async {
  await Future.delayed(const Duration(seconds: 1)); 
  return {
    'userId': userId,
    'name': 'User $userId',
  };
}
Future<void> fetchUserData(List<int> userIds) async {
  List<Map<String, dynamic>> users = [];
  
  for (var id in userIds) {
    var user = await fetchUser(id); 
    users.add(user);
  }
  print('All users:');
  for (var user in users) {
    print('User ID: ${user['userId']}, Name: ${user['name']}');
  }
}
void main() async {
  await fetchUserData([1, 2, 3]);
}
