$(document).ready(function () {
    var userChoice;
    var win = 0;
    var lose = 0;
    var tie = 0;
    $("#scissors").click(function () { 
        $("#showUserChoice").html("<img src=剪刀.jpg class=mx-auto d-block alt=剪刀>");
        userChoice = 1;
        judgment(userChoice,computerChoice());
    });
    $("#stone").click(function () { 
        $("#showUserChoice").html("<img src=石頭.jpg class=mx-auto d-block id=stone alt=石頭>");
        userChoice = 2;
        judgment(userChoice,computerChoice());
    });
    $("#paper").click(function () { 
        $("#showUserChoice").html("<img src=布.jpg class=mx-auto d-block id=paper alt=布>");
        userChoice = 3;
        judgment(userChoice,computerChoice());
    });

    function computerChoice () {
        var choice = Math.floor(Math.random() * 3) + 1;
        switch(choice) {
            case 1:
                $("#showComputerChoice").html("<img src=剪刀.jpg class=mx-auto d-block alt=剪刀>");
                break;
            case 2:
                $("#showComputerChoice").html("<img src=石頭.jpg class=mx-auto d-block id=stone alt=石頭>");
                break;
            case 3:
                $("#showComputerChoice").html("<img src=布.jpg class=mx-auto d-block id=paper alt=布>");
                break;
        }
        return choice;
    }

    function judgment(user,choice) {
        var result = user - choice;
        if(result === -2 || result === 1) {
            $("#showResult").removeClass("text-danger");
            $("#showResult").addClass("text-primary");
            $("#showResult").html("使用者 勝利!");
            win++;
            $("#win").html(win);
        } else if(result === -1 || result === 2) {
            $("#showResult").removeClass("text-primary");
            $("#showResult").addClass("text-danger");
            $("#showResult").html("電腦 勝利!");
            lose++;
            $("#lose").html(lose);
        } else {
            $("#showResult").removeClass("text-primary");
            $("#showResult").removeClass("text-danger");
            $("#showResult").html("雙方 平手!");
            tie++;
            $("#tie").html(tie);
        }
    }
});