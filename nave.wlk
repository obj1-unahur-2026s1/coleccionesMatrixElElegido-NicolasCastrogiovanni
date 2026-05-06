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

    method estaEquilibradaEnVitalidad() {
      return
            self.pasajeroDeMasVitalidad().vitalidad() <= self.pasajeroDeMenorVitalidad().vitalidad() * 2
    }

    method pasajeroDeMenorVitalidad() {
      return
            pasajeros.min({c => c.vitalidad()})
    }

    method saltan(unaLista) {
      unaLista.forEach({c => c.saltar()})
    }

    method laNaveAcelera() {
            self.saltan(self.noElegidos())
    }

    method noElegidos() {
        return
              pasajeros.filter({c => not c.esElegido()})
    }

    method vitalidadesDePasajeros() {
      return
            pasajeros.map({p => p.vitalidad()})
    }

    method ordenarVitalidadesDeMenorAMayor() {
      return
            pasajeros.sortBy({
              p1,p2 => 
              p1.vitalidad() < p2.vitalidad()
            })
    }

    method cantidadElegidosEnLaNave() {
      return
            pasajeros.count({p => p.esElegido()})
    }
}