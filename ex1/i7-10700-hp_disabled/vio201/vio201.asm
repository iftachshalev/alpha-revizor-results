.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -123 # instrumentation
CMOVNZ RDI, RDX 
SAHF  
CMOVNO SI, SI 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], CL 
CMOVS AX, DI 
SETNZ DL 
CMOVB ECX, ECX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RSI] 
AND DX, 3 
BT DX, DI 
CMOVNBE CX, DI 
XOR EAX, 1608767556 
BTC EAX, EBX 
AND SIL, 96 # instrumentation
SETNP BL 
CMOVLE BX, DX 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, 90 # instrumentation
SETNO CL 
AND AL, -117 
XCHG DX, AX 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], -46 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
BTC RDI, -88 
AND DIL, 101 # instrumentation
CMOVLE RSI, RBX 
CMOVO RSI, RDX 
NOT DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RCX] 
STD  
SETNBE BL 
CMOVS ESI, EBX 
SETNP DL 
XOR RAX, 21 
BT DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
