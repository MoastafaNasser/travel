enum Season {
  Winter,
  spring,
  summer,
  autumn,
}

enum TripType {
  Exploration,
  Recovery,
  activities,
  therepy,
}

class Trip {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> activities;
  final List<String> programs;
  final int duration;
  final Season season;
  final TripType tripType;
  final bool isForFamilies;
  final bool isInSummer;
  final bool isInWinter;

  Trip({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.categories,
    required this.activities,
    required this.programs,
    required this.duration,
    required this.season,
    required this.tripType,
    required this.isForFamilies,
    required this.isInSummer,
    required this.isInWinter, required List<String> program,
  });
}
