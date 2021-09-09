%{ 
int n = 0,n1=0,n2=0,n3=0,n4=0,n5=0,n6=0 ;  
%} 
  
%% 
  
"while"|"if"|"else"|"int"|"float"|"true"|"false"|"return"|"float"|"switch"|"for"|"char"|"void"|"continue"|"do" {n++;n1++;}  
  
[a-zA-Z_][a-zA-Z0-9_]* {n++;n2++;} 
  
"<="|"=="|"="|"++"|"-"|"*"|"+" {n++;n3++;}
  
[(){}|, ;]    {n++;n4++;} 
  
[0-9]*"."[0-9]+ {n++;n5++;}  
  
[0-9]+ {n++;n6++;}           
             
"\n" {printf("total no. of keywords : %d\n", n1); n1=0;
printf("total no. of identifier : %d\n", n2); n2=0;
printf("total no. of operator : %d\n", n3); n3=0;
printf("total no. of separator : %d\n", n4); n4=0;
printf("total no. of float : %d\n", n5); n5=0;
printf("total no. of integer : %d\n", n6); n6=0;
printf("total no. of lexems = %d\n", n); n=0;}
.    ;
%% 
   
main()  
{ 
yylex();   
} 
yywrap(void)
{
return 0;
}
