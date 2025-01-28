class Informacoes {
  double peso;
  double altura;
  String nome;

  Informacoes(this.peso, this.altura, this.nome);

  double calcularImc() {
    if (peso <= 0 || altura <= 0) {
      throw ArgumentError('Valores negativos não são aceitos');
    }

    return peso / (altura * altura);
  }

  String classificacaoImc(imc) {
    if (imc < 18.5) {
      return 'abaixo do peso';
    } else if (imc >= 18.5 && imc <= 24.9) {
      return 'peso adequado';
    } else if (imc >= 25 && imc <= 29.9) {
      return 'sobrepeso';
    } else if (imc >= 30 && imc <= 34.9) {
      return 'obesidade grau 1';
    } else if (imc >= 35 && imc <= 39.9) {
      return 'obesidade grau 2';
    } else {
      return 'obesidade grau 3';
    }
  }
}
