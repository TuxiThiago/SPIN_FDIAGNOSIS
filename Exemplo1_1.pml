mtype = {a,b,c,sigma_f,sigma_u }
bool F,D;

chan F2D = [0] of { mtype }	// a rendezvous channel for messages from A to B


active proctype TSF()
{
S1:	if
	:: F2D!a  -> goto S3			
	fi
S3:		
	if
	:: F2D!sigma_f  -> goto S4	
	fi
S4:	F =true
	if
	:: F2D!b  -> goto S5
	fi
S5:	F =true	
	if
	:: F2D!c  -> goto S6	
	fi
S6:	F =true	
	if
	:: F2D!b  -> goto S7
	:: F2D!a  -> goto S8	
	fi
S7:	F =true	
	if
	:: F2D!sigma_u  -> goto S7	
	fi
S8:	F =true	
	if
	:: F2D!sigma_u  -> goto S8	
	fi
}

active proctype Diag()
{
S1:	if
	:: F2D?a  -> goto S2
	:: F2D?b  -> goto S4
	:: F2D?c  -> goto S1	
	:: F2D?sigma_f  -> goto S1
	:: F2D?sigma_u  -> goto S1			
	fi
S2:		
	if
	:: F2D?a  -> goto S3
	:: F2D?b  -> goto S3
	:: F2D?c  -> goto S2	
	:: F2D?sigma_f  -> goto S2
	:: F2D?sigma_u  -> goto S2	
	fi
S3:		
	if
	:: F2D?a  -> goto S3
	:: F2D?b  -> goto S4
	:: F2D?c  -> goto S3	
	:: F2D?sigma_f  -> goto S3
	:: F2D?sigma_u  -> goto S3	
	fi

atomic {S4:	D = true}
	if
	:: F2D?a  -> goto S4
	:: F2D?b  -> goto S4
	:: F2D?c  -> goto S4	
	:: F2D?sigma_f  -> goto S4
	:: F2D?sigma_u  -> goto S4
	fi
}

ltl L1 { [](F -> <> D) };
