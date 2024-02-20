import UIKit

/*
 Notice the keyword static in there, which means both the studentCount property and add() method belong to the School struct itself,
 rather than to individual instances of the struct.
 */

struct  School {
    // property
    static var studentCount = 0
    
    // method
    static func add(student: String) {
        print("Student: \(student), joined the School.")
        studentCount += 1
    }
}

School.add(student: "Omar Makran")
print(School.studentCount)

/*
 I haven’t created an instance of School – we can literally use add() and studentCount directly on the struct.
 This is because those are both static, which means they don’t exist uniquely on instances of the struct.
 */
