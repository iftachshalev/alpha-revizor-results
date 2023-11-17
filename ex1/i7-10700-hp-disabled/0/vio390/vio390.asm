.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD ESI, EDX 
SETNL BL 
CMOVNP SI, AX 
XCHG BX, BX 
CMPXCHG RSI, RSI 
SETO DL 
XOR DL, CL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RSI], RAX 
SETNO BL 
CMOVNO SI, BX 
CMPXCHG EDX, EDX 
MOVZX EDI, CL 
OR RAX, 780631120 
CMOVL EAX, EDX 
CMOVNBE AX, CX 
XOR ECX, 85 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -104 # instrumentation
CMOVNB RSI, RCX 
BTR DX, -29 
AND DIL, 14 # instrumentation
SETNL DIL 
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
CMOVNO EDI, ESI 
XADD AL, DL 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RSI], 3 
STD  
CMOVNB RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RCX] 
OR EAX, 687606834 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RCX] 
AND AX, -115 
AND RCX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RCX] 
STD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
