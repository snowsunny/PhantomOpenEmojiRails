//$ = jQuery

//pluginName = 'poe_pallet'
//defaults = version: 0.5

(function($) {
  $.fn.poe_pallet = function(emoji_index) {

    function create_pallet(emoji_index, path) {
      var parts_start = "<div>";
      var parts_end = "</div>";
      var pallet_html = parts_start;

      for (i = 0; i < emoji_index.length; i++) {
        pallet_html += "<input type='image' src='" + path + emoji_index[i] +
                       ".png' onclick='set_name(" + '"'+ emoji_index[i] + '"' + ")'>";
        if (i < emoji_index.size - 1) {
          pallet_html += parts_end;
        } else if (i % 10 == 9) {
          pallet_html += parts_end;
          pallet_html += parts_start;
        }
      }
      return pallet_html;
    }

    function set_pallet_element(pallet_html) {
      $('#tooltip').popover({
        trigger:'click',
        content:pallet_html
      })
    }

    var path = "/assets/poe/png20/";
    var pallet_html = "";

    pallet_html = create_pallet(emoji_index, path);
    set_pallet_element(pallet_html);
  }
})(jQuery)

$(document).ready(function(){
  $("#tooltip").poe_pallet(emoji_index);
});

var emoji_index = new Array()
function set_index(name) {
  emoji_index.push(name)
}

function set_name(name) {
  alert(name)
}