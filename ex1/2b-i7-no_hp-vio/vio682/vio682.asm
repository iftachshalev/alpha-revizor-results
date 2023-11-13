.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RCX 
MOV EDI, EDI 
MOVSX BX, BL 
BSWAP RDI 
AND RAX, -687155420 
SETNS CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RCX] 
CMOVBE ECX, ESI 
CMOVB RDI, RCX 
SETS DL 
BT RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RAX] 
MOVSX EDX, CL 
CMOVNZ RDI, RDI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], -84 
OR AL, -103 
MOVSX EBX, DX 
SETNS BL 
TEST EAX, 1545518571 
AND RDX, -114 
MOV CL, -120 
SETS DL 
XADD RCX, RBX 
XOR EAX, -114 
CMOVB RDI, RDX 
MOV EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RAX] 
CMOVLE RBX, RSI 
OR AL, 70 
BTS RCX, -87 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
