<!doctype html>
 
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>jQuery UI Dialog - Modal confirmation</title>
  <link rel="stylesheet" href="jquery-ui.css" />
  <script src="js/jquery-1.9.1.js"></script>
  <script src="js/jquery-ui-1.10.3.custom.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css" />
  <style>
  .no-close .ui-dialog-titlebar-close {
  display: none;
}
  </style>
  <script>
  $(function() {
    $( "#dialog" ).dialog({
    	dialogClass: "no-close",
    	 autoOpen:false,
      resizable: false,
      height:210,
      width:350,
      modal: true,
      draggable: false,
      close: function(event, ui) { location.href = 'LoginController'; },
      buttons: {
        "Delete User": function() {
          $( this ).dialog( "close" );
        },
        Cancel: function() {
          $( this ).dialog( "close" );
        }
      }
    });
    $( "#opener" ).click(function() {
  	  $( "#dialog" ).dialog( "open" );
  	}); 
  });
  
  </script>
</head>
<body>
<button id="opener">Delete</button>
<div id="dialog" title="Delete User">Are you sure you want to remove the User?</div>
</body>
</html>