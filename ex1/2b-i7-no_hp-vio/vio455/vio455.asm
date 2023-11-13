.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RAX, RBX 
CMOVLE ESI, EDX 
CBW  
BT RDX, RAX 
BTC EDX, -48 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
MOVSX BX, BL 
MOV SIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RCX] 
OR DIL, -28 
CMOVNLE EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
BTS RAX, 49 
CMPXCHG RDI, RBX 
CMOVS EDI, ESI 
SETNB CL 
BTC CX, CX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDI] 
MOVZX RDX, CL 
BT RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
AND CL, CL 
MOVSX DX, DL 
AND RSI, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RSI] 
CMOVLE EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
XOR EDX, 107 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], DIL 
AND SI, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
