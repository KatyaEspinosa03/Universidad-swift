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
    
    mutating func students(){
        studentsArray.append(alumno1)
        studentsArray.append(alumno2)
        studentsArray.append(alumno3)
        studentsArray.append(alumno4)
    }
    
}


// datos de los alumnos

var alumno1 = Students(nombreCompleto: "Juan Garcia", edad: 18, grado: 3, salon: "A", promedioGeneral: 9.0)


var alumno2 = Students(nombreCompleto: "Karla Chavez", edad: 15, grado: 1, salon: "C", promedioGeneral: 7.5)

var alumno3 = Students(nombreCompleto: "Carlos Torres", edad: 16, grado: 2, salon: "A", telefono: 678795643, promedioGeneral: 8.0)

var alumno4 = Students(nombreCompleto: "Sonia Rodriguez", edad: 17, grado: 3, salon: "B", telefono: 559834565, promedioGeneral: 9.5)

print(Universidad(studentsArray: [alumno1]))
