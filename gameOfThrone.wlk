object daenerys{
    const total = 2
    const property artefactos = []
    var conteo = 0

    method encontrar(cosa){

        conteo += 1
        if (conteo <= total) {
            artefactos.add(cosa)
        }
    }

    method volverACasa(){

        artefactos.forEach({n => castillo.artefactos.add(n)})
        artefactos.clear()
        conteo = 0
    }
}
object castillo{
    const property artefactos = []

}
object espada{
    
}
object libro{
    
}
object collar{
    
}
object armadura{
    
}

