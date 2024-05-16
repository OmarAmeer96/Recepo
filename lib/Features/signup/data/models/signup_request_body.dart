import 'package:json_annotation/json_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String email;
  final String phoneNumber;
  final String gender;
  final String password;
  final String confirmPassword;

  SignupRequestBody({
    required this.email,
    required this.password,
    required this.name,
    required this.phoneNumber,
    required this.gender,
    required this.confirmPassword,
  });

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
