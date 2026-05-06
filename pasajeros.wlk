object neo {

  var energia = 100

  method esElegido() {
    return
            true
  }

  method saltar() {
        energia = energia / 2
  }

  method vitalidad() {
    return
            energia * 0.1
  }
}

object morfeo {

  var vitalidad = 8
  var estaCansado = false

  method esElegido() {
    return
            false
  }

  method saltar() {
        estaCansado = !estaCansado
        vitalidad = vitalidad - 1
  }

  method vitalidad() {
    return 
            vitalidad
  }


}

object trynity {
    
    method esElegido() {
        return
                false
    }
    method vitalidad() {
        return
                0
    }

    method saltar() {}
    
}