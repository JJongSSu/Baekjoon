using System;

public class Solution {
    public bool solution(string s) {
//         if(s[0]==')' || s[s.Length-1]=='(')
//             return false;
        
//         if(s.Length%2 != 0)
//             return false;
        
        int count = 0;
        
        foreach (var word in s) {
            count = (word == '(') ? count + 1 : count - 1;
 
            if(count < 0) {
                return false;
            }
        };
        
        return count == 0;
    }
}