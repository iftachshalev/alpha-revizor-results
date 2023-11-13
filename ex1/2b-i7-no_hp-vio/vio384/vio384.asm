.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR DI, 91 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDI] 
LEA ESI, qword ptr [RAX] 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RBX] 
CMOVNL SI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RAX] 
SETP DL 
MOV RSI, -6909496111520104253 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RDI] 
CMPXCHG DX, BX 
CMOVBE EAX, EDI 
CLC  
AND RDX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDX], 7 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RBX] 
MOVZX RAX, AX 
AND RBX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RBX], 6 
AND RAX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BT word ptr [R14 + RAX], BX 
AND DIL, -34 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -107 # instrumentation
CMOVLE EDI, EDI 
SETL DL 
AND RBX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RBX] 
CMPXCHG AL, CL # instrumentation
MOVZX EDI, AL 
LAHF  
OR SIL, DIL 
CMOVNB RDI, RDI 
OR CL, 56 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RCX] 
SETP DL 
XOR AX, AX 
MOVZX EDI, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
