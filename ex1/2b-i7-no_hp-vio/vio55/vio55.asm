.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 36 # instrumentation
SETO BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
OR AX, 30437 
TEST AL, -91 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RCX] 
CMOVNLE ESI, ECX 
AND ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RBX], 5 
AND DIL, 59 # instrumentation
MOV RSI, 6569558068796829745 
SETNS DIL 
CMOVO SI, CX 
BT DX, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RCX 
MOVZX RBX, AL 
MOVZX EDI, CL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR RAX, RCX 
SETB AL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -63 
SETS AL 
TEST ESI, -2039305493 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDX] 
CMOVNS SI, DX 
NOT DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], 4 
AND SIL, 31 # instrumentation
SETNLE AL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -779298570 
AND RAX, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RAX] 
XOR DL, DL 
AND RCX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RCX] 
CMOVO RDX, RDI 
SAHF  
CMOVNZ SI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
