.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -40 # instrumentation
CMOVS AX, CX 
CMOVNS SI, DX 
LEA ECX, qword ptr [RDI + RAX + 4170] 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], -37 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], DL 
MOVSX ESI, CL 
JMP .bb_main.1 
.bb_main.1:
MOV AL, -113 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RSI] 
NOT CL 
XCHG EDX, EAX 
CMOVNB EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RAX] 
XOR CL, BL 
XOR SIL, 83 
OR DI, -89 
TEST CL, SIL 
MOV BX, DI 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST DIL, -99 
OR CL, 89 
MOVZX EDI, CL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RSI 
LEA RBX, qword ptr [RSI + RDX + 53296] 
BTC SI, DX 
TEST RAX, 312148608 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
SETNZ BL 
AND AX, 81 
CMOVNZ RCX, RDI 
CMOVNLE ESI, EBX 
CMOVNB RDI, RBX 
XCHG CL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
