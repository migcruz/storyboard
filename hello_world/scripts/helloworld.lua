--- @param gre#context mapargs
function lol (x, y)
   print("CALLED LOL")
  --local sdata = {}
 -- sdata["background_layer.hello_world_text.text"] = "CALLED LOL"
  --gre.send_event("test_event", "test_channel")
  gre.send_event_target("test_event", "background_layer.hello_world_text", "test_channel")
  return x + y
end