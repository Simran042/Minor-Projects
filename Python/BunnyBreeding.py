import random

bunniesList=[]

class Bunny:
    
    def Cgender(self):
        a= random.choice(['Male', 'Female'])
        self.gender= a

    def Ccolor(self):
        a= random.choice(['white', 'black', 'brown', 'spotted'])
        self.color= a

    def Cage(self):
        a= random.randrange(1, 10)
        self.age= a

    def BabyAge(self):
        self.age=0

    def Cname(self):
        if self.gender=="Male":
            self.name= random.choice(['Jack', 'Admand', 'Eric', 'Rench', 'Chris', 'Eddy', "Katty"])
        elif self.gender=="Female":
            self.name= random.choice(['Jane', 'Addie', 'Erimach', 'Refshi', 'Chrissie', 'Elizabeth', "Diana"])

    def Cradioactive_mutant_vampire_bunny(self):
        a= random.randrange(100)
        if a==1 or a==2:
            self.radioactive_mutant_vampire_bunny= True
        else:
            self.radioactive_mutant_vampire_bunny= False

    def __init__(self):
        self.gender=""
        self.color= ""
        self.age= 0
        self.name= ""
        self.radioactive_mutant_vampire_bunny= False


def createList():
    for i in range(5):
        myBunny= Bunny()
        myBunny.Cgender()
        myBunny.Ccolor()
        myBunny.Cage()
        myBunny.Cname()
        myBunny.Cradioactive_mutant_vampire_bunny()
        bunniesList.append(myBunny)

def modifyList():
    #increment age by 1
    for bunny in bunniesList:
        bunny.age= bunny.age+1


    #check for breeding by age, gender and radioactive conditions as described in question
    for bunny in bunniesList:
        if bunny.age >=2 and bunny.gender=="Male" and bunny.radioactive_mutant_vampire_bunny==False:
            for bunnymomma in bunniesList:
                if bunnymomma.gender =="Female" and bunnymomma.age>=2 and bunnymomma.radioactive_mutant_vampire_bunny==False:
                    myBunny= Bunny()
                    myBunny.Cgender()
                    #bunny has same color as its mother
                    myBunny.color= bunnymomma.color
                    myBunny.age=0
                    myBunny.Cname()
                    myBunny.Cradioactive_mutant_vampire_bunny()
                    bunniesList.append(myBunny)
                    #bunny radioactive then it makes its own mother(the random bunny I chose) radioactive
                    if(myBunny.radioactive_mutant_vampire_bunny==True):
                        bunnymomma.radioactive_mutant_vampire_bunny= True
                        print("A radioactive bunny "+myBunny.name + " was born !")
                        print("It made bunny "+bunnymomma.name + " radioactive")
                    else:
                        print(myBunny.name + " was born !")
            break
    
    #checks for age 10 in normal bunnies and age 50 in mutants and kills them
    for bunny in bunniesList:
        if bunny.age>10 and bunny.radioactive_mutant_vampire_bunny==False:
            bunniesList.remove(bunny)
            print(myBunny.name + " died !")
        elif bunny.age>50 and bunny.radioactive_mutant_vampire_bunny==True:
            bunniesList.remove(bunny)
            print("A radioactive bunny " + myBunny.name + " died !")
    
    #if number of bunnies>1000, pop first 500 bunnies out of list
    a= len(bunniesList)
    if a>=1000:
        for i in range(500):
            list.pop([i])
        print("The number of bunnies exceeded 1000. So, half bunnies dead.")

#print output in file   
def printOutput():
    f.write("The modified list is: ")
    for bunny in bunniesList:
        f.write("\n")
        f.write(bunny.name) 
        f.write("      ")
        # a=(str)bunny.age
        # f.write(a)
        f.write(bunny.gender)
        f.write("      ")
        f.write(bunny.color)
        f.write("\n")
        # f.write(bunny.radioactive_mutant_vampire_bunny)
    f.write('=================================\n')



f = open('workfile', 'w')
createList()
printOutput()
count=0
while len(bunniesList) !=0 and count<100:
    modifyList()
    printOutput()
    count= count+1








    

    
