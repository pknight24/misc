class Dog:
    def __init__(self, age, breed):
        self.a = age
        self.b = breed

    def info(self):
        print (str(self.a))
        print (str(self.b))

dd = Dog(3, 5)

dd.info()
