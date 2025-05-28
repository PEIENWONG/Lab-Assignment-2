class Submission {
  String? id;
  String? workId;
  String? userId;
  String? submissionText;
  String? submittedAt;

  Submission({
    this.id,
    this.workId,
    this.userId,
    this.submissionText,
    this.submittedAt,
  });

  factory Submission.fromJson(Map<String, dynamic> json) {
    return Submission(
      id: json['id'],
      workId: json['work_id'],
      userId: json['user_id'],
      submissionText: json['submission_text'],
      submittedAt: json['submitted_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['work_id'] = workId;
    data['user_id'] = userId;
    data['submission_text'] = submissionText;
    data['submitted_at'] = submittedAt;
    return data;
  }
}