.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT CL 
AND RBX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], RDI 
CBW  
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], 101 
MOV RCX, -1374796193003371363 
SETNB BL 
CDQ  
CMOVNB RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], -85 
XOR RSI, 58 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], 29 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
BTC DI, 80 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RAX] 
NOT AL 
TEST ESI, 976304186 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 10 # instrumentation
CMOVS RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RDX], AX 
OR EDI, 90 
BTS RBX, RDX 
AND DIL, 53 # instrumentation
CMOVL RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RCX] 
LEA RCX, qword ptr [RBX] 
JMP .bb_main.3 
.bb_main.3:
TEST BX, AX 
CMOVLE RDX, RDX 
OR DIL, -21 
BSWAP EAX 
SETNBE DL 
CMOVZ SI, DX 
XADD DL, BL 
SETNP BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
