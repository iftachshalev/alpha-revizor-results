.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RAX], EDI 
SETNLE DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RAX] 
CMOVP RCX, RAX 
OR AL, AL 
TEST AL, -119 
SETO AL 
MOVSX EBX, CX 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOV CL, DL 
AND RCX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RCX], 3 
AND RDX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], RSI 
TEST RBX, -1346434597 
CMC  
AND RDI, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
XADD DL, CL 
XOR EDI, 35 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDI] 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RSI 
AND RBX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RBX], 6 
AND DIL, -7 # instrumentation
SETLE SIL 
BTS DI, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RSI], RAX 
CMOVNBE EAX, EDI 
SETNZ CL 
OR EAX, 1601883258 
OR RAX, -2015674484 
CMPXCHG CX, DX 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 34 # instrumentation
CMOVNBE BX, DI 
MOVZX EAX, DL 
BT BX, AX 
AND RDI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
