class VideoRoomListParticipantsResponse {
  VideoRoomListParticipantsResponse({
      this.videoroom, 
      this.room, 
      this.participants,});

  VideoRoomListParticipantsResponse.fromJson(dynamic json) {
    videoroom = json['videoroom'];
    room = json['room'];
    if (json['participants'] != null) {
      participants = [];
      json['participants'].forEach((v) {
        participants?.add(Participants.fromJson(v));
      });
    }
  }
  String? videoroom;
  int? room;
  List<Participants>? participants;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['videoroom'] = videoroom;
    map['room'] = room;
    if (participants != null) {
      map['participants'] = participants?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Participants {
  Participants({
      this.id, 
      this.display, 
      this.publisher, 
      this.talking,});

  Participants.fromJson(dynamic json) {
    id = json['id'];
    display = json['display'];
    publisher = json['publisher'];
    talking = json['talking'];
  }
  int? id;
  String? display;
  String? publisher;
  bool? talking;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['display'] = display;
    map['publisher'] = publisher;
    map['talking'] = talking;
    return map;
  }

}