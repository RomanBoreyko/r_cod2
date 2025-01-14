# JavaScript

function strCount(str, letter){  
  const r0= str.split('');
  let r0Count=0;
  
  for(const i of r0)i==letter? r0Count++ :0;
  return r0Count
}

# Python

def str_count(string, letter):
    # Your code here ;
    count = 0
    for item in string:
        if item == letter: count+=1
    return count
        


strCount = str.count

def strCount(string, letter):
    return string.count(letter)
