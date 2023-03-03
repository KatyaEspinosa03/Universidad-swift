import UIKit

// estructura de los alumnos

struct Students {
    var nombreCompleto: String
    var edad: Int
    var grado: Int
    var salon: String
    var telefono : Int?
    var promedioGeneral: Double
}

// estructura universidad

struct Universidad {
    
    var studentsArray:[Students] = []
    
    mutating func students(student: Students) {
        studentsArray.append(student)
        
    }
    
    mutating func removeStudents(student: Students){
        studentsArray.remove(at: 0)
    }
    
    /* func getStudentClass(student: Students) -> [Students] {

        let studentClass = studentsArray.map{$0.salon}
        
        } */
    
    
    }


var University = Universidad(studentsArray: [])

// datos de los alumnos

var alumno1 = Students(nombreCompleto: "Juan Garcia", edad: 18, grado: 3, salon: "A", promedioGeneral: 9.0)

University.students(student: alumno1)


var alumno2 = Students(nombreCompleto: "Karla Chavez", edad: 15, grado: 1, salon: "C", promedioGeneral: 7.5)

University.students(student: alumno2)

var alumno3 = Students(nombreCompleto: "Carlos Torres", edad: 16, grado: 2, salon: "A", telefono: 678795643, promedioGeneral: 8.0)

University.students(student: alumno3)

var alumno4 = Students(nombreCompleto: "Sonia Rodriguez", edad: 17, grado: 3, salon: "B", telefono: 559834565, promedioGeneral: 9.5)



University.removeStudents(student: alumno1)
//print(University.getStudentClass(student: alumno3))

print(University.studentsArray)

