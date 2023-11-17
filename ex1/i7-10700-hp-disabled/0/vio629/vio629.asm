.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 112 # instrumentation
CLD  
CMOVL EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], 35 
SETO AL 
CMOVNP RSI, RDI 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  
XADD DL, AL 
SETNZ CL 
BTC RDX, 66 
XOR RAX, -243193723 
CMOVNB SI, DX 
CMOVB RDI, RAX 
LEA EDX, qword ptr [RBX + RAX + 24831] 
MOVSX RDX, AL 
TEST SIL, 2 
CMOVNS RSI, RDI 
CWD  
XOR DI, DI 
MOVZX RDI, AL 
XOR SIL, SIL 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], DL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
BTS CX, BX 
XOR BL, 20 
SETNP DIL 
MOV BL, DL 
SETLE AL 
SETNBE AL 
TEST EAX, -635088491 
CMOVNLE RAX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
