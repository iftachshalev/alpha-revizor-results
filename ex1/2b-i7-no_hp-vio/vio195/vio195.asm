.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD BL, BL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RSI] 
XOR EAX, EDI 
MOVZX BX, BL 
CMOVNL CX, CX 
CMOVL EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDX] 
BT RDX, 100 
LEA AX, qword ptr [RBX + RDX + 48273] 
TEST AX, -9359 
XOR EAX, -17 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], DL 
SETLE AL 
BTS EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], -74 
CMOVNLE EDX, EDI 
MOVSX EBX, BL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR RAX, 258335559 
CMOVNBE RDI, RAX 
BTS RBX, RCX 
AND SIL, 114 # instrumentation
SETNO BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], -35 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -8 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDX] 
CMOVP RAX, RCX 
XOR RCX, RDX 
OR EDX, -54 
NOT CX 
BTC CX, -72 
XADD AL, AL 
SETLE BL 
CMOVNBE RSI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
