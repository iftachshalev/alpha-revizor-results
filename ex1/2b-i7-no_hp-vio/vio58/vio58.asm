.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RSI] 
CMOVO DI, AX 
XOR BL, BL 
STD  
MOVSX EDI, AL 
CMOVS RAX, RCX 
CMOVNB ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
XCHG RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], CX 
CMOVNZ EAX, EDI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR CL, 117 
TEST ESI, ECX 
CMOVNO EDI, EBX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], 5 
SETNZ CL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDI 
AND SIL, 48 # instrumentation
CMOVBE RSI, RBX 
SETNO AL 
SETNS CL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RAX] 
MOVSX BX, DL 
SETO SIL 
NOT AL 
BTC RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], 28730 
CMOVNS EBX, EAX 
BT RAX, -112 
AND DIL, -39 # instrumentation
BSWAP EAX 
SETLE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
