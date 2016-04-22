%{
#include<stdio.h>
int num_vowels=0,num_consonants=0;
%}
%%
[aeiouAEIOU] {num_vowels++;}
[a-zA-Z] {num_consonants++;}
%%
int main()
{
yylex();
printf("number of vowels is %d\n",num_vowels);
printf("number of consonants is %d\n",num_consonants);
return 0;
}
