class first;
  
rand bit wr; // :=
rand bit rd; // :/
  
  rand bit [1:0] var1;
  rand bit [1:0] var2;
  
  constraint data {
    var1 dist {0 := 30, [1:3] := 90}; //0 = 30/300 , 1,2,3 = 90/300 
    var2 dist {0  :/ 30 , [1:3] :/ 90}; //0,1,2,3, = 30/120 = 0.25
  
  }
  
  
  constraint cntrl {
  
    wr dist {0 := 30 , 1 := 70};
    
    rd dist {0 :/ 30 , 1 :/ 70};
  
  }  
  
  
 
  
endclass
