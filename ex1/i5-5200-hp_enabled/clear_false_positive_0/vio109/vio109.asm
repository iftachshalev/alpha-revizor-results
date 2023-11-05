.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST DI, BX 
CMOVS RSI, RDI 
SETB CL 
CMC  
AND RDX, RAX 
AND EAX, 1216252250 
BT RCX, 108 
XCHG EBX, EAX 
CLD  
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], DL 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR BL, CL 
SETNL SIL 
TEST AX, 22273 
SETL BL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND CL, DIL 
CMPXCHG CL, DL 
CMOVZ RBX, RSI 
CMOVO RBX, RDX 
NOP  
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RAX] 
XCHG ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RBX], 5 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RSI] 
SETNL AL 
SETP DL 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RCX] 
CMOVNO EBX, EDI 
SETL CL 
CMOVL CX, DX 
BSWAP EDX 
BTS EBX, 105 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
