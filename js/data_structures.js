// an array of four colors

var colors = ["red", "blue", "yellow", "green"]

colors.push("orange") // one way to add an item
// colors[5] = "black" // another way to add an item


// an array of four names

var names = ["Erinc", "Dom", "Ondine", "Josh"]

names.push("Jane") // one way to add an item




function create_obj(arr1, arr2) {
	var obj = {};
	for(var i = 0; i < arr1.length; i ++) {
		obj[arr1[i]] = arr2[i];
	}
	return obj
}

create_obj(names, colors)

function Car(make, model, has_sunroof){
  console.log("Our new car:");
  this.make = make;
  this.model = model;
  this.has_sunroof = has_sunroof;

  this.honk = function() {console.log("Beep!"); };
  this.print = function() {
  	console.log("Make: " + this.make)
  	console.log("Model: " + this.model)
  	console.log("has_sunroof: " + this.has_sunroof)
	};
}
var new_car = new Car("Infiniti", "FX35", true);
new_car.honk();
new_car.print();
console.log("--------")
var second_car = new Car("Audi", "A4", true);
second_car.print()
