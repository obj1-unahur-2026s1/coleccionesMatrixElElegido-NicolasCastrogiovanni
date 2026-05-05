import pasajeros.*

object nave {
    
    const pasajeros = []

    method subirALaNave(unPasajero) {
      if(pasajeros.contain(unPasajero)) {
        self.error("el pasajero ya esta en la nave")
      }
        pasajeros.add(unPasajero)
    }

    method bajarseDeLaNave(unPasajero) {
        if(self.estaEnLaNave(unPasajero)) {
            pasajeros.remove(unPasajero)
        }

        self.error("el pasajero no esta en la nave")
    }

    method estaEnLaNave(unPasajero) {
        return
                pasajeros.contains(unPasajero)
    }

    method cuantoPasajerosHay() {
      return
            pasajeros.size()
    }

    method pasajeroDeMasVitalidad() {
      return
            pasajeros.max({c => c.vitalidad()})
    }

    method siElegidoEstaEnLaNave() {
      return
            pasajeros.any({c => c.esElegido()})
    }

    method chocar() {
            pasajeros.forEach({c => c.bajarseDeLaNave()})
            pasajeros.clear()
    }
}