class Filmes {
  late String Nome;
  late DateTime Data;
  late String diretor;
  late int Tempo;
  late double Nota;

  Filmes(){
    Nome = "";
    Data = DateTime.now();
    diretor = "";
    Tempo = 0;
    Nota = 0;
  }

  Filmes.v(this.Nome, this.Data, this.Nota, this.Tempo, this.diretor);

  Filmes.fromJson(Map<String, dynamic> json) :
  Nome = json['Nome'] as String,
  Data = json['Data'] as DateTime,
  diretor = json['Diretor'] as String,
  Tempo = json['Tempo'] as int,
  Nota = json['Nota'] as double;

  
}     