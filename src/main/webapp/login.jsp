<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SignIn</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <style>
    	@import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;700&display=swap');

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Quicksand', sans-serif;
}

body {
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: #000;
}

section{
    position: absolute;
    width: 100vw;
    height: 100vh;
    display: flex;
    justify-content:center;
    align-items:center;
    gap: 2px;
    flex-wrap: wrap;
    overflow: hidden;
}

@keyframes animate{
    0%{
        transform: translateY(-100%);
    }
    1000% {
        transform: translateY(100%);
    }
}

section .signin{
    position: absolute;
    width: 400px;
    background: #222;
    z-index: 1000;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 40px;
    border-radius: 4px;
    box-shadow: 0 15px 35px rgba(0,0,0,0.5);
}

section .signin .content{
    position: relative;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    gap: 40px;
}

section .signin .content h2{
    font-size: 2em;
    color: #0f0;
    text-transform: uppercase;
}

section .signin .content .form{
    width: 100%;
    display: flex;
    flex-direction: column;
    gap: 25px;
}

section .signin .content .form .inputBx{
    position: relative;
    width: 100%;
}

section .signin .content .form .inputBx input{
    position: relative;
    width: 100%;
    background: #333;
    border: none;
    outline: none;
    padding: 25px 10px 7.5px;
    border-radius: 4px;
    color: #fff;
    font-weight: 500;
    font-size: 1em;
}

/* section .signin .content .form .inputBx i{
    position: absolute;
    left: 0;
    padding: 15px 10px;
    font-style: normal;
    color: #aaa;
    transition: 0.5s;
    pointer-events: none;

}

.signin .content .inputBx input:focus ~ i,
section .signin .content .form .inputBx input:not([value='']) ~ i {
    transform: translateY(-7.5px); 
    font-size: 0.8em;
    color: #fff;
} 
*/


/* Adjust placeholder styling */
.signin .content .form .inputBx i {
    position: absolute;
    left: 10px; /* Adjust the position to align with input field */
    padding: 15px 0; /* Adjust padding for better alignment */
    font-style: normal;
    color: #aaa;
    transition: 0.5s;
    pointer-events: none;
    transform-origin: left top; /* Set transform origin to top left */
}




.signin .content .form .links{
    position: relative;
    width: 100%;
    display: flex;
    justify-content: space-between;
}

.signin .content .form .links a{
    color: #fff;
    text-decoration: none;
}

.signin .content .form .links a:nth-child(2){
    color: #0f0;
    font-weight: 600;
}

section .signin .content .form .inputBx input[type="submit"]{
    padding: 10px;
    background: #0f0;
    color: #111;
    font-weight: 600;
    font-size: 1.25em;
    letter-spacing: 0.05em;
    cursor: pointer;
}
.message {
	color: white;
}
    </style>
    
    
<script>
    $(document).ready(function() {
        // Check for focus on all input fields within elements with class 'inputBx'
        $('.inputBx input').on('focus', function() {
            // Style the placeholder when the input field is focused
            $(this).siblings('i').css({
                transform: 'translateY(-7.5px)',
                fontSize: '0.8em',
                color: '#fff'
            });
        }).on('blur', function() {
            // Reset the placeholder styling when the input field loses focus
            if (!$(this).val()) {
                $(this).siblings('i').css({
                    transform: '',
                    fontSize: '',
                    color: ''
                });
            }
        });
    });
</script>


</head>
<body>
<h:form id="form">
    <section>
        <div class="signin">
            <div class="content">
                <h2>Sign In</h2>
                    <h:message styleClass="message" for="login"/>
                <div class="form">
                    <div class="inputBx">
                        <h:inputText value="#{user.username}" autocomplete="off" />
                        <i>Username</i>
                    </div>
                    <div class="inputBx">
                        <h:inputSecret value="#{user.password}" />
                        <i>Password</i>
                    </div>
                    <div class="links">
                        <a href="#">Forgot Password</a>
                        <a href="register.jsf">Sign up</a>
                    </div>
                    <div class="inputBx">
                    	<h:commandButton id="login" action="#{loginImpl.authenticate(user)}" value="Login" />
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
</h:form>
</body>
</html>
</f:view>