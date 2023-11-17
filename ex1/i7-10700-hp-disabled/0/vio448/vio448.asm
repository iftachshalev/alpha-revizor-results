.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
CMOVNL DI, AX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], DIL 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -116 # instrumentation
CMOVNLE RCX, RDI 
SETP DL 
OR EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
SETNZ DL 
SETB DL 
BTC RAX, -104 
MOVSX RCX, SI 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG SIL, CL 
OR SI, 21 
MOVSX RDX, SI 
AND BL, AL 
AND RAX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RAX] 
MOVSX DI, CL 
SETNB DL 
CMOVNBE EAX, ECX 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -117 # instrumentation
CMOVP RSI, RSI 
SETNZ CL 
CMOVNB BX, DI 
SETBE DIL 
AND RAX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RAX] 
SETBE BL 
SETNS DL 
CMOVNO RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 9 
CBW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
