$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
  var selectElement = $('body')
 
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 $(".mascot").html("<h1> Testing.... Testing.... 1, 2, 3</h1>")

 $('h1').css({'color': 'green'})
 $('h1').css({'border': 'dotted'})
 $('h1').css({'visibility': 'visible'})

//RELEASE 3: Event Listener
  // Add the code for the event listener here 
 
    $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://www.thingiverse.com/thing:182099.jpg')
  })

  $('img').on('mouseleave', function(e){
     e.preventDefault()
    $(this).attr('src', 'dbc_logo.jpg')
  })
 
//RELEASE 4 : Experiment on your own
 
 
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
