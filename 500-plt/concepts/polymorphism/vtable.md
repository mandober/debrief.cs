# Virtual method table



## Virtual functions in C++

When a base class labels one of its methods as `virtual`, a *virtual table*, or *vtable*, is created somewhere on the heap and a pointer to it is added as a new field to the base class. The vtable is like a C struct with as many fields as the class has own or derived virtual functions; in brief, it's nothing but a bunch of function pointers (with the type matching the class' virtual functions). Non-virtual functions of the class are not in the vtable.

Note: In a parent class, a function that is labelled `virtual` must be (or is it "may be"?) overriden in the child class. The qualifier "virtual" is not even required, but people often put it anyway, as a reminder and a visual indicator of which methods are supposed to be overriden in the derived classes.
