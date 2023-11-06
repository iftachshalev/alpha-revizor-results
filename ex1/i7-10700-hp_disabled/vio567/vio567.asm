.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RSI] 
CMOVS SI, DX 
BSWAP EDX 
OR RSI, RDX 
CMOVNB EAX, EDX 
JMP .bb_main.1 
.bb_main.1:
BTR RBX, -116 
MOVZX EDX, AL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -19570 
XADD RAX, RBX 
XOR AL, 86 
XCHG RAX, RAX 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND DIL, 51 # instrumentation
SETS DIL 
CMOVNS BX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RCX] 
CMOVZ ESI, ECX 
XCHG DX, AX 
BTS RAX, 57 
AND SIL, -113 # instrumentation
SETNLE DL 
TEST EAX, 2078958264 
JMP .bb_main.3 
.bb_main.3:
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RCX 
BTC EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
XOR RDI, RDI 
SETO BL 
AND RDX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDX] 
BTC SI, CX 
AND DIL, 27 # instrumentation
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, 107 # instrumentation
CMOVNBE BX, AX 
BT ECX, 24 
AND SIL, -41 # instrumentation
NOT RAX 
CMOVL AX, AX 
SETLE BL 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
