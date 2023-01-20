/// Anime entity
/// Entities should always be immutable (have only final fields)
/// Entities should carry the minimum information required by the business logic and UI layers to work
class Anime {
  final String id;
  final String? title;
  final String localizedLink;
  final String? cover;

  Anime({
    required this.id,
    required this.localizedLink,
    required this.title,
    required this.cover,
  });
}
