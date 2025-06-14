class Pet {
  final String nome;
  final String raca;
  final int idade;
  final String foto;

  Pet({required this.nome, required this.raca, required this.idade, required this.foto});

  String getTextoIdade() => idade > 1 ? "$idade anos" : "$idade ano"; 
  
}