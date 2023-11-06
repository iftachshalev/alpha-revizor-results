.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS EBX, EDX 
BT EBX, EBX 
MOVSX BX, AL 
LEA RCX, qword ptr [RSI + RDI + 21990] 
MOVSX BX, CL 
TEST SIL, 92 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
CMPXCHG CL, CL 
XCHG CX, SI 
SETNP SIL 
CMOVNZ ECX, ESI 
XCHG RAX, RDI 
SETBE DL 
BTR EBX, 107 
AND DIL, -44 # instrumentation
CMOVNS CX, AX 
CMOVNO ESI, EAX 
CMOVS EAX, EBX 
CMOVNBE RSI, RDI 
BT RBX, RCX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV EBX, -503230713 
AND RAX, -257078066 
BSWAP RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RAX] 
XOR EAX, 521732426 
SETZ CL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RBX] 
SETL DL 
AND AX, 71 
LEA RDX, qword ptr [RCX + RDX + 20694] 
NOT RSI 
MOVSX EDX, SIL 
BT RDI, -90 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
