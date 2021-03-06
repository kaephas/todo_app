class Todo {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  // constructor with no id
  Todo (this._title, this._priority, this._date, [this._description]);
  // can't have another constructor so => named constructor with id parameter
  Todo.withId(this._id, this._title, this._priority,
      this._date, [this._description]);
// named constructor with "dynamic" object as parameter
  Todo.fromObject(dynamic o) {
    this._id = o["id"];
    this._title = o["title"];
    this._description = o["description"];
    this._priority = o["priority"];
    this._date = o["date"];
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  int get priority => _priority;

  set priority(int newPriority) {
    if(newPriority > 0 && newPriority <= 3) {
      _priority = newPriority;
    }
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  String get description => _description;

  set description(String newDescription) {
    if(newDescription.length <= 255) {
      _description = newDescription;
    }
  }

  String get title => _title;

  set title(String newTitle) {
    if(newTitle.length <= 255) {
      _title = newTitle;
    }
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["title"] = _title;
    map["description"] = _description;
    map["priority"] = _priority;
    map["date"] = _date;
    if(_id != null) {
      map["id"] = _id;
    }
    return map;
  }


}