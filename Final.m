  global key
while 1
     brick.MoveMotor('C', 37);  %move forward
     brick.MoveMotor('A', 34);
    touch=brick.TouchPressed(1); %check for touch
    if touch
        brick.MoveMotor('AC',0);        %back up and then turn left
        brick.MoveMotor('C', -36);
        brick.MoveMotor('A', -30);
        pause(1.2);
        brick.MoveMotor('AC',0);
        brick.MoveMotor('C', 44);
        pause(1.2);
        brick.MoveMotor('AC',0);
        brick.MoveMotor('C', 35);
        brick.MoveMotor('A', 35);
       
        
        
    end 
    
    distance = brick.UltrasonicDist(4); %check distance on right
   display(distance);
    if(distance>=45)    %if no wall on right turn right and go farward
        brick.MoveMotor('AC',0);
        pause(0.2);
        brick.MoveMotor('C', 25);
        brick.MoveMotor('A', 25);
        pause(0.5);
        brick.MoveMotor('AC',0);
        brick.MoveMotor('A',39);
        pause(1.1);
        brick.MoveMotor('AC',0);
        brick.MoveMotor('C', 36);
        brick.MoveMotor('A', 32);
        pause(2.6);
         brick.MoveMotor('AC',0);
        
    end
    brick.SetColorMode(2,2);
c=brick.ColorCode(2);
%display(c);
if c == 4 %Yellow
    display(c);
     brick.MoveMotor('CA',0);
  
InitKeyboard();

while 1         %keyboard controls
    pause(0.1);
    switch key 
       case 'uparrow'
            brick.MoveMotor('C', 25);
            brick.MoveMotor('A', 24);
            pause(0.1);
            brick.MoveMotor('AC',0);
             
        case  'downarrow'
             brick.MoveMotor('C', -25);
            brick.MoveMotor('A', -24);
            pause(0.2);
            brick.MoveMotor('AC',0); 
           
           case  'leftarrow'
          brick.MoveMotorAngleRel('C', 20,45,'Brake'); 
           
           case  'rightarrow'
           brick.MoveMotorAngleRel('A', 20,45,'Brake');  
           case 'w'
            brick.MoveMotor('D',5);
            pause(0.3);
            brick.MoveMotor('D',0);
        case 's'
             brick.MoveMotor('D',-5);
            pause(0.1);
            brick.MoveMotor('D',0);
           
        case 0 
           brick.StopMotor('CA');
            
        case 'q'
            break;
    end
end
CloseKeyboard();
   
elseif c == 5 %Red stop then go forward
    display(c)
    brick.MoveMotor('CA',0);
    pause(4);
    brick.MoveMotor('C', 37);
     brick.MoveMotor('A', 34);
     pause
    
    %pause(2);
    % brick.MoveMotor('CB',0);
   
elseif c == 2 %Blue
     brick.MoveMotor('CA',0); %keyboard controls initialize 
      InitKeyboard();

while 1 
    pause(0.1);
    switch key 
        case 'uparrow'
            brick.MoveMotor('C', 25);
            brick.MoveMotor('A', 20);
            pause(0.1);
            brick.MoveMotor('AC',0);
             
        case  'downarrow'
             brick.MoveMotor('C', -25);
            brick.MoveMotor('A', -20);
            pause(0.1);
            brick.MoveMotor('AC',0); 
           
           case  'leftarrow'
          brick.MoveMotorAngleRel('C', 20,45,'Brake'); 
           
           case  'rightarrow'
           brick.MoveMotorAngleRel('A', 20,45,'Brake'); 
           case 'w'
            brick.MoveMotor('D',9);
            pause(0.2);
            brick.MoveMotor('D',0);
        case 's'
             brick.MoveMotor('D',-5);
            pause(0.1);
            brick.MoveMotor('D',0);
           
        case 0 
           brick.StopMotor('CA');
            
        case 'q'
            break;
    end
end
CloseKeyboard();
end  
end


