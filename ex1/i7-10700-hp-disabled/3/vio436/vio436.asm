.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -90 # instrumentation
CMOVNO RSI, RDI 
CLC  
BTR RCX, 24 
AND DIL, 46 # instrumentation
SETS DL 
OR DIL, 85 
CDQ  
BTS EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], 9 
MOV AL, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], 7 
XCHG EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], DI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -61 # instrumentation
BTR RBX, 68 
LEA EDX, qword ptr [RCX + RBX] 
XCHG CL, DL 
SETNBE BL 
XADD ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RDX] 
TEST DIL, 102 
CMPXCHG CL, SIL 
TEST DL, SIL 
CWDE  
XOR BL, DL 
JMP .bb_main.2 
.bb_main.2:
OR DL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDX] 
SETZ CL 
MOV DI, -20843 
OR RAX, RAX 
OR ESI, ESI 
OR DI, AX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
