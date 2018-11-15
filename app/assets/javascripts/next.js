$('body').on("click", ".btn-autonext", function(){
    autonext();
  });

function autonext(){
  var next = $("div.abc a:first-child");
  var link = next.attr("href");
  window.open(link, "_self");
  return false;
}
