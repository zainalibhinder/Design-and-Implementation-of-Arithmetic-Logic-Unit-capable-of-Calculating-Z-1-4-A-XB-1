#  Design and Implementation of Arithmetic Logic Unit Capable of Calculating Z=1/4(A X B)+1



## PACKAGE REQUIREMENTS

```bash
Xilinx ISE Design Suite 14.5 or Xilinx Vivado
```



## Project Description

```
The goal of this project is to design an arithmetic unit capable of calculating Z=1/4 [A×B] +1.
The unit will receive two unsigned 8-bit operands A and B. Two clock synchronous internal
registers (RA and RB) latch the data when LOAD = 1. The unit outputs the results in a 16-bit
register RZ output port, and END_FLAG rises. An asynchronous CLEAR signal will clear all the
registers to ‘0’. The design shall be structural. The top module is implemented with and without
Finite State Machine(FSM). Furthermore, the design is expanded to facilitate 16-bitinput operand
and is capable to handle both signed and unsigned values. In addition, MLA unit has been implemented 
to perform multiplication and accumulate the result in the next result. Multiple test benches are 
developed to verify the functionality of code for each developed unit. 

So altogether, these additional features were implemented:
• Signed A and B operands
• Expansion of the method for 16 bits operands
• Pipelining of the design
• Multiply Accumulate for additional operands
 
```
![image](https://github.com/zainalibhinder/Design-and-Implementation-of-Arithmetic-Logic-Unit-capable-of-Calculating-Z-1-4-A-XB-1/assets/109630795/eb0e5a4b-2702-4e35-8cd7-b618d4d1f31c)


## Signal Specifications
```bash
- A: Unsigned 8-bit Operand A
- B: Unsigned 8-bit Operand B
- Z: Signed Output
- CLEAR: Clears selected registers
- LOAD: Loads Operand into internal registers
- CLOCK: Input Clock
- END_FLAG: Indicates end of operation
```
## 

## License
&copy; 
[ZAIN ALI BHINDER](https://github.com/ZAINALIBHINDER)
