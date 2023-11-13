.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RSI] 
MOVSX ECX, DIL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RSI], BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTS qword ptr [R14 + RDX], RSI 
NOT ESI 
SETNBE CL 
XCHG RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RBX] 
CMOVB DI, AX 
MOVSX RBX, CX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
STC  
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 83 # instrumentation
CMOVNL RAX, RDI 
XOR RDI, RDI 
CMOVZ RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDX] 
XCHG ECX, EDX 
AND RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDX], 5 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDX] 
CMOVNL RDI, RCX 
CMOVNL ESI, ECX 
XOR ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], 0 
BTC EAX, 76 
XCHG RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RBX] 
OR RDI, 11 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
