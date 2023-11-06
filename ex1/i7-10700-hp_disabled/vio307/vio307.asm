.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], DL 
CMOVNLE EBX, EAX 
OR EAX, EDI 
XADD BL, SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
CMPXCHG AL, AL 
AND AX, 19080 
MOVSX DX, AL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 71 
MOV BL, -22 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR RDI, RBX 
BTS RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
OR BX, AX 
BTS EBX, ECX 
BTC RDX, RSI 
TEST DIL, 79 
NOT AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
XADD DL, CL 
OR CL, BL 
AND DI, DI 
XOR AX, 19 
CMOVS RAX, RCX 
CMOVLE ECX, EAX 
CMOVZ RSI, RDX 
SETO DL 
CMOVLE ESI, EBX 
SETB DL 
XOR CL, 21 
MOV RDI, -8791047390131429588 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
