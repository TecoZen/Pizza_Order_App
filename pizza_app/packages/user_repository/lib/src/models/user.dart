import 'package:firebase_auth/firebase_auth.dart';

import '../entities/entities.dart';

export 'user.dart';

class MyUser{
  String userId;
  String email;
  String name;
  bool hasAciveCart;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasAciveCart,
  });
  static final empty = MyUser(
    userId: '',
    email: '',
    name: '', 
    hasAciveCart: false,
    );

    MyUserEntity toEntity(){
      return MyUserEntity(
        userId: userId,
        email: email,
        name: name,
        hasAciveCart: hasAciveCart,

      );
    }

    static MyUser fromEntity(MyUserEntity entity){
      return MyUser(
        userId: entity.userId,
         email: entity.email,
          name: entity.name,
           hasAciveCart: entity.hasAciveCart
           );

    }

    @override
  String toString() {
    // TODO: implement toString
    return 'Myuser: $userId, $email, $name, $hasAciveCart';
  }
}