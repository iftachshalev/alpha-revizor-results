.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
XOR RAX, -1538342511 
MOVZX SI, AL 
CMOVNO EDX, EDX 
MOV RDX, RSI 
CMOVL DX, AX 
SETNO BL 
MOV EDI, 1864681992 
AND DIL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDI] 
XOR AL, -76 
SETLE CL 
MOVSX EAX, DL 
CBW  
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], DX 
BT ESI, 20 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 113 # instrumentation
CMOVNP EDI, EAX 
NOT EAX 
BTC RSI, 116 
AND DL, DL 
OR AX, -4587 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RAX] 
CMOVNLE CX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], DL 
MOVSX RAX, DIL 
TEST AL, -15 
AND AX, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RDI] 
OR ESI, 39 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
