.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 22 # instrumentation
SETNLE DL 
MOV BL, 49 
CMOVBE RAX, RDI 
CMPXCHG DL, DL 
BTC BX, CX 
AND RDX, RDX 
BTC SI, -30 
XOR SIL, 67 
OR DI, 0b1000000000000000 # instrumentation
BSF SI, DI 
AND AX, -19188 
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], EAX 
SETZ CL 
MOVZX ESI, CL 
CMOVP RCX, RDX 
CMOVNB RCX, RDX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND CL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RBX] 
SETLE DL 
CMOVL DI, CX 
XOR DI, BX 
SETO AL 
MOV AL, 85 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DIL 
BTR CX, DX 
MOV EDI, ECX 
CWDE  
OR BX, 0b1000000000000000 # instrumentation
BSR AX, BX 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], ESI 
BTS EDI, 2 
CLC  
MOVZX EDI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
