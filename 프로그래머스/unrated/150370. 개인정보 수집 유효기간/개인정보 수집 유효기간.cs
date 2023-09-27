using System;
using System.Collections.Generic;

public class Solution {
    public int[] solution(string today, string[] terms, string[] privacies) {
         List<int> answerList = new List<int>();

         DateTime convertToday = Convert.ToDateTime(today);

         Dictionary<string, int> termsDic = new Dictionary<string, int>();

         for (int i = 0; i < terms.Length; i++)
         {
             var splitTerm = terms[i].Split(' ');
             termsDic.Add(splitTerm[0], int.Parse(splitTerm[1]));

             Console.WriteLine(termsDic[splitTerm[0]]);
         }

         for (int i = 0; i < privacies.Length; i++)
         {
             var splitPrivacy = privacies[i].Split(' ');

             DateTime convertPrivacy = Convert.ToDateTime(splitPrivacy[0]);

             //privacies에 있는 날짜에 terms의 달 수를 더 한다
             var privacyDatePlusTerm = convertPrivacy.AddMonths(termsDic[splitPrivacy[1]]);

             //해당 날짜를 today와 비교(28일 일 때 고려)
             //만약 같거나 크다면 answer에 추가
             if (privacyDatePlusTerm <= convertToday)
             {
                 answerList.Add(i + 1);
                 Console.WriteLine(privacies[i]);
             }
         }

         int[] answer = answerList.ToArray();

         return answer;
    }
}