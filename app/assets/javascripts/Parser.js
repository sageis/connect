function Parser(substring_id, put_info_here, start_string, end_string) {
  var obj = this;
  document.getElementById(put_info_here).innerHTML = "";
  var photo_array = new Array();

  var text;

  document.getElementById(substring_id).onkeyup = function() {
    var substring = document.getElementById(substring_id).value;
    console.log(substring);
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
      if (this.readyState == 4) {
        if (this.status == 200) {
          text = this.responseText;
          //console.log(text)
          console.log("hello");
          var start_data = text.match(start_string);
          var end_data = text.match(end_string);
          var relevant_substring = text.substring(start_data.index + 15, end_data.index);
          document.getElementById(put_info_here).innerHTML = relevant_substring;
          console.log("relevant substring: " + relevant_substring);
        }
        else {
          return;
        }
      }
    }
    xhr.open("GET", "/programs/search/" + document.getElementById(substring_id).value);
    xhr.send(); 
    console.log(document.getElementById(put_info_here));
    
    return false;
  }
}