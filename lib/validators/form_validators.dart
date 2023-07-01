class FormValidators {
  String? validatorEmail(String? value) {
    if (value == null) {
      return "O E-mail não pode estar vazio";
    }
    if (value.length < 5) {
      return "O e-mail é muito curto";
    }
    if (!value.contains("@")) {
      return "O e-mail não é válido";
    }
    return null;
  }

  String? validatorName(String? value) {
    if (value == null) {
      return "O Nome não pode estar vazio";
    }
    if (value.length < 3) {
      return "O Nome é muito curto";
    }
    return null;
  }

  String? validatorPassword(String? value) {
    if (value == null) {
      return "A senha não pode estar vazio";
    }
    if (value.length < 3) {
      return "A senha é muito curto";
    }
    return null;
  }

  String? validatorNewPassword(String? value) {
    if (value == null) {
      return "A nova senha não pode estar vazio";
    }
    if (value.length < 3) {
      return "A nova senha é muito curto";
    }

    return null;
  }
}
