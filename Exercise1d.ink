/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the Miami beach. 

It is {advance_time()}

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach，but you see an ice cream store.

It is {advance_time() }
* { time == 1 } [Pick up some seashells] -> shells

+ [Buy ice cream] -> ice

== shells ==
You pick up the shells
-> beach2

== ice ==
You arrive at the ice cream store and find that there are many flavors of ice cream. Choose what flavor to eat.

It is {advance_time() }
+ { time == 1 } [buy coconut flavor] -> Coco

+ [Buy Macha flavor] -> Macha

 == Coco ==
 You costs $5.99
 
 It is {advance_time() }
+ { time == 1 } [stay on ice cream shop] -> stay_I_C

+ [Back to Miami beach] -> beach2

== Macha ==
You costs $4.99
It is {advance_time() }
+ { time == 1 } [stay on ice cream shop] -> stay_I_C

+ [Back to Miami beach] -> beach2

== stay_I_C ==
You take your time at the ice cream parlor and enjoy eating your ice cream.
 -> END





== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
        
    ~ return time
    
    
    
