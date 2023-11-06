.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 88 # instrumentation
CMOVZ RDX, RCX 
SETBE SIL 
AND AX, SI 
XOR EAX, 1734788943 
SETB SIL 
CMOVNLE RAX, RAX 
NOT CX 
CMOVLE EBX, EAX 
BTR EAX, EAX 
BT AX, 54 
MOV AL, 48 
CMOVNBE EAX, EBX 
CWD  
XOR ESI, -63 
NOT RSI 
TEST CL, AL 
SETNO BL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RSI] 
OR AX, -118 
NOT RDI 
BTS AX, CX 
MOV RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDX] 
XCHG RDX, RDI 
XOR DIL, 12 
CMOVL AX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RBX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDX] 
SETZ AL 
SETBE BL 
CMPXCHG AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
