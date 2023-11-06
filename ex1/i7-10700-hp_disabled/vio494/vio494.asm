.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AL, -39 
SETNP BL 
CMOVBE DX, DX 
MOVSX AX, DL 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR AX, 7227 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RDI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RCX] 
BTC RCX, -10 
XCHG RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
CMOVNL ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDX], 7 
AND DIL, 69 # instrumentation
CMOVS SI, BX 
BTR EAX, 104 
BT EDI, EDX 
BTC RCX, RSI 
AND SIL, 119 # instrumentation
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RAX] 
MOV CL, -125 
CMOVLE DX, DI 
BT RSI, RDI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
CLC  
JMP .bb_main.3 
.bb_main.3:
AND DIL, 3 # instrumentation
SETLE BL 
OR CL, AL 
AND RCX, RDI 
SETZ DIL 
CMOVNP RCX, RBX 
BT RSI, RDX 
AND DIL, -8 # instrumentation
CMOVNP ECX, EBX 
CMOVLE EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], -17119 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
