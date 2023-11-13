.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AL, -65 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RBX 
XADD CX, CX 
CMOVL RAX, RAX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDI 
SAHF  
NOT CL 
CMOVNB AX, DX 
XCHG DX, DI 
SETNBE CL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RBX] 
BTC EDI, 99 
MOV AX, BX 
XOR EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RBX] 
AND SIL, 58 # instrumentation
SETNP DIL 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
SETL CL 
SETNLE DL 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], RDX 
BTR EAX, ESI 
AND DIL, BL 
CBW  
MOV EDX, ECX 
CMOVNB EDX, EAX 
XOR DI, SI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -8490 
TEST EDX, EDX 
OR RDX, -36 
SETNBE AL 
MOVSX RSI, DX 
XOR RDX, 125 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
