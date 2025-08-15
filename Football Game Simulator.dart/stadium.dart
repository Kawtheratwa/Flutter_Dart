

class Stadium {
  String _name;
  String _location;
  int _capacity;
  String _weather; 
  String _Type; 


  // Constructor
  Stadium({

    required String name,
    required String location,
    int capacity = 5000, 
    String weather = "Sunny",
    String Type = "Grass",
  })  : _name = name,
        _location = location,
        _capacity = capacity,
        _weather = weather,
        _Type = Type;

  // Getters
  String get name => _name;
  String get location => _location;
  int get capacity => _capacity;
  String get weather => _weather;
  String get turfType => _Type;


  // Setters
  set name(String n) => _name = n;
  set location(String loc) => _location = loc;
  set capacity(int c) => _capacity = c;
  set weather(String w) => _weather = w;
  set turfType(String t) => _Type = t;



  // دالة لطباعة معلومات الملعب
  void displayInfo() {
    print("Stadium Name: $_name");
    print("Location: $_location");
    print("Capacity: $_capacity");
    print("Weather: $_weather");
    print("Turf Type: $_Type");
  }
}
