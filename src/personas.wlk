object olivia {
	var concentracion = 6
	
	method recibirMasajes(){
		concentracion +=3
	}
	
	method discutir(){
		concentracion=0.max(concentracion+1)
	}
	method gradoDeConcentracion(){
		return concentracion
	}
	
	method tomarBanoDeVapor(){ //defino para la correcta ejecución de Spa
		
	}
}

object bruno {
	var feliz=true
	var sed=false
	var peso=55//En kilos
	
	method recibirMasajes(){
		feliz=true
	}
	
	method tomarBanoDeVapor(){
		peso=0.max(peso-0.5)
		sed = true
	}
	
	method tomarAgua(){
		sed=false
	}
	
	method comerFideos(){
		peso+=0.25
		sed=true
	}
	
	method correr(){
		peso=0.max(peso-0.3)
	}
	
	method verNoticiero(){
		feliz=false
	}
	
	method estaPerfecto(){
		return feliz &&  (not sed) && peso.between(50,70)
	}
	
	method diaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	var contracturado = 0
	var pielGrasosa = false
	
	method recibirMasajes(){
		contracturado=0.max(contracturado-2)
	}
	
	method tomarBanoDeVapor(){
		pielGrasosa=false
	}
	
	method comerBigMac(){
		pielGrasosa=true
	}
	
	method bajarALaFosa(){
		pielGrasosa=true
		contracturado+=1
	}
	
	method jugarPaddle(){
		contracturado+=3
	}
	
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}
