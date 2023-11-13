.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -79 # instrumentation
CMOVNZ EDI, EDX 
TEST ESI, ECX 
CMOVO RAX, RCX 
XOR AX, 23637 
BT RAX, RBX 
MOV DL, SIL 
MOV BL, 19 
MOVZX DI, DL 
MOVZX DI, CL 
AND CL, CL 
OR AL, -117 
XOR EDI, 76 
CMOVBE DI, SI 
CMOVLE BX, DX 
CMPXCHG DI, DX 
MOV SI, 19077 
SETNL BL 
AND RCX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RCX], EAX 
AND DIL, -90 # instrumentation
SETNL DL 
MOV RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RCX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], RDI 
AND AL, -53 
SETNBE BL 
AND AL, DIL 
AND EAX, EBX 
BT ECX, -8 
AND DIL, -29 # instrumentation
LEA EDX, qword ptr [RBX] 
CMOVNL RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], -81 
SETL CL 
AND RCX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
