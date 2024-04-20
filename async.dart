import 'dart:async';

class User {
  String name;
  int age;
  String role;

  //The class constructor
  User(this.name, this.age, this.role);

  Future getData() async {
    // Delay the execution of the method by 2 seconds
    await Future.delayed(Duration(seconds: 2));

    //The code that will be executed in the future
    print('The future is running...');
    print('The name is: $name');
    print('The age is: $age');
    print('The role is: $role');
  }
}

void main() async {
  //Show the begining of the program
  print('The begining of the program...');
  //Create new user
  User user = new User('Washington', 23, 'Developer');

  //display user data
  await user.getData();
}
