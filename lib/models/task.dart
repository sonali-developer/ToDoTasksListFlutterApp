class Task {
  final String taskName;
  bool isDone = false;

  Task(this.taskName, this.isDone);

  void toggleDone() {
    this.isDone = !isDone;
  }
}
