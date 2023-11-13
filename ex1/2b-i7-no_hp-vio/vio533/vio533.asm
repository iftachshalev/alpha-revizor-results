.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT EBX, 113 
XOR SI, -25 
CMOVNL EDX, EDX 
CMOVP RCX, RSI 
OR EAX, 1862334259 
CMOVNZ RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTS dword ptr [R14 + RCX], EDI 
AND SIL, 31 # instrumentation
SETS CL 
AND RDX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTR word ptr [R14 + RDX], AX 
BT RCX, -103 
CBW  
MOV BL, BL 
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], EDX 
CLC  
XCHG EBX, ESI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR DIL, -72 
BTS EDI, ECX 
AND DX, AX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RDI] 
BTS ESI, EDI 
AND DIL, -14 # instrumentation
SETNS DL 
MOVZX AX, AL 
OR DI, 0b1000000000000000 # instrumentation
BSF SI, DI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RSI] 
BSWAP EDX 
CMOVNBE ESI, ECX 
AND RCX, 71 
BTS EDX, -12 
MOVSX ESI, BL 
CMPXCHG SI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
