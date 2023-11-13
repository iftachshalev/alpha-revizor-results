.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RAX], EDI 
CLD  
AND RAX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RAX] 
XOR DIL, -51 
BTC RDX, 3 
AND SIL, -62 # instrumentation
CMOVNP CX, AX 
OR DI, 0b1000000000000000 # instrumentation
BSR CX, DI 
XOR DL, 73 
BTS ESI, EBX 
AND DIL, 83 # instrumentation
MOV DL, -1 
CMOVNP RDI, RAX 
BTR ESI, -8 
BTC EBX, EDI 
BTR EAX, ESI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -7 # instrumentation
CMOVB AX, BX 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
SETL DL 
AND RSI, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RSI] 
XOR DIL, -40 
MOVSX ECX, SI 
SETNO CL 
AND RCX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTC dword ptr [R14 + RCX], EBX 
XOR RDI, 35 
SETO BL 
XCHG RDX, RCX 
CWD  
OR AL, BL 
TEST CL, 60 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RBX] 
MOV SIL, AL 
MOVZX DX, BL 
SETO BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
