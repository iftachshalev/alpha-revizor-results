.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], 93 
CMOVNO RCX, RAX 
CMOVNLE RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RDX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDX 
JMP .bb_main.1 
.bb_main.1:
XCHG EAX, EDX 
LEA RDX, qword ptr [RDI] 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], RDX 
CMOVZ SI, DX 
BTC RCX, RCX 
AND SIL, -79 # instrumentation
JO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, -90 # instrumentation
BTC RCX, -74 
NOT BL 
MOVSX EAX, BL 
JNZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RSI] 
BT SI, SI 
LEA ECX, qword ptr [RCX + RDX] 
NOT ESI 
MOV SI, 20512 
CMOVBE AX, AX 
AND RDX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDX] 
SETNZ AL 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], SIL 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CDQ  
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], 94 
AND EBX, 78 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], DL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RCX] 
LEA DX, qword ptr [RAX + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RAX] 
SETNL DIL 
CMOVO EDI, EAX 
NOT SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
