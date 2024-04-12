class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
     this.id,
    required this.todoText,
    this.isDone = false,
  });

  void toggleDone() {
    isDone = !isDone;
  }


  
}