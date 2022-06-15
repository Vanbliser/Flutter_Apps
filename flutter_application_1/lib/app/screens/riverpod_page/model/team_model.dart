class TeamModel {
  double score;
  String label;
  void Function() goal, reset;

  TeamModel(
      {required this.goal,
      required this.label,
      required this.reset,
      required this.score});
}
