class BirthdayList {
  List<Data>? data;
  String? message;

  BirthdayList({this.data, this.message});

  BirthdayList.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }

  Future<BirthdayList>? fromJson(Map<String, dynamic> jsonDecode) {}
}

class Data {
  int? id;
  String? name;
  String? firstName;
  String? lastName;
  String? profilePhoto;
  String? jobTitle;
  String? dob;
  String? description;
  User? user;

  Data(
      {this.id,
        this.name,
        this.firstName,
        this.lastName,
        this.profilePhoto,
        this.jobTitle,
        this.dob,
        this.description,
        this.user});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    profilePhoto = json['profile_photo'];
    jobTitle = json['job_title'];
    dob = json['dob'];
    description = json['description'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['profile_photo'] = this.profilePhoto;
    data['job_title'] = this.jobTitle;
    data['dob'] = this.dob;
    data['description'] = this.description;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? profilePhoto;
  String? firstName;
  String? lastName;
  String? email;
  String? countryCode;
  String? phone;
  String? jobTitle;
  String? address;
  String? alternativeAddress;
  String? alternativePhone;
  String? dob;
  String? doj;
  int? marriageStatus;
  String? marriageAnniversaryDate;
  String? skills;
  String? gender;
  String? skype;
  String? githubUsername;
  String? bitbucketUsername;

  User(
      {this.id,
        this.name,
        this.profilePhoto,
        this.firstName,
        this.lastName,
        this.email,
        this.countryCode,
        this.phone,
        this.jobTitle,
        this.address,
        this.alternativeAddress,
        this.alternativePhone,
        this.dob,
        this.doj,
        this.marriageStatus,
        this.marriageAnniversaryDate,
        this.skills,
        this.gender,
        this.skype,
        this.githubUsername,
        this.bitbucketUsername});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    profilePhoto = json['profile_photo'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    countryCode = json['country_code'];
    phone = json['phone'];
    jobTitle = json['job_title'];
    address = json['address'];
    alternativeAddress = json['alternative_address'];
    alternativePhone = json['alternative_phone'];
    dob = json['dob'];
    doj = json['doj'];
    marriageStatus = json['marriage_status'];
    marriageAnniversaryDate = json['marriage_anniversary_date'];
    skills = json['skills'];
    gender = json['gender'];
    skype = json['skype'];
    githubUsername = json['github_username'];
    bitbucketUsername = json['bitbucket_username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['profile_photo'] = this.profilePhoto;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['country_code'] = this.countryCode;
    data['phone'] = this.phone;
    data['job_title'] = this.jobTitle;
    data['address'] = this.address;
    data['alternative_address'] = this.alternativeAddress;
    data['alternative_phone'] = this.alternativePhone;
    data['dob'] = this.dob;
    data['doj'] = this.doj;
    data['marriage_status'] = this.marriageStatus;
    data['marriage_anniversary_date'] = this.marriageAnniversaryDate;
    data['skills'] = this.skills;
    data['gender'] = this.gender;
    data['skype'] = this.skype;
    data['github_username'] = this.githubUsername;
    data['bitbucket_username'] = this.bitbucketUsername;
    return data;
  }
}