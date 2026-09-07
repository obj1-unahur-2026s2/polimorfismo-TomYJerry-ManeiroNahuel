object tom {
    var energia = 50

    method energia()= energia
    method esFeliz() = energia>50
    method correr(metros) {
        energia= energia - metros/2
        }
    method comer(raton) {
        energia= energia + 12 + raton.peso()
        }
    method velocidadMaxima()= 5 + energia/10
    
    method puedeCazar(distancia) = energia > distancia / 2

    method cazar(raton, distancia) {
        if (self.puedeCazar(distancia)) {
            self.correr(distancia)
            self.comer(raton)
        }
    }
}

object jerry {
    var edad = 2
    method cumplirAnios() {
        edad=edad+1
        }
    method peso()= edad*20
    method edad() = edad

}

object nibbles {
 method peso() = 35
}

/* en este objeto el raton perez aumenta su peso segun cuantos
quesos coma, su peso es 50 , cada queso que come aumenta su peso una decima parte 
puede correr para escapar del gato tom y su peso vuelve a ser 50*/
object perez {
    var peso = 50

    method peso() = peso
    method comerQueso() {peso= peso + peso/10}
    method escaparDelGato(){ peso = 50}
}