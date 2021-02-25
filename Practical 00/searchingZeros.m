prompt = 'Enter a matrix e.g randi(5,5) ';
prompt2 = 'Value to count? ';
prompt3 = 'Number of Values = ';

for index=1:10
    A = input(prompt)
    C = input(prompt2)
    B = sum(A(:) == C)
    break
end