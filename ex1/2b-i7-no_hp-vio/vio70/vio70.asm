.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RDX, -5334133127320298828 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDI] 
SETNP BL 
BTS DI, 104 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RCX] 
CMOVNZ RCX, RDX 
CMOVBE ESI, ESI 
AND BL, CL 
NOT DI 
SETNLE AL 
SETS CL 
CMOVL RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], AL 
AND ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], -48 
SETNZ CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RCX] 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -16 # instrumentation
CMOVNBE EBX, EDI 
SETP BL 
TEST AX, 14761 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], SIL 
MOVSX AX, CL 
TEST BL, -123 
BTC DI, DX 
BTS SI, -49 
AND SIL, -120 # instrumentation
SETNP DL 
MOV BL, -47 
AND RCX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RCX], 7 
TEST AX, -30552 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RSI 
CMOVBE BX, CX 
AND RSI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
