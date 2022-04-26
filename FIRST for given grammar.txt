rules=['S->sA','A->3','A->b']
first={}
for rule in rules[::-1]:
    x,y=rule.split('->')
    first[x]=first.get(x,[])+[y[0]if y[0]=='3' or y[0].islower()else first[y[0]]]

for i in first.keys():
    print(f'First({i}) = {first[i]}')