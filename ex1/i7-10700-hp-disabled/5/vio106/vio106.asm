.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STD  
CMPXCHG DL, BL 
AND AL, 38 
SETLE AL 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EBX 
BTS DX, CX 
MOVZX CX, CL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 37 # instrumentation
XCHG ESI, EAX 
SETNLE DL 
BTR DX, BX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 18 
XOR RAX, RAX 
SETNS AL 
TEST EBX, -1578962587 
BT RAX, 35 
AND DI, 52 
AND RSI, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTS dword ptr [R14 + RSI], EDI 
JMP .bb_main.2 
.bb_main.2:
BTS EDI, EAX 
AND SIL, -8 # instrumentation
CMOVL EDX, EAX 
SETNLE AL 
CMOVNLE AX, SI 
BTS RSI, 72 
XOR EAX, 1647155350 
BTC EBX, -87 
AND DIL, 59 # instrumentation
CMOVB EBX, EDX 
CMOVNS RSI, RDI 
MOVSX ESI, CL 
AND RSI, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RSI] 
XADD RAX, RCX 
OR RAX, -1902727861 
XCHG DIL, BL 
AND RAX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
