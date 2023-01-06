enum ValidateText {
  userName(20),
  email(64),
  pass(16),
  phoneNumber(9),
  texPlain(null);
  const ValidateText(this.long);
  final int? long;
}

// extension ValidateTextExtension on ValidateText {
//   int? get maxLength {
//     switch (this) {
//       case ValidateText.userName:
//         return 64;

//       case ValidateText.pass:
//         return 16;

//       case ValidateText.email:
//         return 64;

//       case ValidateText.phoneNumber:
//         return 15;

//       default:
//         return null;
//     }
//   }
// }
