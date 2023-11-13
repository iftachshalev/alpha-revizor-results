.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -46 # instrumentation
CMOVNB ECX, EDX 
XADD DL, CL 
NOT EDI 
CMOVNZ EAX, EDX 
XADD ESI, EDI 
SETZ SIL 
CMOVO ESI, EDI 
SETNS AL 
CMOVNLE DX, CX 
CMOVNL RDI, RBX 
MOV RDX, 1982920895511338283 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 0 # instrumentation
SETO DL 
SETNL DL 
AND RBX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RBX] 
CMOVS RDI, RSI 
LEA RSI, qword ptr [RCX + RSI] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RAX 
AND DIL, -49 # instrumentation
CMC  
BT ECX, 35 
AND EAX, -463762266 
OR SIL, -76 
MOVZX AX, CL 
TEST EBX, -209690732 
CMOVNL RCX, RCX 
SETBE DL 
OR DX, AX 
SETS BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RAX] 
AND RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RCX] 
MOV AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
