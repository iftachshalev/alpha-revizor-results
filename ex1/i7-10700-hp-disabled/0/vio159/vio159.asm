.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 81 
CMOVNS DI, BX 
CMOVL RDI, RAX 
XCHG BL, CL 
OR EAX, -1088401777 
SETNBE BL 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
XOR EDI, -95 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RBX] 
CMOVB RAX, RAX 
XCHG ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], CL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX ECX, DI 
TEST RAX, -1497652381 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
SETNB BL 
NOP  
CMOVNL BX, AX 
CMOVNO EBX, EDX 
MOV ECX, ECX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RBX] 
OR AL, -12 
CMOVP RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTR qword ptr [R14 + RCX], RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RBX] 
CMOVLE RBX, RDI 
SETNLE DL 
TEST RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
CMOVLE RDI, RBX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
