import ballerina/io;
 
distinct class Employee {
    
    function getKind() returns string {
        return "Employee";
    }
}
 
class Human {
    function getPlanet() returns string {
        return "Earth";
    }
}
 
type Person object {
    public int age;
    public string firstName;
    public string lastName;
 
    function getFullName() returns string;
 
    function checkAndModifyAge(int condition, int a) returns boolean;
};

distinct class Manager {
    *Employee;
    *Human;
    // *Person;
    function getKind() returns string {
        return "I am manager";
    }
    
    function getPlanet() returns string {
        return "managerHomeland";
    }
}
 
distinct class Bossman {
    *Employee;
    function getKind() returns string {
        return "I am big boss man";
    }
}
 
distinct class Pleb {
    *Employee;
    int age;
    
    function init(int age) {
        self.age = age;
    }
 
    function getKind() returns string {
        return "I am pleb";
    }
}
 
public function main() {
    Employee manager = new Manager();
    Employee bossman = new Bossman();
    Employee pleb = new Pleb(10);
 
    Employee[] employees = [manager, bossman, pleb];
 
    foreach Employee employee in employees {
        io:print(employee.getKind() + "\n");
    }
}