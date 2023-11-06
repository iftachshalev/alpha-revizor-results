.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR DI, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RBX 
MOV SI, SI 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR BL, SIL 
CMOVS DI, SI 
CMOVNZ BX, DX 
OR RSI, -64 
CMOVNO RCX, RSI 
SETNO DIL 
AND RCX, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RCX] 
XCHG ESI, EAX 
AND BX, 61 
BTC RBX, 101 
AND CX, DX 
LOOP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], 67 
BTC RSI, RBX 
MOVZX AX, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], 58 
CMOVZ DX, DI 
BTC RDX, -20 
AND SIL, 94 # instrumentation
SETO BL 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -81 # instrumentation
SETNLE AL 
AND ESI, EAX 
MOV EBX, ESI 
BTR RDI, 32 
BTC CX, BX 
CWD  
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], ESI 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XOR AL, CL 
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
OR DI, 19 
AND BL, 116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
