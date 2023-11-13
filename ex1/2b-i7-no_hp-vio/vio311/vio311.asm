.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], 0 
CMPXCHG CL, CL 
LEA RSI, qword ptr [RDX] 
MOVSX EDI, DIL 
MOVZX AX, BL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RAX] 
XOR AL, -80 
STC  
MOV BX, SI 
BTC CX, CX 
AND DIL, 51 # instrumentation
CMOVP RDI, RDI 
LEA ESI, qword ptr [RDX] 
CMOVNBE EDI, EBX 
SETNZ BL 
BTR RSI, 34 
AND DIL, -49 # instrumentation
MOV DX, DI 
LEA BX, qword ptr [RSI] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -93 # instrumentation
CMOVNLE CX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RSI] 
AND DL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RAX] 
MOV RDI, RSI 
XOR RAX, RDI 
XCHG CL, AL 
AND RSI, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RSI] 
XOR RCX, RSI 
CMOVLE ESI, EDX 
SETP CL 
XOR AL, -98 
CMOVNZ ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
