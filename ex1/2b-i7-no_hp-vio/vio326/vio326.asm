.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -31 # instrumentation
MOVSX RBX, BL 
XCHG DL, AL 
CMOVNL EDI, EDI 
SETNBE DL 
BTS RCX, 95 
AND DIL, 51 # instrumentation
CMOVNLE RCX, RSI 
XOR EDI, -29 
TEST DL, 45 
CMOVP ESI, EAX 
TEST EAX, 137623641 
AND SIL, -117 
SETZ SIL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DX, -107 
CMOVLE RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDI] 
XOR DX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDI] 
TEST RAX, 159118083 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], -69 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
CMOVO ECX, ECX 
CMOVBE RDX, RDX 
XADD EBX, ESI 
MOVZX SI, SIL 
CMOVNL EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RSI] 
CMOVNZ RAX, RAX 
CMOVNO EDX, EBX 
CMOVP EBX, EBX 
OR EBX, EDX 
AND DL, DL 
CMOVNBE EBX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
