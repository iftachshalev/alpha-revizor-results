.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AL, -122 
CMOVNP RCX, RBX 
MOV RDX, RCX 
XOR DIL, 113 
AND DX, -18 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 34 
TEST RAX, -1615658519 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], -1246 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTC dword ptr [R14 + RDI], EBX 
AND DIL, 12 # instrumentation
SETS DL 
CMOVNZ CX, DX 
MOV SI, -30226 
JMP .bb_main.3 
.bb_main.3:
AND AL, -63 
MOVZX ESI, DL 
MOV BL, 91 
SETL DL 
SETNO BL 
CMOVBE DX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDX] 
TEST EDI, 1892443701 
XCHG RDX, RBX 
SETNB DL 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND BL, 99 
AND RBX, 0b1111111111111 # instrumentation
AND DIL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RAX] 
SETNL SIL 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 5 
AND DIL, 110 # instrumentation
CMOVLE EBX, ECX 
TEST SI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
