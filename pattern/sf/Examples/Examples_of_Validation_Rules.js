// 
LEN( AccountNumber) != 8
// Validates that the Account Number is numeric if not blank. Error Message:Account Number is not numeric.
AND(  NOT(ISBLANK(AccountNumber)),    NOT(ISNUMBER(AccountNumber)))
// Validates that a custom date field contains a date within the current year. Error Message: 	Date must be in the current year.
YEAR( My_Date__c ) <> YEAR ( TODAY() )
// Validates that the range between two custom fields, Salary Min and Salary Max, is no greater than $20,000. Error Message: 	Salary range must be within $20,000. Adjust the Salary Max or Salary Min values.
(Salary_Max__c - Salary_Min__c) > 20000
//Validates a custom field called Web Site to ensure that its last four characters are in an explicit set of valid website extensions.
    // Error Message: 	Web Site must have an extension of .com, .org, or .net .
AND(
    RIGHT( Web_Site__c, 4) <> ".COM",
    RIGHT( Web_Site__c, 4) <> ".com",
    RIGHT( Web_Site__c, 4) <> ".ORG",
    RIGHT( Web_Site__c, 4) <> ".org",
    RIGHT( Web_Site__c, 4) <> ".NET",
    RIGHT( Web_Site__c, 4) <> ".net"
)
//Validates that the account Billing Country is a valid ISO 3166 two-letter code.
    //Error Message: A valid two-letter country code is required.
OR(
    LEN(BillingCountry) = 1,
    NOT(
    CONTAINS(
    "AF:AX:AL:DZ:AS:AD:AO:AI:AQ:AG:AR:AM:" &
    "AW:AU:AZ:BS:BH:BD:BB:BY:BE:BZ:BJ:BM:BT:BO:" &
    "BA:BW:BV:BR:IO:BN:BG:BF:BI:KH:CM:CA:CV:KY:" &
    "CF:TD:CL:CN:CX:CC:CO:KM:CG:CD:CK:CR:CI:HR:" &
    "CU:CY:CZ:DK:DJ:DM:DO:EC:EG:SV:GQ:ER:EE:ET:FK:" &
    "FO:FJ:FI:FR:GF:PF:TF:GA:GM:GE:DE:GH:GI:GR:GL:" &
    "GD:GP:GU:GT:GG:GN:GW:GY:HT:HM:VA:HN:HK:HU:" &
    "IS:IN:ID:IR:IQ:IE:IM:IL:IT:JM:JP:JE:JO:KZ:KE:KI:" &
    "KP:KR:KW:KG:LA:LV:LB:LS:LR:LY:LI:LT:LU:MO:MK:" &
    "MG:MW:MY:MV:ML:MT:MH:MQ:MR:MU:YT:MX:FM:MD:MC:" &
    "MC:MN:ME:MS:MA:MZ:MM:MA:NR:NP:NL:AN:NC:NZ:NI:" &
    "NE:NG:NU:NF:MP:NO:OM:PK:PW:PS:PA:PG:PY:PE:PH:" &
    "PN:PL:PT:PR:QA:RE:RO:RU:RW:SH:KN:LC:PM:VC:WS:" &
    "SM:ST:SA:SN:RS:SC:SL:SG:SK:SI:SB:SO:ZA:GS:ES:" &
    "LK:SD:SR:SJ:SZ:SE:CH:SY:TW:TJ:TZ:TH:TL:TG:TK:" &
    "TO:TT:TN:TR:TM:TC:TV:UG:UA:AE:GB:US:UM:UY:UZ:" &
    "VU:VE:VN:VG:VI:WF:EH:YE:ZM:ZW",
    BillingCountry))
)

