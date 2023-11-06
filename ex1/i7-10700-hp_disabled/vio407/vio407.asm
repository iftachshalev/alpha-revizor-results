.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 52 # instrumentation
CMOVS RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDX] 
CMOVNBE EDI, EDI 
AND EAX, -993691599 
MOVSX DI, DL 
SETL DL 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BT dword ptr [R14 + RDI], EDX 
BT RCX, RSI 
MOVSX RAX, SIL 
CMOVNB RDI, RCX 
BTR RSI, RSI 
AND DIL, -93 # instrumentation
MOVZX EDX, AX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 7 
AND RBX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RBX] 
LEA DI, qword ptr [RDX + RSI] 
OR DX, 0b1000000000000000 # instrumentation
BSF DX, DX 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], -33 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ECX 
BTC ECX, 102 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RAX] 
MOVZX BX, DL 
CBW  
MOV CL, -94 
CMOVB SI, SI 
SETNO SIL 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], BL 
XCHG RSI, RCX 
AND RDX, 54 
NOT EDI 
CMC  
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
