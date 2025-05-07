# Virtual function

https://en.wikipedia.org/wiki/Virtual_function

In OOP (especially in C++), a **virtual function** (or virtual method) is an inheritable and overridable function that is *dynamically dispatched*.

Virtual functions are an important part of the *runtime polymorphism* in OOP, allowing for execution of target functions *that were not precisely identified at compile time*.

Many programming languages (such as JS, PHP, Python), *treat all methods as virtual by default* and do not have means to change this behavior. However, some languages provide modifiers to prevent methods from being overridden by derived classes (like `final` and `private` keywords in Java and PHP).

## Contents

- 1. Purpose
- 2. Example in C++
- 3. Abstract classes and pure virtual functions
- 4. Behavior during construction and destruction
- 5. Virtual destructors

## Purpose

Further information: Dynamic dispatch
https://en.wikipedia.org/wiki/Dynamic_dispatch

>The concept of the virtual function solves the following problem:
In OOP, when a derived class 
  inherits from a base class, 
an object of the derived class 
  may be referred to 
    via a pointer or reference 
of the base class type, 
  instead 
of the derived class type.


If there are base class methods 
  overridden by the derived class, 
    the method actually called 
      by such a reference or pointer 
        can be bound (linked) either 
*"early"* (by the compiler), 
  according to the *declared type* 
    of the pointer or reference, or 
*"late"* (by the runtime system), 
  according to the *actual type* 
    of the object it is referred by.


Virtual functions are resolved "late";
they have *late binding*, aka *runtime binding*.

If the function in question is 
"virtual" in the base class, 
  the most-derived class's implementation
    of the function is called 
  according to the *actual type* 
of the object referred to, 
  *regardless of the declared type* 
    of the pointer or reference.

If the function in question is 
    *non-virtual* in the base class, 
  it is resolved "early", 
i.e. it has an *early binding* 
  (or compile time binding), 
and gets selected 
  according to the declared type 
    of the pointer or reference.

Virtual functions make it possible to call methods that don't necessarily even exist at the moment the code is compiled.

In C++, virtual methods are declared by prepending the `virtual` keyword to the function's declaration in the base class. This modifier is inherited by all implementations of that method in derived classes, meaning that they can continue to override each other and enjoy late binding.

And even if methods 
  owned by the base class 
    call the virtual method, 
      they will instead be 
        calling the derived method. 

**Overloading** occurs 
  when two or more methods in one class 
    have the same method name 
      but different parameters. 
  Overloading is also referred to as 
    *function matching*.

**Overriding** means 
  having two methods 
    with the same method name 
         and same parameters.
Overriding is also referred to as 
  *dynamic function mapping*.


## Example in C++

For example, a base class 'Animal' could have a virtual function 'Eat'. Subclass 'Llama' would implement 'Eat' differently than subclass 'Wolf', but one can invoke 'Eat' on any class instance referred to as 'Animal', and get the 'Eat' behavior of the specific subclass.

```c++
class Animal {
 public:
  // non-virtual function
  void Move() {
    std::cout << "This animal moves in mysterious ways" << std::endl;
  }

  // virtual function: to be overriden in derived classes
  // It may as well have been a proper definition, although it makes
  // no sense in this case since 'Animal' is a purely abstract entity
  // that shouldn't be instantiated but only derived from.
  virtual void Eat() = 0;
};


class Llama : public Animal {
 public:
  // The non-virtual function 'Move' is inherited but not overridden
  // (nor overridable). On the other hand, 'Eat' function is overriden.
  void Eat() override {
    std::cout << "Llamas eat grass!" << std::endl;
  }
};
```

This allows us to process a list of objects of the collective type `Animal`; it allows calling the `Eat` method on each instance, knowing that the appropriate method will be invoked for that derived object. This way, we need not even know the actual types of objects in the list (nor how each animal eats, nor what the complete set of animal types may be) - we just know that if it's an `Animal`, then it has the `Eat` method (which is sorta like an interface or a type class).

## Example 2 in C++

```c++
class Animal {
  public:
    // everything hinges on the keyword 'virtual'
    virtual
    void eat() {
      std::cout << "I'm eating generic food.";
    }
};

class Cat : public Animal {
  public:
    void eat() { std::cout << "I'm eating a rat."; }
};

// just an indirection in order to call the eat()
// method through a generic (Animal) pointer:
void oops(Animal *xyz) {
  xyz->eat();
}

int main() {
  Animal *animal = new Animal;
  Cat *cat = new Cat;
  animal->eat(); // Outputs: "I'm eating generic food."
  cat->eat();    // Outputs: "I'm eating a rat."

  // So far so good, right?
  // Animals eat generic food, cats eat rats, all without virtual.

  // Let's change it a little now, so that we call the eat() method
  // indirectly through the intermediate function called 'oops'.
  // The output we then get is the same (generic):
  oops(animal); // Outputs: "I'm eating generic food."
  oops(cat);    // Outputs: "I'm eating generic food."

  // Uh oh... we passed a Cat into oops(), but it won't eat rats.
  // Should you overload oops() so it takes a Cat*?
  // If you have to derive more animals from Animal
  // they would all need their own oops().

  // The solution is to make eat() from the Animal class a virtual function.
  // Then the outputs becomes:
  oops(animal); // "I'm eating generic food."
  oops(cat);    // "I'm eating a rat."
}
```

Without `virtual` you get **early binding**: which implementation of the method is used gets decided at compile time *based on the type of the pointer* that you call through.

With `virtual` you get **late binding**: which implementation of the method is used gets decided at run time *based on the type of the pointed-to object* (what it was originally constructed as) - this is not necessarily what you'd expect based on the type of the pointer that refers to that object.

```c++
class Base {
  public:
            void M1 ()  { std::cout << "Base::M1" << std::endl; }
    virtual void M2 ()  { std::cout << "Base::M2" << std::endl; }
};

class Derived : public Base {
  public:
    void M1 ()          { std::cout << "Derived::M1" << std::endl; }
    void M2 () override { std::cout << "Derived::M2" << std::endl; }
    // override is optional for M2, but adding it to M1 is error
};

// constructed as Derived, although the pointer type is Base*
Base* basePtr = new Derived ();

basePtr->M1 ();  // Prints: "Base::M1"
basePtr->M2 ();  // Prints: "Derived::M2"
```

Virtual Functions are used to support Runtime Polymorphism. That is, `virtual` keyword tells the compiler not to make the decision (of function binding) at compile time, rather postpone it for runtime.

Virtual methods are needed for safe downcasting, simplicity, and conciseness. That's what virtual methods do: they *downcast safely*, with simple and concise code, avoiding the unsafe manual casts in the more complex and verbose code that you otherwise would have.

- Non-virtual method ⇒ static binding
- Virtual method ⇒ dynamic binding


## Links

- Virtual functions (C++ only)
https://www.ibm.com/docs/en/zos/2.3.0?topic=only-virtual-functions-c

- C++ FAQ: Virtual functions
https://www.parashift.com/c++-faq-lite/virtual-functions.html
  - FAQ: What is a "virtual member function"?
  - FAQ: How can C++ achieve dynamic binding yet also static typing?
  - FAQ: Difference between calling virtual and non-virtual member functions?
  - FAQ: Implementation details and efficiency of calling a virtual function?
  - FAQ: How can a member function in my derived class call the same function from its base class?
  - FAQ: Using dynamic binding with objects in heterogeneous containers?
  - FAQ: When should my destructor be virtual?
  - FAQ: What is a "virtual constructor"?

- PolyConf 15: Cello - Hacking C for Fun and Learning / Daniel Holden
https://www.youtube.com/watch?v=bVxfwsgO00o

- How VIRTUAL functions work in C++
https://www.youtube.com/watch?v=FncNE2vdtwQ&list=TLPQMTEwMTIwMjW9lyPglQe8JQ&index=2

- Virtual functions in C++
https://www.geeksforgeeks.org/virtual-function-cpp/

- why do we need virtual functions in C++
https://stackoverflow.com/questions/2391679/why-do-we-need-virtual-functions-in-c

- 25.6 The virtual table
https://www.learncpp.com/cpp-tutorial/the-virtual-table/

- Inheritance Is The Base Class of Evil
https://www.youtube.com/watch?v=bIhUE5uUFOA

- What is the purpose of virtual member functions?
https://stackoverflow.com/questions/2238928/what-is-the-purpose-of-virtual-member-functions?rq=3

- Why use virtual functions? [duplicate]
https://stackoverflow.com/questions/8824359/why-use-virtual-functions?noredirect=1&lq=1

- C++ Virtual Functions and Function Overriding
https://www.programiz.com/cpp-programming/virtual-functions

- Virtual Function in C++: Everything You Need to Know
https://www.simplilearn.com/tutorials/cpp-tutorial/virtual-function-in-cpp

- Classes part 16 - Virtual Functions (Dynamic dispatch) | Modern Cpp Series Ep. 52
https://www.youtube.com/watch?v=BuWehV6sD1c&list=PLvv0ScY6vfd8j-tlhYVPYgiIyXduu6m-L&index=52

* C++ Playlist (250 videos)
https://www.youtube.com/playlist?list=PLvv0ScY6vfd8j-tlhYVPYgiIyXduu6m-L
