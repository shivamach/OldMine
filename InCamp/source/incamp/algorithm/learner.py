import math as m
class Learner:
    '''
    Learner model identification based on 8 questions and their answers on 1 to 10 scale into
    4 categories activist, reflector,theorist,pragmatist,
    '''
    def __init__(self, a1=0, a2=0, r3=0, r4=0, t5=0,t6=0, p7=0, p8=0):
        #self.a1 =  input("on a scale of 1 to 10 how strongly would you say you look for new experiences")
        self.a1 = a1
        self.a2 = a2
        #activist is 10,10, reflector then, pragma and theorist
        self.p7 = p7
        self.r3 = r3
        self.t5 = t5
        self.a2 = a2
        self.p8 = p8
        self.t6 = t6
        self.r4 = r4

    def calculatexy(self):
        (x,y) = (self.a2 + self.r4 - self.p7 - self.t6 , self.a1 - self.r3 - self.p8 + self.t5)
        return (x,y)

    def _classify(self, x, y):
        disA = m.sqrt(((10-x)*(10-x))+((10-y)*(10-y)))
        disR = m.sqrt(((10-x)*(10-x))+((-10-y)*(-10-y)))
        disP = m.sqrt(((-10-x)*(-10-x))+((-10-y)*(-10-y)))
        disT = m.sqrt(((-10-x)*(-10-x))+((10-y)*(10-y)))
        if disA < disR and disA < disT and disA < disP:
            typee = "Activist"
            strength = ((14.14 - disA)/14.14)*100
            return (typee,round(strength))
        elif disR < disA and disR < disT and disR < disP:
            typee = "Reflector"
            strength = ((14.14 - disR)/14.14)*100
            return (typee,round(strength))
        elif disP < disA and disP < disR and disP < disT:
            typee = "Pragmatist"
            strength = ((14.14 - disP)/14.14)*100
            return (typee,round(strength))
        elif disT < disA and disT<disR and disT < disP :
            typee = "Theorist"
            strength = ((14.14 - disT)/14.14)*100
            return (typee,round(strength))





        # if x>=5 and y>=0:
        #     return("strong activist","red") #cc0000
        # if x<=-5 and y <=-5 :
        #     return ("strong pragmatist","green") #2dd30a
        # if x>=5 and y <=-5 :
        #     return ("strong reflector","yellow") #ddeb2f
        # if x<=-5 and y >= 5 :
        #     return ("strong theorist","blue") #182fe5
        # if x > 5 and y <= -5 :
        #     return("reflector with affinity to activism","more yellow less red add") #placeholder hex value. more conditions left to cover other values
        # #need conditions for inside the 55 box and stuff for equations of each of the axes in all
        # assert(1==0, 'should never reach here')

    def classify(self):
        #colordict = {(0,0):0xffffff,(7,-5):0x13cdf}
        x,y = self.calculatexy()
        return self._classify(x,y)

if __name__ == '__main__':
    shivam = Learner(8,6,9,8,3,5,2,7)
    (x,y) = shivam.calculatexy()
    args = (x,y)
    (typee,strength) = shivam.classify()
    print((typee,strength))
    print((x,y))
