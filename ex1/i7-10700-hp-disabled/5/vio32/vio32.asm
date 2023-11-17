.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT RSI, 45 
CMC  
AND EAX, -2126930755 
MOV EDX, EDI 
CMOVNBE RCX, RCX 
CMOVBE RCX, RSI 
BTS BX, -58 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RBX] 
CMOVNL ESI, EBX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RBX, RAX 
XOR AX, 119 
XCHG AL, SIL 
NOT BL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDI 
XOR AX, 12499 
SETZ CL 
CMOVL AX, BX 
CMOVNLE SI, BX 
CMOVZ RCX, RDX 
SETNL BL 
NOT CL 
SETNO BL 
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 5 # instrumentation
SETB BL 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDI], RDX 
CMOVNZ RSI, RCX 
XADD EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], AL 
AND EBX, -127 
BTR RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
