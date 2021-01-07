abstract class IAuthRepository {
  Future getUser();
  Future getGoogleLogin();
  Future getFacebookLogin();
  Future getEmailPassowrdLogin();
  Future<String> getToken();
}
