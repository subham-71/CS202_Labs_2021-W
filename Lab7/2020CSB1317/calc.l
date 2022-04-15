%{
    #include<stdio.h>
    #include<string.h>
    #include<stdbool.h>
    int operator_cnt =0 ,
        operand_cnt =0 ,
        valid =1, 
        top = -1, 
        operator_idx=0, 
        operand_idx=0;   
    char operands[100][10], operators[100][10], stack[100];
    
%}

%%

"(" {
    top++; 
    stack[top]='(';
}
"{" {
    top++; 
    stack[top]='{';
}
"[" {top++; 
    stack[top]='[';
}

")" {
    if (stack[top]!='(' || (operand_cnt>0 && operand_cnt-operator_cnt!=1)){
        valid=0;
        return 0;
    }
    else{
        top-=1;
    }
}
"}" {
    if (stack[top]!='{' || (operand_cnt>0 && operand_cnt-operator_cnt!=1)){
        valid=0;
        return 0;
    }
    else{
        top-=1;
    }
}
"]" {
    if (stack[top]!='[' || (operand_cnt>0 && operand_cnt-operator_cnt!=1)){
        valid=0;
        return 0;
    }
    else{
        top-=1;
    }
}

"+"|"-"|"*"|"/" {
    if (operand_cnt - operator_cnt != 1){
        valid = 0;
        return 0;
    }
    operator_cnt ++;

    for(int i=0;i<strlen(yytext);i++){
        operators[operator_idx][i] = yytext[i] ;  
    }
    operator_idx++;
}

[0-9]+|[a-zA-Z][a-zA-Z0-9_]* {
    if (operand_cnt - operator_cnt != 0){
        valid = 0;
        return 0;
    }
    operand_cnt++;

    for(int i=0;i<strlen(yytext);i++){
        operands[operand_idx][i] = yytext[i] ;  
    }
    operand_idx++;
}


[\n] {
    return 0;
}
. {
    valid=0; 
    return 0;
}
%%


int main(){
    printf("Enter expression: ");
    yylex();
    bool flag = valid && (top==-1) ;
    if (flag )
    {
        if(operand_cnt-operator_cnt == 1)
        {
            printf("Valid \n");

            printf("The operators are: ");
            for (int i=0; i<operator_idx; i++){
                printf("%s ",operators[i]);
            }

            printf("\n");

            printf("The operands are: ");

            for (int i=0; i<operand_idx; i++){
                printf("%s ", operands[i]);
            }

            printf("\n");
        }
    }
    
    else{
        printf("Invalid \n");
    }
}