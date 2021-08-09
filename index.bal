import ballerina/graphql;

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

    resource function get noOfTodos(int theNoOfTodos) returns int{
        return theNoOfTodos;
    }

    // function theNoOfTodos(){
    //     return noOfTodos(3)
    // }

}

