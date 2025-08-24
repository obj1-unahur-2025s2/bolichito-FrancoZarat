import objetos.*
object bolichito {
    var vidriera = pelota
    var mostrador = muñeco
    method cambiarVidriera(nuevoObjeto) {
        vidriera=nuevoObjeto
    }
    method cambiarMostrador(nuevoObjeto) {
        mostrador=nuevoObjeto
    }
    method esBrillante(){
        return vidriera.material().esBrillante() and mostrador.material().esBrillante()

    }
    method esMonocromo(){
        return vidriera.color() == mostrador.color()
    }
    method estaEquilibrado() {
        return vidriera.peso()<mostrador.peso()
    }
    method puedeMejorar() {
        return not self.estaEquilibrado() || self.esMonocromo()
    }
    method tieneDeColor(colorBuscado) {
        return vidriera.color()==colorBuscado || mostrador.color()== colorBuscado
    }
    method tieneAlgoQueGusteA(persona) {
        return persona.leGusta(vidriera)|| persona.leGusta(mostrador)
    }
}