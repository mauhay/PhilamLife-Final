<!DOCTYPE html5>
<html>

    <head><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0" />
        <title>Your PhilAm Life ChatPartner</title>        
    </head>
    <link href="BackGround01.css" rel="stylesheet" />
    <body  style="text-align:center;">
        <h1>Welcome to PhilAm Life Customer Service!</h1>
        </n>
        </n>
        <textarea readonly="true" id="botChat" style="text-align:left; 
        display:block; top:3vh; border:1px solid black; width:92.5vw; margin-left:1%; 
        margin-right:2.25%; height:75vh; resize:none; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; overflow-y:auto; 
        user-select:none; font-size:2vw;"></textarea>        
        <p style="position:absolute; border:1px solid black; top:85vh; left:12.25vw; width:75vw; height:35px">        
            <input type="text" placeholder="Ask a question" onKeypress="enterButton(event, document.getElementsByTagName('input')[0].value);" style="color:red; background-color:black; width:79%;">         
            <button onClick="answer(document.getElementsByTagName('input')[0].value)" style="height:35px; color:crimson">What's Your Concern?</button></p>        
            <script>

                var you = "Me";
                botSays("Hi! I'm Phil, your PhilAmLife Partner.\n\nType !name x where x = yourName to change your name.\nTo chat, click What's Your Concern Button\nType help for a hint\n")

                //tengeneng command
                var Hello = ["HI", "KOMUSTA"]
                var Goodbye = ["BYE", "SEE YA"]
                var Greeting = ["WHAT'S UP", "HOW'S IT GOING", "HOW ARE YOU", "NICE DAY", "GOOD MORNING", "GOOD NIGHT"]
                var Name = ["WHAT IS YOUR NAME", "WHAT'S YOUR NAME", "WHO ARE YOU", "WHAT DO THEY CALL YOU"]
                var Actions = ["HELP"]
                var Questions = ["QUESTION", "QUIZ", "ANSWER",];
                var Vitality = ["What is Vitality?", "Vitality?"];

                var Else = true;
                var questions = [Hello, Goodbye, Greeting, Name, Actions, Questions, Vitality];


                var reactions = [PhilHello, PhilGoodbye, PhilGreeting, PhilVitality];
                var PhilHello = ["Hello Peasant", "Komusta alipin"]
                var PhilGoodbye = ["BYE"]
                var PhilGreeting = ["WHAT'S UP", "HOW'S IT GOING", "HOW ARE YOU", "NICE TO SEE YOU", "GOOD MORNING", "WELCOME"]
                var PhilPleasant = ["Thanks.", "Good job.", "Cool.", "I see.", "Anyway."]
                var PhilVitality = ["Vitality is..."]

                function answer(x) {
                    var botOut = botChat.value;
                    document.getElementsByTagName("textarea")[0] = botChat
                    //RESPONSES//

                    document.getElementsByTagName("input")[0].value = ""
                    if (x.charAt(0).includes("!") === false) {
                        youSay(x); botChat.scrollTop = botChat.scrollHeight;
                    }
                    question = x.toUpperCase()
                    for (i = 0; i < 10; i++) {

                        //walang response si user                    
                        if (question === "" || null) {
                            setTimeout(function () { botSays("\nPhil : So,what do you want me to do?"); botChat.scrollTop = botChat.scrollHeight; }, 600);
                            return;
                        }
                        /*          COMMAND MENU RESPONSES         */
                        else if (question === "!MENU") {
                            botSays("\n\nPhil: The commands are !Name yourName"); botChat.scrollTop = botChat.scrollHeight;
                            return;

                        } else if (question.slice(0, 6).includes("!NAME ")) {
                            you = x.slice(6);
                            botSays("\n\nPhil: What's up " + you); botChat.scrollTop = botChat.scrollHeight;
                            return;
                        }


                        /* Questions, Answers and Responses */
                        if (question.includes(Goodbye[i])) {
                            Else = false;
                            setTimeout(botSays, 600, "\nPhil : See you arround and thankyou for choosing PhilAmLife!")
                        } else if (question.includes(Name[i])) {
                            Else = false; setTimeout(botSays, 600, "\nPhil : My name is Phil, your PhilAmLife Partner.")

                        }  else if (question.includes(Greeting[i])) {
                            Else = false; if (Greeting[i].includes("HOW") && Greeting[i].includes("YOU")) {
                                var reactHello = "How am I";
                                var reactGreeting = "I would say I am 40% complete."
                            }
                            else {
                                num = Math.ceil(Math.random() * 3)
                                var reactHello = PhilGreeting[num]
                                reactHello = reactHello.toLowerCase();
                                reactHello = reactHello.charAt(0).toUpperCase() + reactHello.slice(1);
                                var reactGreeting = "Same old. Getting coded mostly.";
                            }
                            var reactPleasant = PhilPleasant[num]
                            setTimeout(botSays, 600, "\nPhil : " + reactHello + ". " + reactGreeting + " " + reactPleasant)
                        } else if (question.includes(Hello[i])) {
                            var reactHello = Hello[i];
                            reactHello = reactHello.toLowerCase();
                            reactHello = reactHello.charAt(0).toUpperCase() + reactHello.slice(1);
                            var reactGreeting = "";
                            var reactPleasant = ""
                            Else = false;
                            setTimeout(botSays, 600, "\nPhil : " + reactHello + ".")
                        } else { }
                    } setTimeout(function () { if (Else === true) { botSays("\nPhil : I'm sorry but I didn't get what you said. Please try again!"); } }, 700); setTimeout(function () { Else = true; botChat.scrollTop = botChat.scrollHeight; }, 730)
                } function botSays(x) {
                    document.getElementsByTagName("textarea")[0].innerHTML += x;
                } function youSay(x) {
                    botSays("\n" + you + " \ : " + x)
                }
                function youDo(x) {
                    botSays("\n" + you + " " + x)
                } function enterButton(e, x) { if (e.keyCode == 13) { answer(x); } }    </script></body></html>