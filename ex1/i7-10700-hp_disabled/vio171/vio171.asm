.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 59 # instrumentation
LEA RDI, qword ptr [RCX] 
CMOVLE EBX, EBX 
XOR RCX, 60 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], EAX 
STC  
BSWAP RAX 
SETP CL 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RAX], 0 
CMPXCHG BL, DL # instrumentation
AND SIL, 70 # instrumentation
LAHF  
SETP DL 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOVSX RDI, BL 
AND RCX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BT word ptr [R14 + RCX], CX 
BTS EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 19530 
BTS DI, 63 
AND SIL, -18 # instrumentation
MOVZX BX, AL 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RCX] 
BSWAP RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDX] 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, 40 # instrumentation
SETNB CL 
LEA RBX, qword ptr [RDI + RDX + 35738] 
LEA EDI, qword ptr [RDX + RDX] 
XOR RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDI] 
LEA RDI, qword ptr [RSI + RCX + 34856] 
CMOVNB RCX, RSI 
XOR AL, 124 
CMOVB EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RCX], 3 
BTR EBX, EDI 
MOV AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
