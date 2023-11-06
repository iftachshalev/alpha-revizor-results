.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOP  
CMPXCHG EAX, ECX 
MOVZX EDI, BL 
BTC RCX, RSI 
XOR AX, -23571 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ECX 
AND SIL, 88 # instrumentation
CDQ  
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTR word ptr [R14 + RCX], CX 
AND RSI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RSI] 
OR CX, SI 
CMOVS RAX, RCX 
BT BX, 16 
AND SIL, -47 # instrumentation
CMOVNP EDX, EAX 
CWDE  
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], CL 
MOV AL, AL 
SETNL DL 
MOVSX EAX, DL 
XADD EDX, ESI 
OR DI, 69 
MOVZX RCX, SI 
BT RBX, RDI 
XOR BL, BL 
OR RAX, -37 
CMOVNB ESI, EDI 
JMP .bb_main.3 
.bb_main.3:
MOV SI, 28433 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RCX] 
AND DIL, 92 # instrumentation
CMOVNP RDX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
TEST RCX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
