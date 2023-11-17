.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
AND AL, 24 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RCX] 
MOVZX ECX, CL 
XOR SI, -101 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], -6 
BTR RBX, RSI 
CMOVNB BX, CX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, RCX 
MOV ECX, ESI 
CMOVLE RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
MOVSX RBX, CX 
AND DIL, -110 
BT DX, 55 
AND DIL, 80 # instrumentation
CMOVNP SI, SI 
SETNP CL 
BT EBX, EDI 
XOR BL, -5 
BTR EBX, EDX 
BT ESI, 81 
AND SIL, -48 # instrumentation
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
AND SIL, 43 # instrumentation
MOV EDX, 1780229745 
MOV DIL, 64 
SETNS AL 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], DL 
SAHF  
NOT AL 
CMOVZ CX, AX 
CMOVNB DX, DX 
MOVSX EDX, DI 
SETNB DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
