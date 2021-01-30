class Pessoa {
  
  /* Nem sempre podemos deixar um atributo ser acessado por fora do objeto,
     por exemplo, 'nene.idade = 18', por isso utilizamos Get e Set para limitar
     o acesso
  */

  String nome;
  int _idade;   /* Com o underline(_) estamos deixando claro que queremos que 
                   esse atributo seja usado apenas de dentro do objeto
                */
  double _altura;
  
  Pessoa(this.nome, this._idade, this._altura);
  
  Pessoa.nascer(this.nome, this._altura) {
    _idade = 0;
    print("$nome nasceu!");
    dormir();
  }
  
  void dormir() {
    print("$nome está dormindo!");
  }
  
  void aniver() {
    _idade++;
  }
  
  /* Get sem simplificação
  int get idade {
    return _idade;
  }
  */

  // Get com simplificação
  int get idade => _idade;
  
  /* Get sem simplificação
  int get altura {
    return _altura;
  }
  */

  // Get com simplificação
  double get altura => _altura;
  
  set altura(double altura){
    if(altura > 0.0 && altura < 3.0){
      _altura = altura;
    }
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
  
  nene.altura = 15.0;
  print(nene.altura);
  
}

