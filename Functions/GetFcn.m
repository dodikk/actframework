function [ callback ] = GetFcn( fName, fType )
%
%
%%%%%%%%%%%%%%%

    if (false == ischar(fName))
        callback = fName;
        disp('[!!! WARNING !!!] : Unknown function Id');
        
    elseif ( strcmp(fName, 'aperiodic') )
%%%%%%%<Aperiodic>%%%%%%%%%%
        if ( strcmp(fType, 'trans') ) 
            callback = @AperiodicFcn;
           
        elseif ( strcmp(fType, 'pass') )
            callback = @AperiodicPass;
            
        elseif ( strcmp(fType, 'imp') )
            callback = @AperiodicImp;
            
        elseif ( strcmp(fType, 'char') )
            callback = @AperiodicChar;
            
        else
           error('Unknown function Type');           
        end
%%%%%%%</Aperiodic>%%%%%%%%%%        
%%%%%%%<Task_1_6; Task_1_37>%%%%%%%%%%
	elseif ( strcmp(fName, 'task_1_6') || ...
             strcmp(fName, 'task_1_37') ...
           )
		if ( strcmp(fType, 'trans') ) 
            callback = @Task_1_6_Fcn;
           
        elseif ( strcmp(fType, 'pass') )
            callback = @Task_1_6_Pass;
            
        elseif ( strcmp(fType, 'imp') )
            callback = @Task_1_6_Imp;
            
        elseif ( strcmp(fType, 'char') )
            callback = @Task_1_6_Char;
            
        else
           error('Unknown function Type');           
        end
%%%%%%%</Task_1_6; Task_1_37>%%%%%%%%%%
%%%%%%%<Task_2_61>%%%%%%%%%%
	elseif ( strcmp(fName, 'task_2_61') )
        
		if ( strcmp(fType, 'trans') ) 
            callback = @Task_2_61_Fcn;
           
        elseif ( strcmp(fType, 'pass') )
            error('Not supported function type');
            
        elseif ( strcmp(fType, 'imp') )
            error('Not supported function type');
            
        elseif ( strcmp(fType, 'char') )
            callback = @Task_2_61_Char;    
        else
           error('Unknown function Type');           
        end
%%%%%%%</Task_2_61>%%%%%%%%%%
%%%%%%%<Task_2_85>%%%%%%%%%%
    elseif ( strcmp(fName, 'task_2_85') )
        
		if ( strcmp(fType, 'trans') ) 
            callback = @Task_2_85_Fcn;
           
        elseif ( strcmp(fType, 'pass') )
            error('Not supported function type');
            
        elseif ( strcmp(fType, 'imp') )
            error('Not supported function type');
            
        elseif ( strcmp(fType, 'char') )
            callback = @Task_2_85_Char;    
            
        else
           error('Unknown function Type');           
        end        
%%%%%%%</Task_2_85>%%%%%%%%%%
%%%%%%%<Task_2_111>%%%%%%%%%%
elseif ( strcmp(fName, 'task_2_111') )
    
		if ( strcmp(fType, 'trans') ) 
            callback = @Task_2_111_Fcn;
           
        elseif ( strcmp(fType, 'pass') )
            error('Not supported function type');
            
        elseif ( strcmp(fType, 'imp') )
            error('Not supported function type');
            
        elseif ( strcmp(fType, 'char') )
            callback = @Task_2_111_Char;
            
        else
           error('Unknown function Type');           
        end
%%%%%%%</Task_2_111>%%%%%%%%%%
%%%%%%%<Task_2_111_Locked>%%%%%%%%%%
elseif ( strcmp(fName, 'task_2_111_Locked') )
    
		if ( strcmp(fType, 'trans') ) 
            callback = @Task_2_111_Locked_Fcn;
           
        elseif ( strcmp(fType, 'pass') )
            error('Not supported function type');
            
        elseif ( strcmp(fType, 'imp') )
            error('Not supported function type');
            
        elseif ( strcmp(fType, 'char') )
            callback = @Task_2_111_Locked_Char;
            
        else
           error('Unknown function Type');           
        end
%%%%%%%</Task_2_111>%%%%%%%%%%

%%%%%%%<Unknown>%%%%%%%%%%%%%%%%%%%%%%%
    else
       error('Unknown function Id');
    end
%%%%%%%</Unknown>%%%%%%%%%%%%%%%%%%%%%%

return
end
