class StudentPojo { // Setter-Getters (accessors - mutators,)
   String name; 
   int age=50; 
    
   String get stud_name { // here the getter Method is not enclosed with brackets
      return name; 
   } 
    
   void set stud_name(String name) { 
      this.name = name; 
   } 
   
   void set stud_age(int age) { 
      if(age<= 0) { 
        print("Age should be greater than 5"); 
      }  else { 
         this.age = age; 
      } 
   } 
   
   int get stud_age { // here the getter Method is not enclosed with brackets
      return age;     
   } 
}  
void main() { 
   StudentPojo s1 = new StudentPojo(); 
   s1.stud_name = 'MARK'; 
   s1.stud_age = 60; 
   print(s1.stud_name); 
   print(s1.stud_age); 
}