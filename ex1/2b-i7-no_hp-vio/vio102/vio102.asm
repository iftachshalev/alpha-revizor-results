.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 63 # instrumentation
CMOVNP EAX, EDX 
CWD  
CMOVLE BX, CX 
SETNLE AL 
XADD CX, AX 
CMOVL SI, BX 
CMOVNL ESI, EBX 
BTS ESI, -124 
XOR RAX, -129983759 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RDI] 
AND SIL, -42 # instrumentation
CMC  
BTC RDI, RCX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDX] 
BTC EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RCX] 
BTS CX, AX 
AND DIL, 29 # instrumentation
SETS BL 
CMOVO RBX, RDI 
OR DL, -78 
TEST SIL, 66 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], AL 
MOV ESI, 2083826085 
CMOVNZ RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], CX 
BTS EBX, EDI 
AND AX, 5041 
AND RCX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RCX], 0 
XOR AL, -122 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], 1 
AND RDI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
