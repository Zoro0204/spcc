inp=[['MACRO'],
['&LAB', 'ADDM', '&ARG1', '&ARG2', '&ARG3'], 
['&LAB', 'A', '1', '&ARG1'],
['','A', '2', '&ARG2'],
['','A', '3', '&ARG3'],
['MEND']]
op=['A', 'S']
ala = []
def createala(xt):
    tc = xt
    tc.pop(1)
    ala.extend(tc)

for x in inp:
    if x[0]=='MACRO': 
        continue
    elif len(x)>1 and x[1] not in op:
        createala(x)

print ("ALA table")
print('='*50)
for a in range (0,len(ala)):
  print('#'+str(a),' ',ala[a])