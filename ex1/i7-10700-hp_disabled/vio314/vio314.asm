.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 110 # instrumentation
SETNZ BL 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 0 
AND RBX, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RBX] 
AND AL, -9 
BTC SI, -30 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RBX] 
BTC EDI, ESI 
AND DIL, -52 # instrumentation
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], -183163799 
MOVZX EDI, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RSI] 
CMOVBE EDI, EBX 
CMOVLE EBX, ESI 
BTC DI, 25 
AND SIL, 88 # instrumentation
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, -20 # instrumentation
CMOVNZ AX, CX 
TEST EAX, 1934784426 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], 21 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RSI], 6 
AND SIL, -108 # instrumentation
CMOVNS ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDX] 
SETL AL 
AND RAX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTC word ptr [R14 + RAX], DX 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, -18 # instrumentation
SETNB BL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 102 # instrumentation
SETNB BL 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], -120 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
AND SIL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
