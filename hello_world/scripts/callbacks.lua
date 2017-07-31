socket = require("socket")

function sleep(n)
    --lol = n
    socket.sleep(n)
end

--require("foo")

local t_state = 0






--- @param gre#context mapargs
function play_btn_toggle_press(mapargs) 
    sleep(2)
    local sdata = {}
    
    if  t_state == 0 then
        t_state = 1
        sdata["background_layer.play_btn.image"] = "images/play_down1.png"
    else
        t_state = 0
        sdata["background_layer.play_btn.image"] = "images/play_up1.png"
    end
    gre.set_data(sdata)
         

--TODO: Your code goes here...
end
