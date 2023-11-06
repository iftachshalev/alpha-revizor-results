.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EBX, -62 
TEST ECX, EAX 
STC  
SETBE AL 
AND AX, -15042 
SETNP AL 
CMOVNL EAX, EBX 
CMPXCHG CL, CL 
CMOVL EAX, EDI 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
SETL CL 
XOR DL, -50 
CMOVNS ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RSI] 
XADD ECX, ECX 
AND RAX, 1582563786 
BTS SI, AX 
AND DIL, -95 
SETLE DL 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], 3571 
OR AX, -31970 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RBX 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 51 # instrumentation
SETNP BL 
CMOVLE RDI, RAX 
CMOVL RAX, RSI 
TEST RAX, -2142152603 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], -54 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], AX 
TEST DL, -75 
XCHG EBX, EAX 
CMPXCHG CL, DL 
OR AX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
