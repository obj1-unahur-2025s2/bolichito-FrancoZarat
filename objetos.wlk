
//definimos colores
object rojo {
  method esFuerte() = true 
}

object verde {
  method esFuerte() = true
}

object pardo{
  method esFuerte() = false
}

object celeste {
  method esFuerte() = false
}

object naranja {
  method esFuerte() = true
}
//definimos meteriales

object cobre {
  method esBrillante()=true

}

object vidrio {
  method esBrillante()=true

}
object lino {
  method esBrillante()=false

}
object madera {
  method esBrillante()=false

}
object cuero{
  method esBrillante()=false

}
//definimos objetos "objetos"
/*
  - una _remera_ roja de lino, pesa 800 gramos.
  - una _pelota_ parda de cuero, pesa 1300 gramos.
  - una _biblioteca_ verde de madera, pesa 8000 gramos.
  - un _muñeco_ celeste de vidrio, de peso variable.
  - una _placa_ de cobre, de peso y color variables.
*/
object remera {
  method color() = rojo
  method material() = lino
  method peso() = 1200
}

object pelota {
  method color() = pardo
  method material()=cuero
  method peso()=1300
}

object biblioteca {
  method color()=verde
  method material()=madera
  method peso()=8000
}
object muñeco {
  method color()=celeste
  method material()=vidrio
  var peso = 10
  method peso()=peso
  method cambiarPeso(pesoNuevo) {
    peso=pesoNuevo
  }
}
object placa {
  method material()=cobre
  var peso=2001
  method peso()=peso
  method cambiarPeso(pesoNuevo) {
    peso=pesoNuevo
  }
  var color = rojo
  method color()=color
  method cambiarColor(colorNuevo) {
    color=colorNuevo
  }
  
}
object arito {
  method color() = celeste
  method material() = cobre
  method peso() = 180
}
object banquito {
  method material() = madera
  method peso() = 1700
  var color = naranja
  method color() = color
  method cambiarColor(nuevoColor) {
    color=nuevoColor
  }
}
object cajita {
  method color() = rojo
  method material() = cobre
  var objeto = banquito
  method cambiarObjeto(nuevoObjeto) {
    objeto = nuevoObjeto
  }
  method objeto() = objeto
  method peso() = 400 + objeto.peso()
}