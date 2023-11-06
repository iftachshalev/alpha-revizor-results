.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], -115 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], CL 
OR ECX, 59 
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
CMOVZ BX, AX 
OR CL, DIL 
CMOVBE SI, DX 
XOR RDI, RDI 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 126 # instrumentation
SETL SIL 
AND RDI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RDI], CX 
AND SIL, 71 # instrumentation
SETP CL 
MOVSX RCX, BL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EAX 
XOR SIL, AL 
BT AX, 17 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RCX] 
CMOVLE EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RDI] 
CMOVB RBX, RBX 
SETNBE DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDI] 
XADD RDI, RAX 
OR DX, -127 
CMPXCHG SIL, SIL # instrumentation
LAHF  
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTR RDI, -65 
AND CL, DL 
TEST AL, 112 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], RAX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
