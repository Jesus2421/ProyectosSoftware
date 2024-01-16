// Progremación dedicada objetos

function carro(){
	var self= this;
	self._color = "Azul";
	self._puertas = 5;
	self._velocidad = 210;
	
   carro.prototype.color = function(color){
	   if (color == undefined){
		   self._color = self._color
	   }
	   else {
		   self._color = color;
	   }
	   return self._color;
   }
   carro.prototype.puertas = function(puertas){
	      if (puertas == undefined){
		   self._puertas = self._puertas
	   }
	   else {
		   self._puertas = puertas;
	   }
	   return self._puertas;
   }
      carro.prototype.velocidad = function(velocidad){
	      if (velocidad == undefined){
		   self._velocidad = self._velocidad
	   }
	   else {
		   self._velocidad = velocidad;
	   }
	   return self._velocidad;
   }
   carro.prototype.ruedas = function(ruedas) {
	   var ruedas=4;
       return ruedas;	   
   }
}