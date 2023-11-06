.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND CL, -30 
XCHG BX, AX 
SETNLE SIL 
BTR EAX, EDX 
AND DIL, 127 # instrumentation
CMOVL RBX, RDX 
SETNLE BL 
BTS RAX, 50 
MOV EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RCX] 
MOV RBX, -671201065713778899 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND EAX, -805509396 
XOR BX, 6 
XOR RAX, 17 
XADD AL, DL 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XADD RAX, RBX 
SETNO BL 
CMOVNBE EDI, ECX 
TEST RAX, 10374411 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
CMPXCHG ESI, EDI 
MOV RBX, RBX 
SETBE DL 
CMOVZ RBX, RDI 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
CWDE  
BTC RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RBX] 
XOR AX, -25629 
MOV RBX, -337019229955881050 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], DL 
SETNB BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
