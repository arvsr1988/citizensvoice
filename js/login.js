$(document).ready(function(){
	$("body").on("click", ".login", function(){
		login.displayLoginDialog($(this).prop("href"));
		return false;
		});
	});
	
var login = {
	displayLoginDialog : function(redirectPage){
		var redirectUrl = redirectPage;
		bootbox.prompt("Login with your email address", function(result) {                
		  if (result !== null && result !== "" && IsEmail(result)) {
			cookieUtils.setCookie(appConstants.loginCookie, result, 10);
			if(redirectUrl !== null && redirectUrl !== "" ){
				window.location.href=redirectUrl;
			}
		  } else {
			alert("Enter a valid email address");
			}
		});
	},
	getLoggedInUser : function(){
		return cookieUtils.getCookie(appConstants.loginCookie);
	}
	
}

function IsEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}
