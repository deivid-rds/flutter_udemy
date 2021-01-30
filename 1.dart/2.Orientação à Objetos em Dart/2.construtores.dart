class Pessoa {
  
  String nome;
  int idade;
  double altura;
  
  // Construtor padrão em outras linguagens
  /*
  Pessoa(String nome, int idade, double altura) {
    this.nome = nome;
    this.idade = idade;
    this.altura = altura;
  }
  */
  
  // Construtor do Dart é simplificado
  Pessoa(this.nome, this.idade, this.altura);
  
  // Outro tipo de construtor no Dart
  Pessoa.nascer(this.nome, this.altura) {
    idade = 0;
    print("$nome nasceu!");
    dormir();
  }
  
  void dormir() {
    print("$nome está dormindo!");
  }
  
  void aniver() {
    idade++;
  }
   
}

void main() {
  
  Pessoa pessoa1 = Pessoa("João", 30, 1.80);
  
  Pessoa pessoa2 = Pessoa("Thiago", 28, 1.90);
  
  print(pessoa1.nome);
  print(pessoa2.nome);
  
  print(pessoa1.idade);
  pessoa1.aniver();
  print(pessoa1.idade);
  
  pessoa2.dormir();
  
  Pessoa nene = Pessoa.nascer("Enzo", 0.30);
  print(nene.nome);
  print(nene.idade);
  
}