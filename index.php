<?php
require_once 'headfoot/header.php';
?>
    
    <meta name="robots" content="noindex, nofollow" />
    <link href="jquery/ShowandHideForm/css/showhide.css" rel="stylesheet" type="text/css"/>
    <script src="jquery/ShowandHideForm/js/showhide.js"></script>
    <script>
    function login()
    {
 
        var name = $("#name").val();
        var email = $("#registeremail").val();
        var password = $("#registerpassword").val();
        var contact = $("#contact").val();

// Returns successful data submission message when the entered information is stored in database.
var dataString = 'name='+ name + '&registeremail='+ registeremail + '&registerpassword='+ registerpassword + '&contact='+ contact;
if(name==''||registeremail==''||registerpassword==''||contact=='')
{
	alert("Please Fill All Fields");
}
else
{
	//AJAX code to submit form.
	$.ajax({
			type: "POST",
			url: "ajax.php",
			data: dataString,
			cache: false,
			success: function(result)
                        {
			alert(result);
                        }
	});
}
return false;
});
});
    }
    </script>
    
        <div id="bodyBorder">
            
             <div id="mainlogin">
     <div id="first">
         <form action="" method="post">
          <h3>Login to your RentAntique account.</h3>
	  
		  <input type="text" id="loginemail" placeholder="Email" />
		  <input type="password" id="loginpassword" placeholder="Password" />
		  <input type="button" id="login" value="Sign In" onclick="login()" />
		  <p id="one"><a href="#">Forgot Password ?</a></p>
		  <p id="two">Don't have account? <a href="#" id="signup" class="signup">Sign up here</a></p>
		</form>	
	 </div>
	 
	
            <div id="second">
                <form action="" method="post" id="form">
                  <h3>Create a Free Account</h3>
                      <input type="text" id="name" placeholder="Full Name" />
                  <input type="text" id="registeremail" placeholder="Email" />
                      <input type="password" id="registerpassword" placeholder="Password" />
                      <input type="text" id="contact" placeholder="Contact Number" />
                      <input type="button" id="register" value="Register" />
                      <p id="two">Already have an account? <a href="#" id="signin" class="signin">Sign in</a></p>
                    </form>  
            </div>
	 </div> 
            
            <div id="topBanner">               
            </div>
            
            <div id="leftColoumn"></div>
            <div data-looper="go" id="looperWrap" class="looper xfade">
                <div class="looper-inner">
                 <div class="item">
                 <img src="img/buick.jpg" alt="">
                 </div>
                 <div class="item">
                <img src="img/car2.jpg" alt="">
                </div>
                <div class="item">
                <img src="img/car3.jpg" alt="">
                 </div>
                 </div>
                </div>
            <div id="midSection">
                <p>Welcome to our Antique Car Rental service<br/>here we give you the most cheapest prices on the market today<br/>
                together with our most valuable cars</p>
                <div id="bannerline">
                    <div id="square"></div>
               </div>
            </div>
        </div>        
<?php
require_once 'headfoot/footer.php';
?>
