.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 14 # instrumentation
CMOVNZ RDI, RDI 
OR AL, 49 
MOV EAX, -1752757710 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
NOT EAX 
AND RCX, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RCX] 
CMOVZ RBX, RBX 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BTS RCX, -19 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RDI] 
OR ECX, EDI 
BT BX, DX 
XOR EDI, -116 
AND RSI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RSI], 7 
MOVZX SI, DL 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -6577 
XOR RDX, -77 
BTR EBX, 66 
AND DIL, 123 # instrumentation
MOV RSI, 3371939679154229702 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CLD  
BTS RAX, -41 
BTS RSI, RAX 
AND SIL, -94 # instrumentation
SETNL CL 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, 19 # instrumentation
CMOVNZ SI, SI 
MOV EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], -64 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RBX] 
CDQ  
MOVSX EDX, DL 
TEST ESI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
