.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS DI, -16 
NOT RBX 
TEST RDX, -915483502 
CMOVNO RDI, RDI 
BTS BX, -47 
AND DIL, 7 # instrumentation
MOV CX, -16210 
CMOVL DX, CX 
SETBE DL 
CMOVB EAX, EAX 
OR CL, 103 
CMOVNL CX, AX 
AND RSI, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RSI] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD BL, CL 
XADD AL, BL 
CMOVBE AX, AX 
BTR EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDI], 0 
MOVZX EDI, BX 
MOV ESI, 1746284162 
CMPXCHG RDI, RSI 
CMOVNL ESI, ECX 
AND ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BT qword ptr [R14 + RBX], RDI 
AND DIL, -122 # instrumentation
CMOVNZ EAX, EDX 
CMOVLE RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
MOVZX RSI, DL 
AND RSI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RSI] 
CMPXCHG RBX, RDI 
MOVSX EDX, DI 
CWD  
MOVSX RBX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
