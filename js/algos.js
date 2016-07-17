function longest_word(arr){
// create a variable that is assigned to an empty string, call it longest so it makes sense
	var longest = "";
	for(var i = 0; i < arr.length; i++ ){
//compare the lengths of each item as you iterate and assign to "longest" if they are longer than "longest", keep iterating until you compare all the items.

		if(arr[i].length > longest.length){
			longest = arr[i];
		}
	}
	return longest;
}

// creates 2 varibales so calling them as argument would be easier.

obj1 = {name: "S", age: 55, location: "New York"};
obj2 = {name: "T", age: 54, location: "Paris"};
//create obj1 and obj2 arrays by using Object.keys method
//we can iterate them
var keys1 = Object.keys(obj1);
var keys2 = Object.keys(obj2);
//we are assuming obj1 and obj2 has same amount of
//keys and values.
//iterate each array obj1 and obj2 to check if their
// values are equal.
function compare(obj1, obj2){
	for(var i = 0; i < keys1.length; i++ ){
		if(obj1[keys1[i]] === obj2[keys2[i]]){
			return true
		}

	}
	return false
}

function make_string(n){
	var arr = [];
	for(var j=0; j < n; j++) {
    	var text = "";
    	var letters = "abcdefghijklmnopqrstuvwxyz";

    	for( var i=0; i < Math.floor(Math.random() * 10) +1; i++ ){
    	    text += letters.charAt(Math.floor(Math.random() * letters.length));
    	    
			 }
			 arr.push(text)
	}
    return arr;
}

//DRIVER CODES

console.log(longest_word(["long phrase","longest phrase","longer phrase"]))
console.log(compare(obj1, obj2))

for(var i=0; i < 10; i++){
	var array=(make_string(4))
	console.log(array)
	console.log(longest_word(array))
}
