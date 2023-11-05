.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG AL, BL 
CMOVNBE ECX, ESI 
LEA ECX, qword ptr [RBX + RAX + 48159] 
AND RAX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RAX] 
CMOVO RBX, RDX 
LEA RDX, qword ptr [RSI + RSI + 15025] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RSI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
MOV DI, DI 
SETNS DL 
SETNL DL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
AND SIL, 124 # instrumentation
CMOVS SI, BX 
MOVSX DX, AL 
NOT AL 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], RAX 
XOR AX, -28591 
XOR DIL, -76 
SETNL DL 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -25 # instrumentation
SETS DIL 
TEST RDX, 1407656513 
CMOVL RCX, RAX 
AND AL, -86 
AND RSI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RCX] 
CMOVNB ECX, EAX 
SETNLE DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RSI] 
XOR BX, 104 
AND RDX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RDX] 
MOV ECX, EAX 
SETNBE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
