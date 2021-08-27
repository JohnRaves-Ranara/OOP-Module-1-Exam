class Employee {
  String name;
  int _salary;
  
  void work(){
    print("Doing casual work...");
  }
  
  void receive13thMonthPay(){
    print("ez money Merry Christmas");
    _salary += 10000;
  }

  Employee(this.name, this._salary);
}

class averageWorker extends Employee{
  averageWorker(String name, int _salary) : super(name,_salary); 
}

class Manager extends Employee{
  @override
  void work(){
    super.work();
    print("Conducting a meeting with the team...");
  }
  Manager(String name, int _salary) : super(name,_salary); 
}

void main() {
  
  averageWorker worker1 = new averageWorker("Alan", 10000);
  Manager manager1 = new Manager("Pepito", 20000);
  
  worker1.work();
  worker1.receive13thMonthPay();
  print(worker1.name+"'s salary: "+worker1._salary.toString());
  
  print("");
    
  manager1.work();
  manager1.receive13thMonthPay();
  print(manager1.name+"'s salary: "+manager1._salary.toString());
  
}
