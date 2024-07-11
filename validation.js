$(function(){

		nameerr=false;
		mobileerr=false;
		emailerr=false;
		cityerr=false;
		usernameerr=false;
		passworderr=false;
		confirmpasserr=false;

		$("#nme").focusout(function(){

			nm=$("#nme").val();
			pattern=new RegExp(/[^a-zA-Z ]/);
			if(pattern.test(nm))
			{
			$("#err_nm").text("Invalid Name");
			$("#err_nm").show(1000);
			nameerr=true;
			}
			else
			{
			$("#err_nm").hide(1000);
			nameerr=false;
			}			
			});

		$("#mob").focusout(function(){


				mb=$("#mob").val();
				pattern=new RegExp(/[^0-9]/);
				pattern1=new RegExp(/^(7|8|9)/);
				//	alert(pattern1.test(mb)); 
				if(pattern.test(mb) || !pattern1.test(mb) || mb.length!=10)
				{
				$("#err_mb").text("Invalid Mobile");
				$("#err_mb").show(1000);
				mobileerr=true;
				}
				else
				{
				$("#err_mb").hide(1000);
				mobileerr=false;
				}			
				});

		$("#email").focusout(function(){

				em=$("#email").val();
				//		alert(em);
				pattern=new RegExp(/([\w-+]+(?:\.[\w-+]+)*@(?:[\w-]+\.)+[a-zA-Z]{2,7})/);
				//		alert(pattern.test(em));
				if(!pattern.test(em))
				{
				$("#err_email").text("Invalid Email");
				$("#err_email").show(1000);
				emailerr=true;
				}
				else
				{
				$("#err_email").hide(1000);
				emailerr=false;
				}			
				});

		$("#city").focusout(function(){

				ct=$("#city").val();
				pattern=new RegExp(/[^a-zA-Z ]/);
				if(pattern.test(ct))
				{
				$("#err_ct").text("Invalid City Name");
				$("#err_ct").show(1000);
				cityerr=true;
				}
				else
				{
				$("#err_ct").hide(1000);
				cityerr=false;
				}			
				});

		$("#un").focusout(function(){

				un=$("#un").val().length;
				if(un<5)
				{
				$("#err_un").text("Username should be minimum 5 characters long");
				$("#err_un").show(1000);
				usernameerr=true;
				}
				else
				{
				$("#err_un").hide(1000);
				usernameerr=false;
				}			
				});

		$("#upass").focusout(function(){

				up=$("#upass").val().length;
				if(un<15)
				{
				$("#err_ps").text("Password should be minimum 15 characters long and it contain one special symbol");
				$("#err_ps").show(1000);
				passworderr=true;
				}
				else
				{
				$("#err_ps").hide(1000);
				passworderr=false;
				}			
				});

		$("#ucpass").focusout(function(){

				up=$("#upass").val();
				ucp=$("#ucpass").val();


				if(up!=ucp)
				{
				$("#err_upass").text("Password doesnot Match");
				$("#err_upass").show(1000);
				confirmpasserr=true;
				}
				else
				{
				$("#err_upass").hide(1000);
				//$("#err_upass").text("Password Match");
				confirmpasserr=false;
				}			
				});

		$("#newuserform").submit(function() {

//			alert("In");
				if(nameerr==false && mobileerr==false && emailerr==false && cityerr==false && usernameerr==false && passworderr==false && confirmpasserr==false)
				{
				return true;
				}
				else
				{
				return false;
				}



				});

});
