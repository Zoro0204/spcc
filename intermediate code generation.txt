code=[
    ['START','200'],
    ['','MOVER','AREG','DATA'],
    ['','MOVER','BREG','=4'],
    ['X','EQU','10'],
    ['','LTORG'],
    ['DATA','DC','4'],
    ['ST','DS','10'],
    ['','MOVER','CREG','=5'],
    ['END']
    ]
cmd_val = {'START':['AD',00],'MOVER':['IS',4],'DC':['DL',2],'DS':['DL',1],
        'EQU':['AD',3],'LTORG':['AD',5],'END':['AD',2] 
}
rg_val = {'AREG':1,'BREG':2,'CREG':3}
st = {'DATA':[0,203],'ST':[1,204]}
LT = {'=4':[0,203],'=5':[1,226]}
for i in range(len(code)):
    for j in range(len(code[i])):
        if code[i][j] in cmd_val:
            val = cmd_val[code[i][j]]
            print(f'({val[0]},{val[1]})',end='')
            if code[i][j] is 'LTORG':
                print(f'(DL,2)(C,1)',end='')
        elif code[i][j] in rg_val:
            val = rg_val[code[i][j]]
            print(f'(Rg,{val})',end='')
        elif code[i][j] in st:
            print(f'(S,{st[code[i][j]][0]})',end='')
        elif code[i][j] in LT:
            print(f'(L,{LT[code[i][j]][0]})',end='')
        elif code[i][j].isdigit():
            print(f'(C,{code[i][j]})',end='')
    print()