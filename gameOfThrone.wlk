object daenerys{
    const property artefactos = #{}
    var capacidad = 2
    const property historia = []

    method encontrar(cosa){
        
        self.bitacora(cosa)

        if (artefactos.size() < capacidad)
          artefactos.add(cosa)
    }

    method limpiar(){
        artefactos.clear()

    }
    method volverACasa(){
        castillo.dejarArtefactos()

    }
    method posesiones() {
        return self.artefactos() + castillo.artefactos() 
    }
    
    //method posee(artefacto) = self.posesiones().contains(artefacto)
    method posee(cosita) { 
        return artefactos.all({n => n == cosita})
    }

    method bitacora(cosas){
        historia.add(cosas)
    }
}
object castillo{
    const property artefactos = #{}

    method dejarArtefactos(){
        daenerys.artefactos().forEach({ n => artefactos.add(n)})
        artefactos.addAll(daenerys.artefactos())
        daenerys.limpiar()

        return 0
    }

    method agregarArtefactos(cosas){
        cosas.forEach({ n => artefactos.add(n)})
    }
}
object espada{
    
}
object libro{
    
}
object collar{
    
}
object armadura{
    
}

