.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 104 # instrumentation
CMOVNB RAX, RDX 
OR CL, -119 
CMOVNL AX, BX 
CWD  
AND RDX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BT word ptr [R14 + RBX], BX 
AND SIL, -35 # instrumentation
CMOVNS CX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RDX 
XOR CL, DL 
SETNP CL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RDI] 
CMOVBE BX, SI 
SETNB DIL 
TEST CL, BL 
CMPXCHG RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RCX] 
XOR AX, 18284 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], BL 
SETZ CL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RDX] 
CMOVNS ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
MOVZX DX, DL 
XOR RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BT dword ptr [R14 + RSI], EDX 
SETNB DIL 
MOV EAX, 1715581367 
XOR DX, -15 
OR DX, DI 
MOV AX, 884 
CMOVNLE EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
