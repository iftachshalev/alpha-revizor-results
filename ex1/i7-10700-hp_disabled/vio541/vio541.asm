.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], 95 
MOV AL, SIL 
BTR RBX, 99 
MOV AL, -95 
TEST RCX, 773937572 
SETNZ BL 
AND RDX, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -86 # instrumentation
CMOVNBE RSI, RDI 
SETO BL 
XOR DL, -87 
CMOVNS RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RDI] 
SETNO DIL 
CMOVNP RDI, RAX 
XOR AL, -108 
XOR SI, -43 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RAX], RBX 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], AX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -4 # instrumentation
SETLE CL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
AND RSI, RAX 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTC EDI, EBX 
AND EAX, 317947242 
SETNL CL 
BTC EDX, ESI 
CMPXCHG BL, DL 
MOVZX SI, AL 
OR AX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RDX 
AND AL, 117 
XOR RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
