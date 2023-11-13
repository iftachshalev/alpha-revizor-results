.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD DL, DIL 
SETNO CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RBX] 
BTR RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RSI], 6 
BTS RBX, RBX 
XADD RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], 116 
CMPXCHG EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDI] 
AND SIL, 32 # instrumentation
SETNBE DL 
CMOVS BX, AX 
STC  
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC SI, -75 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RCX], EAX 
SETZ AL 
SAHF  
CMOVNBE ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RCX] 
CWD  
BT SI, 112 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RSI] 
CMOVB AX, SI 
MOVSX AX, DL 
CBW  
AND AL, 90 
CMOVNP ECX, EAX 
CMOVNL RCX, RBX 
CMOVNB DI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
