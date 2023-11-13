.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EDX, EBX 
SETBE BL 
CMOVNLE DI, DI 
SETNZ AL 
OR DI, 85 
TEST ECX, -1685836210 
BTC ECX, ECX 
CMPXCHG BL, DL 
OR CX, -9 
NOT EDI 
CMOVNS EDI, EBX 
SETLE BL 
XCHG SI, AX 
TEST DIL, -87 
CMOVNB DX, DI 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 3 # instrumentation
CMOVNP EDI, EDI 
CWD  
SETNO BL 
MOVZX RBX, AL 
BTC SI, SI 
AND DL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
BT AX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], AL 
CMOVNLE CX, SI 
OR BX, AX 
SETLE BL 
OR DIL, AL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RCX] 
MOV EAX, ESI 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], -30803 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
