//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

class MyUserEntity{
  String userId;
  String email;
  String name;
  bool hasAciveCart;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasAciveCart,

  });

  Map<String, Object?> toDocument(){
    return{
      'userId': userId,
      'email': email,
      'name': name,
      'hasAciveCart': hasAciveCart,
      
    };

  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc){
    return MyUserEntity(
      userId: doc['userId'],
       email: doc['email'], 
       name: doc['name'], 
       hasAciveCart: doc['hasAciveCart']
       );
  }
}