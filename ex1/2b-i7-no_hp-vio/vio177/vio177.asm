.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS EBX, 91 
AND RAX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RAX], ECX 
AND DIL, -83 # instrumentation
CMOVLE EAX, ESI 
AND RAX, -2084176439 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RAX] 
SETNS DIL 
MOV SI, CX 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], BL 
AND RBX, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RBX] 
CMOVNLE RDX, RDX 
SETB AL 
NOT BL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 18 # instrumentation
CMOVNP RDX, RDX 
AND SIL, -100 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
BTR RCX, RAX 
AND SI, -85 
OR SI, 0b1000000000000000 # instrumentation
BSF AX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDI] 
MOVSX EAX, BL 
STC  
AND RBX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RCX] 
MOVSX EBX, DX 
LEA DX, qword ptr [RSI] 
CMOVZ DX, AX 
BT RSI, -120 
OR DI, 0b1000000000000000 # instrumentation
BSR DX, DI 
BTR ECX, 83 
BTS DX, -100 
TEST AX, -6294 
AND DI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
