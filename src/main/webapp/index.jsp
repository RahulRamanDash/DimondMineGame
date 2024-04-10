<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/files/favicon.ico">
    
    <link rel="icon" type="image/x-icon" href="data:;base64,iVBORw0KGgo=">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>Document</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        body {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            font-family: arial;
            background: #1A1B41;
            position: relative;
            text-align: center;
        }

        header {
            letter-spacing: 0.2em;
            text-align: center;
            padding: 20px 5px;
            color: whitesmoke;
        }

        /* modal box style */
        #modal {
            display: none;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            position: fixed;
            z-index: 10;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background: rgba(0, 0, 0, 0.5);
            text-align: center;
        }

        .modal-box {
            padding: 30px;
            margin: auto;
            width: 240px;
            background: whitesmoke;
            border-radius: 2px;
            text-align: center;
            box-shadow: 0 0 2px 3px rgba(0, 0, 0, 0.3);
        }

        .modal-box p {
            color: #2980b9;
            font-size: 24px;
            letter-spacing: 0.1em;
        }

        .play {
            width: 160px;
            margin: auto;
            padding: 10px;
            border: solid 1px #2980b9;
            border-radius: 2px;
            cursor: pointer;
        }

        .play:hover {
            color: whitesmoke;
            background: #2980b9;
        }

        /* table style */
        section {
            position: fixed;
            top: 25%;
            left: 50%;
            text-align: center;
        }

        /* mine head style */
         .mine-head {
            text-align: left;
            background: lime;
            padding: 5px;
            flex-grow: 1; /* Allow the mine-head to grow to fill remaining space */
        }

        .amount {
            line-height: 40px;
            width: 100px;
            text-align: left;
            padding-left: 5px;
            font-size: 20px;
            color: #333;
        }

        /* .smile {
            color: red;
            margin-top: 2.5px;
            text-align: center;
        }

        .time {
            line-height: 40px;
            width: 100px;
            text-align: right;
            padding-right: 5px;
            font-size: 20px;
            color: #333;
        } */

        /* mine body style */
        .mine-body {
            width: 350px;
            height: 350px;
            border-spacing: 8px;
            background: #1A1B41;
            padding: 5px;
        }
        
        td {
        	border-radius: 7px;
            background: #656686;
            width: 50px;
            height: 50px;
            cursor: pointer;
            text-align: center;
            color: #333;
            transition: transform 0.5s;
            margin: 5px;
            perspective: 1000px;
        }

		td:hover {
		    background-color: #494971;
		    transform: scale(1.1);
		}

        .box.flagged {
            background: #e74c3c !important;
            color: transparent;
            border-color: transparent;
        }

        /* fix bomb icon to take full width; to uncomment when fix found for click */
        .hidden {
            display: none !important;
        }

        .box-item {
            display: none;
            font-size:25px;
            color: lime;
            transform: scale(1.1);
        }
        .fa-bomb{
            color: red;        	
        }
        
        
		.top-navbar {
            position: fixed;
            top: 0;
            height: 70px;
            width: 100%;
            background-color: #494671; /* Purple background color */
            z-index: 100;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Adding shadow for depth */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .navbar {
            position: fixed;
            left: 50px;
            top: 76px;
            height: 100%;
            width: 350px;
            background-color: #494671; /* Purple background color */
            z-index: 100;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Adding shadow for depth */
        }
        
		 .input-set {
            text-align: left;
            color: white;
        }
        .input-set1 {
            display: flex;
            margin-top: 30px;
        }
        .second-input-div {
            margin-left: 10px;
        }

        .first-input {
            width: 150px;
            margin-bottom: 10px;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ddd; /* Gray border */
            border-radius: 4px;
            font-size: 16px;
        }
        .second-input {
            width: 100%;
            margin-bottom: 10px;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ddd; /* Gray border */
            border-radius: 4px;
            font-size: 16px;
        }
        
        .play-button {
            width: 100%;
            padding: 10px;
            background-color: #2980b9; /* Blue background color */
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        
        .play-button:hover {
            background-color: #2471a3; /* Darker blue on hover */
        }
        .wallet-button {
            height: 50px;
            padding: 10px;
            background-color: blue; /* Blue background color */
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
            margin-left: 10px;
        }
        
        .wallet-button:hover {
            background-color: #2471a3; /* Darker blue on hover */
        }

        .mine-head-div {
            display: flex;
            align-items: center; /* Align items vertically */
            justify-content: space-between;
            width: 100%;
            height: 60px;
        }
    </style>
</head>
<body>
    <div class="top-navbar">
        <header>
            <h1>MINESWEEPER</h1>
        </header>
        
    </div>
    
    
<h:form id="navForm">
<div class="navbar">
		<div class="mine-head-div">
                <div class="mine-head">
                   <span class="amount">Amount : <i class="fa fa-inr" aria-hidden="true"></i>5000</span>
                </div>
                <button class="wallet-button">Wallet</button>
        </div>

        <div class="input-set">
        <div class="input-set1">
            <div class="first-input-div">
                <p>Mine : </p>
                <h:inputText value="#{mine.mines}" styleClass="first-input"/>
            </div>
            <div class="second-input-div">
                <p>Diamond : </p>
                <h:inputText value="#{mine.diamonds}" styleClass="first-input"/>
            </div>
        </div>
            <div>
                <p>Bet Amount : </p>
                <h:inputText value="#{mine.billAmount}" styleClass="second-input"/>
            </div>
            <div>
            	<h:commandButton action="#{mineImpl.startGame()}" value="PLAY" styleClass="play-button"/>
            </div>
        </div>
    </div>
</h:form>
    
      <div id="modal">
        <div class="modal-box">
          <p class="msg">Hello !</p><br>
          <p class="play">PLAY</p>
        </div>
      </div>
      
<section>
 <h:dataTable styleClass="mine-body" value="#{mine.tableSize}" var="item">
		<h:column>				 
				<i id="diamond1_<h:outputText value="#{item}" />" class="fa fa-diamond box-item"></i>
		</h:column>
		<h:column>
				 <i id="diamond2_<h:outputText value="#{item}" />" class="fa fa-diamond box-item"></i>
		</h:column>
		<h:column>
				 <i id="diamond3_<h:outputText value="#{item}" />" class="fa fa-diamond box-item"></i>
		</h:column>
		<h:column>
				 <i id="diamond4_<h:outputText value="#{item}" />" class="fa fa-diamond box-item"></i>
		</h:column>
		<h:column>
				 <i id="diamond5_<h:outputText value="#{item}" />" class="fa fa-diamond box-item"></i>
		</h:column>
</h:dataTable>
</section>

<h:inputText id="bombPosition" value="#{mineLocation}" style="display: none;"/>

<audio id="effect1" src="files/ding-sound-effect_2.mp3"></audio>
<audio id="effect2" src="files/Bomb-Sound-Effect.mp3"></audio>
<audio id="effect3" src="files/nintendo-game-boy-startup.mp3"></audio>

<script>
        $(document).ready(function() {

        	var effect1 = $('#effect1')[0];
        	var effect2 = $('#effect2')[0];
            
			var bombPositionValue = $('#bombPosition').val();
            console.log(bombPositionValue);

            if (bombPositionValue) {
                $('#' + bombPositionValue).removeClass('fa-diamond').addClass('fa-bomb');
            }

            $("td").click(function() {
                var clickedTd = $(this);
                if (clickedTd.css('background-color') != 'rgba(0, 0, 0, 0.43)') {
                    var itemId = clickedTd.find('.box-item').attr('id');
                    console.log(itemId);
                    clickedTd.css({
                        'transition': 'background-color 0.5s ease, transform 0.5s ease',
                        'transform': 'rotateY(180deg)'
                    });

                    setTimeout(function() {
	                    $('#' + itemId).toggle();
                    }, 280);

                    if(bombPositionValue == itemId) {
                    	
/*                     	effect2.currentTime = 0;
	                	effect2.play();

	                	setTimeout(function() {
		                	effect2.pause();
	                    }, 3080); 
*/

	                    effect3.currentTime = 0;
	                	effect3.play();
	                    
                        $("td").each(function() {
                            if ($(this).css('background-color') != 'rgba(0, 0, 0, 0.43)') {
                                $(this).css({
                                    'background-color': 'rgba(101, 102, 134, 0.5)',
                                    'transition': 'background-color 1s ease, transform 1s ease',
                                    'transform': 'rotateY(360deg)'
                                });
                            }
                        });


                        setTimeout(function() {
                            $('.box-item').show();
                        }, 500);

                        $('.mine-body').css('pointer-events', 'none');
                    } else {
	                	effect1.currentTime = 0;
	                	effect1.play();
                    }

                    clickedTd.css('background-color', '#0000006e');
                    clickedTd.css('pointer-events', 'none');
                }
            });


/*             $('td').hover(function() {
                if ($(this).css('background-color') == 'rgba(0, 0, 0, 0.43)' ) {
                	 $(this).css('pointer-events', 'none');
                }
            }); 
*/

            
        });
</script>

</body>
</html>
</f:view>
