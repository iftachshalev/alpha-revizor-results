.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RCX] 
BT EAX, ESI 
AND SIL, -61 # instrumentation
CMOVL RAX, RAX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
CMOVNB BX, CX 
XCHG BL, BL 
XOR AL, CL 
XCHG EBX, EAX 
CWD  
CMOVNBE RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -69 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 122 # instrumentation
CMOVNL EDI, EAX 
CMOVNP RSI, RDI 
NOT DL 
AND RCX, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RCX] 
OR DIL, DIL 
XCHG RCX, RDI 
SETNZ DL 
SETL BL 
CMOVNP RCX, RBX 
BTS RDI, 77 
AND RBX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RBX] 
TEST CL, -95 
SAHF  
SETNZ SIL 
XOR ECX, 110 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
CMOVNZ EAX, ECX 
AND RBX, RCX 
TEST EAX, -1572612673 
CMOVNO RSI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
