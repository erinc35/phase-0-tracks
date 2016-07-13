// split the string so we can iterate each character
// unshift each character so the first one goes to the end
function reverse(str){
  var chars = str.split("");
  var rev_chars = [];
  for(var i = 0; i < str.length; i ++) {
      if(typeof str == "string"){
      rev_chars.unshift(chars[i]);
      }
  }
  return rev_chars.join("")
}

reverse("hello")
