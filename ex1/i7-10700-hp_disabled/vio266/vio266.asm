.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DL, -125 
OR AL, 114 
BTC SI, -81 
CMOVBE EBX, EDX 
AND DI, SI 
SETNL BL 
OR DIL, -44 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOVZX BX, AL 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], EDI 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
OR EAX, -810821304 
AND RSI, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RSI] 
CMPXCHG SI, DI 
XCHG EAX, EAX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG CL, CL # instrumentation
CMOVNZ AX, word ptr [R14 + RDI] 
MOV SIL, -114 
MOV SIL, SIL 
LAHF  
MOVSX ESI, DL 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 81 # instrumentation
MOVZX RDI, DI 
SETB DL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDI] 
AND RBX, 37 
CMOVNO EAX, EDX 
BTC BX, SI 
AND SIL, 119 # instrumentation
CMOVNP RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], EAX 
CLC  
CWDE  
CMOVNP RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
