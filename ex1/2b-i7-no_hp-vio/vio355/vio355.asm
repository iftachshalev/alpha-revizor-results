.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT EDI, 30 
MOVSX DX, BL 
TEST DL, -36 
CMOVO DX, DX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
BTS RAX, -111 
AND SIL, -27 # instrumentation
SETNP CL 
CLD  
BTC RAX, RSI 
SETBE DL 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], -120 
SETNL BL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -11 # instrumentation
CMOVNZ EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -18214 
CMOVO AX, BX 
BTR DI, 116 
TEST AX, 2695 
BTS DI, DI 
AND DIL, -34 # instrumentation
CMOVZ SI, SI 
SETL AL 
CMPXCHG ESI, EAX 
NOT EAX 
AND EBX, -99 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RCX], ESI 
SETB AL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], -80 
SETB AL 
TEST DI, -1735 
CMOVBE EDX, EBX 
BSWAP EAX 
AND RDI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDI], 6 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
