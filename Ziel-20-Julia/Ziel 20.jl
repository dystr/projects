function game(player=1,score=[0,0])
    if score[1] >= 20; println("Player 1 wins!")
        elseif score[2] >= 20; println("Player 2 wins!")
    else
        move(player,score)
    end
end

function move(player,score)
    getmove(player)(player,score,rand(1:6))
end

function getmove(player)
    if player == 1
        return move1
    else
        return move2
    end
end

function move1(score,roll)
    println(score)
    println("You'r roll is $roll !")
    if readline(STDIN)== "+"
        game(2,[score[1]+roll,score[2]])
    else
        game(2,[score[1]-roll,score[2]])
    end
end

function move2(score,roll)
    if score[2]+roll >= 20
        game(1,[score[1],score[2]+roll])
    elseif score[1] + 4 >= 20
        game(1,[score[1]-roll,score[2]])
    else
        game(1,[score[1],score[2]+roll])
    end
    #score[2]+=roll
    #game(1,score)
end
