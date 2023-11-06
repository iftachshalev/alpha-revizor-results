.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 16 # instrumentation
CMOVP BX, CX 
TEST AL, -29 
CMOVNBE RBX, RSI 
SETNO AL 
XCHG CX, AX 
CDQ  
XCHG EAX, ECX 
OR EAX, -1415283700 
AND RSI, -7 
NOT SI 
CMOVNLE EAX, EDX 
CMOVBE DX, SI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], DX 
AND SIL, -11 
TEST BL, 20 
BTS EBX, 97 
SAHF  
CMOVP EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTR dword ptr [R14 + RDI], EBX 
AND RCX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RCX] 
CMOVP EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTR qword ptr [R14 + RSI], RSI 
BTR DX, -114 
AND DIL, 79 # instrumentation
CMOVNP ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RBX] 
XOR CL, DL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RSI] 
SETS DL 
TEST EBX, -622200370 
XCHG BX, AX 
AND RCX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
