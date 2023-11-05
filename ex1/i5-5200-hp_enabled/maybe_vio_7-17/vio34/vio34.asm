.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG CL, BL # instrumentation
AND DIL, -126 # instrumentation
LAHF  
OR DX, 0b1000000000000000 # instrumentation
BSR DI, DX 
AND SIL, -35 # instrumentation
CMOVLE EDX, ESI 
SETP DL 
SETNL DIL 
SETZ CL 
BTC EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], 18 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RCX] 
OR RDI, -122 
BT ESI, 42 
MOVZX RAX, DI 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], 23083 
AND RBX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RBX] 
LEA RDI, qword ptr [RBX + RSI + 3176] 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 16 # instrumentation
SETNZ CL 
OR DIL, -107 
BTR EAX, ECX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDI 
AND DIL, 97 # instrumentation
CMOVLE EDI, ESI 
BTS EBX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RBX] 
SETS BL 
TEST EAX, -1222634916 
XOR SIL, BL 
AND RAX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RAX] 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
TEST SIL, -62 
CMOVNO CX, BX 
CMOVO DI, SI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EAX 
OR AX, -14 
NOT AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
