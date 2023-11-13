.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BT qword ptr [R14 + RSI], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDX] 
SETNL CL 
NOT CL 
CMOVNBE RCX, RAX 
BTC EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RAX], 6 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
CMOVNBE EDX, EDI 
MOV EDI, -1730340700 
CWD  
AND RBX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 118 # instrumentation
CMOVNO EDX, EAX 
BT RSI, RCX 
AND DIL, 8 # instrumentation
CMOVNO EDX, ESI 
XCHG RCX, RCX 
MOV EDX, 1798840840 
MOVZX RSI, AL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], -66 
AND RDI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], BX 
NOT BL 
SETNS DL 
AND BL, -39 
SETNBE CL 
CMOVP EDX, EDI 
MOV ECX, 618197462 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDI] 
BT EBX, EDX 
AND SIL, -37 # instrumentation
CMOVNP RBX, RAX 
AND CL, 19 
AND RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
