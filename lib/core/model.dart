class JobDesk {
  String title;
  String image;
  int count;

  JobDesk({required this.title, required this.image, required this.count});
}

class Freelancer {
  String name;
  String jobdesk;
  String location;
  String image;
  String overview;
  List<String> skills;
  List<String> portofolio;

  Freelancer(
      {required this.name,
      required this.jobdesk,
      required this.location,
      required this.image,
      required this.overview,
      required this.skills,
      required this.portofolio});
}
