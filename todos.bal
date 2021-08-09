import ballerina/graphql;
import ballerina/io;

service /graphql on new graphql:Listener(4000) {

    // This function will return the below string + whatever name is specified in the 'curl' command for example:
    // curl -X POST -H "Content-type: application/json" -d '{ "query": "{ greeting(name: \"logan\") }" }' 'http://localhost:4000/graphql'
    // Will output {"data":{"greeting":"Hello, logan"}}%

    // resource function get greeting(string name) returns string {

    //     return string `Hello, ${name}`;
    // }

    resource function get todos(string todoOne, string todoTwo, string todoThree) returns string{
        return string `I must ${todoOne}, I must also ${todoTwo}, Finally I must ${todoThree} `;
    }

    resource function get noOfTodos(int theTodos) returns int{
        return theTodos;
    }

    resource function get countTodos(int theTodos) returns int{
        return theTodos;
    }

}

    type Todos record {
     string todoOne;
     string todoTwo;
     string todoThree;
     int countTheTodos;
    };

     function countingTheTodos() {
        Todos theTodo = {todoOne:"", todoTwo: "", todoThree: "", countTheTodos: 0};
        io:println(theTodo.todoOne);
        
    }









