//js
/**
 * @param {number[][]} accounts
 * @return {number}
 */
var maximumWealth = function(accounts) {
    //let rSum = [];
    //for (let i = 0; i < accounts.length; i++)
    //{
        //let rSum = 0;
        //for (const j of accounts[i]) rSum += j;
        //accounts[i].reduce((a,b) => a+b);
        //result = rSum>result?rSum:result;
		//let rSum = accounts[i].reduce((a,b) => a+b);
        //result = rSum>result?rSum:result;	
		//rSum.push(accounts[i]);
	//}
	//return rSum.reduce((a,i));
	return accounts.reduce((max_wealth,i)=>{
		const wealth = i.reduce((a,b)=>a+b,0);
		return max_wealth>wealth ? max_wealth : wealth;
	},0);
};

//py
class Solution:
    def maximumWealth(self, accounts: List[List[int]]) -> int:
        //return max(sum(customer) for customer in accounts)
        max_wealth = 0
        for customer in accounts:
            wealth = sum(customer)
            max_wealth = max(max_wealth, wealth)
        return max_wealth
        
//cpp
class Solution {
public:
    int maximumWealth(vector<vector<int>>& accounts) {
        int max_wealth = 0;
        for (const auto& customer : accounts) {
            int wealth = 0;
            for (int account : customer) {
                wealth += account;
            }
            max_wealth = max(max_wealth, wealth);
        }
        return max_wealth;
    }
};
