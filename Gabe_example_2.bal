import ballerina/io;
//Abstract type
type Person object {
    public int age;
    public string firstName;
    public string lastName;
 
    function getFullName() returns string;
 
    function checkAndModifyAge(int condition, int a) returns boolean;
};
 
var personOne = object Person {    
    function init(){
        self.age = 10;
        self.firstName = "mary";
        self.lastName = "jane";
    }
 
    function getFullName() returns string {
        return " test";
    }
 
    function checkAndModifyAge(int condition, int a) returns boolean { 
        return false;
    }
};
 
var testPersonCustom = object Person {
    function init(){
        self.age = 10;
        self.firstName = "mary";
        self.lastName = "jane";
    }
 
    function getFullName() returns string {
        return "test person custom";
    }
 
    function checkAndModifyAge(int condition, int a) returns boolean { 
        return false;
    }
 
    function testingOwnStuff() returns string {
        return "this is my own method";
    }
};
 
public function main() {
    Person p = testPersonCustom;
    io:print(testPersonCustom.testingOwnStuff());
    io:print(p.getFullName());
}

public class Test {
    public int age;
    public string firstName;
    public string lastName;
 
    function init(int age, string firstName, string lastName){
        self.age = age;
        self.firstName = firstName;
        self.lastName = lastName;
    }
 
    public function getFullName() returns string {
        return "hello";
    }
 
    public function checkAndModifyAge(int condition, int a) returns boolean{
        return (condition == a) ? true : false;
    }
}
 
// public function main() {
//     Test test = new Test(5, "John", "doe");
//     Person p = <Person> test;
// }