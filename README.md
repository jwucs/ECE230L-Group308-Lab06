# Number Theory: Addition


## Name
Ethan Kraus, Jason Wu


## Lab Summary
The purpose of this lab was to learn how to implement a full adder system. We started out by using an XOR gate to simulate simultaneous light switch usage, as XOR serves as the basis for an adder system. We then implemented a simple, 1 bit adder which had both an output and a carry. Finally, we implemented the full adder itself, which consists of the same 2 bits to add, an output, and a carry, but we also use a carry in which must be accounted for when calculating both the carry and the output. By chaining these full adder modules together then, with the carry of the previous going into the carry-in for the next, we can create larger bit adders.


## Lab Questions
### 1 - How might you add more than two bits together?
To add more bits together you can just chain more two bit or bit adders to get the amount of bit adders you need.


### 2 - What is the importance of the XOR gate in an adder?
An XOR gate in an adder allows us to easily differentiate between when we should simply keep a digit as-is, and when we should combine digits into a carry. If we have one or three values in a full adder at one bit level, we should set the output to 1. However, if we have precisely two outputs for the given bit, we want the output to be 0, as both will combine into the carry instead. An XOR is the simplest implementation to do such a thing.


### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
The largest number a two bit adder can handle is 3. When you go over, it sets the carry out to 1 which you can pass to another adder.



