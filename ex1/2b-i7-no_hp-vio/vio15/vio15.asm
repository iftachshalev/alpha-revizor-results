.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -98 # instrumentation
SETZ DL 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDI] 
NOT ECX 
NOT RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RDI] 
TEST DI, AX 
AND RAX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RAX], 0 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], 105 
AND DIL, -54 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RCX] 
MOVSX EBX, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDI], CX 
BTC EDX, ECX 
AND EDI, ECX 
MOV BL, 70 
MOV ESI, -1448801952 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR RCX, RAX 
OR EAX, -1039977076 
CLC  
CMOVL SI, BX 
XOR RDI, RDX 
CMOVB CX, BX 
TEST AX, 21243 
MOV DL, AL 
MOVZX RSI, CX 
XOR DIL, DL 
XOR SIL, 22 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], EDX 
MOVZX BX, CL 
AND RAX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RAX] 
XOR SIL, -38 
CMOVO ESI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
