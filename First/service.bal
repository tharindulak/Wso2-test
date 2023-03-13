import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "First",
	id: "First-5f0c7ac0-4569-4670-a8a8-d1cfe48868e2"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
