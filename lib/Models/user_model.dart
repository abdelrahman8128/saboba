class UserModel {
  final String id;
  final String name;
  final String email;
  final String? photoUrl;
  final String? bio;
  final String? profession;
  final String? location;
  final DateTime joinedDate;
  final int completedJobs;
  final double rating;
  final int totalReviews;

  // New fields
  final String? educationLevel;
  final String? field;
  final String? role;
  final List<String> goals;
  final List<PortfolioItem> portfolio;
  final List<String> skills;
  final String? outcome;

  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.photoUrl,
    this.bio,
    this.profession,
    this.location,
    required this.joinedDate,
    this.completedJobs = 0,
    this.rating = 0.0,
    this.totalReviews = 0,
    this.educationLevel,
    this.field,
    this.role,
    this.goals = const [],
    this.portfolio = const [],
    this.skills = const [],
    this.outcome,
  });

  // Mock user data
  static UserModel get mockUser => UserModel(
    id: '1',
    name: 'Kenoz Omar',
    email: 'kenoz@saboba.com',
    photoUrl: null, // Will use avatar with initials
    bio: 'user_bio_description',
    profession: 'Full Stack Developer',
    location: 'Cairo, Egypt',
    joinedDate: DateTime(2023, 1, 15),
    completedJobs: 47,
    rating: 4.8,
    totalReviews: 35,
    educationLevel: 'university_student',
    field: 'business_media_studies',
    role: 'task_creator_role',
    goals: [
      'collect_student_articles',
      'manage_submissions',
      'build_teamwork_skills',
      'create_academic_portfolio',
    ],
    portfolio: [
      PortfolioItem(
        category: 'created_tasks',
        items: [
          'article_writing_assignments',
          'topic_selection_tasks',
          'research_based_writing_tasks',
        ],
      ),
    ],
    skills: [
      'content_planning',
      'communication',
      'basic_editing',
      'task_coordination',
    ],
    outcome: 'outcome_description',
  );
}

class PortfolioItem {
  final String category;
  final List<String> items;

  const PortfolioItem({required this.category, required this.items});
}
