.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -115 # instrumentation
NOT AL 
SETLE DL 
AND SI, -112 
SETBE BL 
CMOVBE SI, DX 
CMOVNS EBX, EBX 
SETNP AL 
AND RBX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RBX] 
XCHG RBX, RAX 
XOR AL, 0 
SETNB BL 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], AL 
CMPXCHG RCX, RDI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 26 # instrumentation
SETS DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], AL 
MOVZX EBX, CX 
BTR RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
XADD EDX, EDX 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDI] 
BTC EAX, ESI 
AND SIL, -51 # instrumentation
SETNO DIL 
TEST EAX, 973410471 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -768330307 
XCHG EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
CMOVBE SI, CX 
BTC EBX, 86 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EBX 
MOV AX, 30859 
AND RAX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
