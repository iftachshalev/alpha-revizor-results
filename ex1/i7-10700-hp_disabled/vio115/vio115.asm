.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 38 # instrumentation
CMOVNL SI, CX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
AND DIL, -102 # instrumentation
MOVZX EAX, CL 
SETO DL 
SETNZ BL 
SETZ AL 
CMOVP ECX, EDI 
SETNP AL 
AND RDX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDX], 7 
MOVSX RAX, SIL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EAX, 1385983454 
AND CL, CL 
OR AX, DX 
AND RDI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDI] 
SETNO CL 
OR EAX, -2080638828 
MOVZX EBX, DI 
MOV DIL, 54 
SETNB CL 
AND RBX, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RBX] 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RDI] 
AND AX, -19472 
CMOVL BX, BX 
XOR SIL, 1 
SETZ BL 
CMOVO EDX, ESI 
MOVZX EDI, AL 
BTS RAX, -85 
NOT BX 
TEST EBX, -1498077599 
STC  
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
