.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RBX, RDI 
MOV CX, BX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RSI] 
SETZ CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RBX] 
SETB DL 
SETNB DL 
MOV RBX, 7450946496833348367 
CMOVNS ECX, ECX 
JMP .bb_main.1 
.bb_main.1:
BTS BX, BX 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], 24 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], 2013765235 
SETO DIL 
CMOVLE RDX, RSI 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], EDI 
AND RBX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RBX], 3 
AND DIL, 117 # instrumentation
CMOVNO EAX, EAX 
XOR CL, AL 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], -64 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RBX] 
CMPXCHG DL, DL 
CMOVBE EDX, EDX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RSI] 
LEA RAX, qword ptr [RDX + RDI] 
XADD CL, AL 
CMOVNP DX, BX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RDX 
OR BL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
