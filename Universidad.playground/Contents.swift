import UIKit

// estructura de los alumnos

struct Students: Equatable {
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
        if  let index = studentsArray.firstIndex(of: student) {
            studentsArray.remove(at: index) }
    }
    
    // obtener el estudiante por salon
    
    func getStudent(salon: String) -> [Students] {
    
        var StudentClassArray:[Students] = []
        for student in studentsArray {
            
            if student.salon == salon {
                
                StudentClassArray.append(student)
                
            }
        }
        return StudentClassArray
    }
    
    }


var unam = Universidad(studentsArray: [])




// datos de los alumnos

var alumno1 = Students(nombreCompleto: "Juan Garcia", edad: 18, grado: 3, salon: "A", promedioGeneral: 9.0)

unam.students(student: alumno1)


var alumno2 = Students(nombreCompleto: "Karla Chavez", edad: 15, grado: 1, salon: "C", promedioGeneral: 7.5)

unam.students(student: alumno2)

var alumno3 = Students(nombreCompleto: "Carlos Torres", edad: 16, grado: 2, salon: "A", telefono: 678795643, promedioGeneral: 8.0)

unam.students(student: alumno3)

var alumno4 = Students(nombreCompleto: "Sonia Rodriguez", edad: 17, grado: 3, salon: "B", telefono: 559834565, promedioGeneral: 9.5)
unam.students(student: alumno4)

var alumno5 = Students(nombreCompleto: "Carlos Sanchez", edad: 16, grado: 2, salon: "B", telefono: 678795643, promedioGeneral: 8.0)

unam.students(student: alumno5)

var groupClassB = unam.getStudent(salon: "B")
var groupClassA = unam.getStudent(salon: "A")
var groupClassC = unam.getStudent(salon: "C")

unam.removeStudents(student: alumno1)
unam.removeStudents(student: alumno3)

print("Este es el grupo B con estos alumnos:\(groupClassB)")
print("Este es el grupo A con estos alumnos:\(groupClassA)")
print("Este es el grupo C con estos alumnos:\(groupClassC)")










