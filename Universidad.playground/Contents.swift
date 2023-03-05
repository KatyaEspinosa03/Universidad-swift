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
    
    // agregar estudiantes
    mutating func students(student: Students) {
        studentsArray.append(student)
        
    }
    
    // eliminar estudiantes
    
    mutating func removeStudents(student: Students){
        studentsArray.remove(at: 0)
    }
    
    // obtener el salon del estudiante
    
    func getStudentClass(student: Students) -> [String] {

        let studentClass = studentsArray.map{_ in student.salon}
        
        return studentClass
        }
    
    
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
University.students(student: alumno4)



University.removeStudents(student: alumno1)

University.getStudentClass(student: alumno3)





