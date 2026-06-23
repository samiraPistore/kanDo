class Task {
  final String title;
  final String status; 

  Task({required this.title, required this.status});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      title: json['title'], 
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'status': status,
    };
  }
}