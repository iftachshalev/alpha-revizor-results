.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR DX, AX 
AND SIL, 70 # instrumentation
SETS DL 
SETB DL 
CMOVS ESI, EBX 
SETNB AL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], DX 
LEA SI, qword ptr [RCX] 
CMOVB EAX, EDX 
CWDE  
OR BL, CL 
SETB DL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDI] 
SETO CL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DIL 
TEST RAX, 1243309863 
CMOVNL RCX, RDX 
XCHG SI, AX 
SETNBE BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RBX] 
XADD AX, DX 
CMOVNBE BX, SI 
CBW  
OR DI, CX 
NOT SIL 
MOV SIL, AL 
BTR RSI, -46 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDX] 
XOR AL, -85 
SETNBE CL 
BTC BX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
