class RegisterWithEmailAndPasswordFailure {
  final String message;

  const RegisterWithEmailAndPasswordFailure(
      [this.message = "An Unknown error occured."]);

  factory RegisterWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const RegisterWithEmailAndPasswordFailure(
            "Tolong masukkan password yang kuat.");
      case 'email-already-in-use':
        return const RegisterWithEmailAndPasswordFailure(
            "Email sudah digunakan.");
      case 'invalid-email':
        return const RegisterWithEmailAndPasswordFailure(
            "Tolong masukkan email yang valid.");
      case 'operation-not-allowed':
        return const RegisterWithEmailAndPasswordFailure(
            "Operasi tidak diperbolehkan, tolong hubungi contact support kami.");
      case 'user-disabled':
        return const RegisterWithEmailAndPasswordFailure(
            "Pengguna dinonaktifkan, tolong hubungi contact support kami.");
      default:
        return const RegisterWithEmailAndPasswordFailure();
    }
  }
}
