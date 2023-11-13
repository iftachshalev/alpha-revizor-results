.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG RCX, RCX 
XOR RBX, -1 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDI] 
BTC RBX, RBX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RCX 
SETZ CL 
CLC  
SAHF  
CLC  
MOVZX SI, DIL 
CLC  
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -40 # instrumentation
CMOVZ EDI, ECX 
MOVZX CX, AL 
BSWAP RAX 
AND RDX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDX] 
BT RAX, 75 
AND DIL, -53 # instrumentation
CMOVNP AX, DX 
CWDE  
SETNL CL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RDI 
XOR CX, 70 
TEST ECX, EDI 
AND RSI, 90 
AND RAX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RAX] 
AND RDX, RDX 
BTC RBX, -58 
AND DIL, -40 # instrumentation
MOV AX, BX 
CMOVP DX, AX 
XADD AL, AL 
BTC DX, DI 
SETB BL 
AND EAX, -1303876286 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
