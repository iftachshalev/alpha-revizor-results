.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EDI 
OR RSI, -14 
BT DI, AX 
CMOVB SI, CX 
CMPXCHG BX, CX 
SETBE AL 
AND RDI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDI], 6 
CMOVNBE EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RAX], 4 
AND SIL, 110 # instrumentation
SETNLE DL 
TEST RAX, 2031235288 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDI], 1 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 59 # instrumentation
SETLE BL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
XOR EBX, EDX 
OR EAX, 1056288803 
CMOVLE RDI, RSI 
BT RDX, -111 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RBX] 
XCHG EBX, EAX 
SETNZ BL 
AND RDI, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], CL 
MOV RCX, 8457229353593874036 
XOR RAX, 112494863 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DIL 
MOV RSI, 5892816041969691980 
CMOVL DI, AX 
CMOVNL BX, DX 
AND RDX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDX], 1 
AND DIL, AL 
MOV SIL, 26 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
