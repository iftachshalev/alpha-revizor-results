.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS RAX, RBX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDI 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMPXCHG BL, AL # instrumentation
AND SIL, -98 # instrumentation
LAHF  
MOVSX SI, AL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RSI 
CMOVB DX, AX 
TEST EAX, 1017348497 
BTR EBX, 34 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RBX] 
BTS RAX, -23 
AND SIL, 67 # instrumentation
CBW  
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 101 # instrumentation
CMOVNBE RCX, RDI 
OR AL, BL 
XCHG DL, DIL 
BT DX, -118 
AND DIL, 53 # instrumentation
MOVZX EDI, DL 
SETNLE DL 
CWDE  
XOR SIL, CL 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
CMOVZ RSI, RDX 
SETLE AL 
AND CL, CL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RSI] 
OR AL, -97 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RCX] 
CMOVB ESI, EDI 
MOVZX DX, CL 
XOR RSI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
