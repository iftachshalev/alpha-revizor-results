.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RCX], EDX 
CMOVB RCX, RCX 
SETLE CL 
CLD  
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CWD  
SAHF  
AND RCX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RCX] 
TEST ESI, EBX 
CMOVS EBX, EAX 
XOR RDX, RSI 
AND DL, 123 
AND DL, 98 
XADD RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RAX] 
CMOVLE RBX, RDI 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR CX, -107 
BTR ESI, 57 
AND AL, -40 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], EDI 
MOV SIL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDI] 
AND SIL, -72 
AND RCX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -42 # instrumentation
CMOVP CX, CX 
MOVZX ESI, AL 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
TEST EDX, 103060430 
CMOVNB EBX, EDI 
SETNLE DL 
OR AL, -94 
MOVSX ESI, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
