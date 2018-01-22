$(document).ready(function(){
	function myHandler(event) {
		alert(event.data.foo);
		}
	function myHandler1() {
		alert("ok");
		}
	
		$("p").on("click", {foo: "bar",fo:"b"}, myHandler);
		$(".b").click($(".d").val(),function(e){alert(e.data);});
		
		
		$.each( [0,1,2], function(i, n){
			  alert( "Item #" + i + ": " + n );
			});
		$.each( { name: "John", lang: "JS" }, function(i, n){
			  alert( "Name: " + i + ", Value: " + n );
			});
});