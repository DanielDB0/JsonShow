class Filmes {
  late String Nome;
  late DateTime Data;
  late String Diretor;
  late int Tempo;
  late double Nota;

  Filmes(){
    Nome = "";
    Data = DateTime.now();
    Diretor = "";
    Tempo = 0;
    Nota = 0;
  }

  Filmes.v(this.Nome, this.Data, this.Nota, this.Tempo, this.Diretor);

  Filmes.fromJson(Map<String, dynamic> json) :
  Nome = json['Nome'] as String,
  Data = Filmes.tratarData(json['Data']),
  Diretor = json['Diretor'] as String,
  Tempo = json['Tempo'] as int,
  Nota = json['Nota'] as double;

  Map<String, dynamic> toJson() => {
        'Nome': Nome,
        'Data': Data,
        'Diretor': Diretor,
        'Tempo': Tempo,
        'Nota': Nota,
      };

  static DateTime tratarData(String dt)
  {
    final d = dt.toString().split('/');

    final ano = d[0].isEmpty?2000:d[0];
    final mes = d[1].isEmpty?01:d[1];
    final dia = d[2].isEmpty?01:d[2];
    return DateTime(int.parse(ano.toString()),int.parse(mes.toString()), int.parse(dia.toString()));
}
}     