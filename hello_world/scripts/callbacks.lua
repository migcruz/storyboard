#!/usr/bin/lua
--module(...)
--require("bar")
--require("foo")

require("foo")

--connect()

local t_state = 0
local t_state2 = 0

--module(...)





--- @param gre#context mapargs
function play_btn_toggle_press(mapargs) 
    --connect()
    local sdata = {}
    
    if  t_state == 0 then
        t_state = 1
        sdata["background_layer.play_btn.image"] = "images/play_down1.png"
        sdata["background_layer.hello_world_text.text"] = "DOWN"
        play()
    else
        t_state = 0
        sdata["background_layer.play_btn.image"] = "images/play_up1.png"
        sdata["background_layer.hello_world_text.text"] = "UP"
        pause()
    end
    gre.set_data(sdata)
         

--TODO: Your code goes here...
end

--function connect2()
--    connect()
--end
    





--- @param gre#context mapargs
function stop_press(mapargs)
    gre.thread_create(connect)
    local sdata = {}
    sdata["background_layer.stop_btn.image"] = "images/stop_down1.png"
    gre.set_data(sdata) 
end

--- @param gre#context mapargs
function stop_release(mapargs) 
    local sdata = {}
    sdata["background_layer.stop_btn.image"] = "images/stop_up1.png"
    gre.set_data(sdata)
    --connect()
end

--- @param gre#context mapargs
function lmao(mapargs)
    print("CALLED LMAO")
    local sdata = {}
    sdata["background_layer.hello_world_text.text"] = "LMAO"
    gre.set_data(sdata)
--TODO: Your code goes here...
end





--- @param gre#context mapargs
function app_exit(mapargs)
    --gre.quit() 
    quit_mainloop()
--TODO: Your code goes here...
end
