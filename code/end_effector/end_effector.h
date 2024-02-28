// end_effector.h

#ifndef END_EFFECTOR
#define END_EFFECTOR

class End_effector {
private:
    int value;

public:
    End_effector(int initialValue); // Constructor
    void setValue(int newValue);
    void displayValue() const;
};

#endif // END_EFFECTOR
