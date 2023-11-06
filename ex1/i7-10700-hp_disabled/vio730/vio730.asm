.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 2 # instrumentation
SETNB AL 
CMOVP AX, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RBX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ECX 
AND DIL, -82 # instrumentation
CMOVB ECX, EAX 
MOVZX DX, BL 
BTS DI, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RSI] 
XOR DL, 44 
TEST BL, -38 
XOR DL, -80 
AND RBX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTC word ptr [R14 + RBX], SI 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 55 # instrumentation
SETNLE AL 
CBW  
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RCX], 4 
BTR EAX, EBX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RDI] 
XOR RAX, -1819312060 
AND RBX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RBX], SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDX], EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RDX] 
BT RBX, RAX 
AND SIL, -7 # instrumentation
MOV DIL, 80 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD DI, DX 
CMOVO DX, DI 
BTS RCX, -32 
AND SIL, -76 # instrumentation
CDQ  
CMOVNO RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], BL 
CMOVLE CX, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
