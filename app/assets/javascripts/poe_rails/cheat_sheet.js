var emoji_index = new Array();
function set_index(name) {
  emoji_index.push(name);
}

function set_name(name) {
  document.getElementById("emoji_name").value = ":" + name + ":";
}

$(document).ready(function(){
  $('#tooltip').poe_pallet();
});