.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -72 # instrumentation
CMOVNL RDI, RSI 
OR RAX, -652751218 
TEST EAX, -1483618568 
TEST RAX, -1382882757 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 63 # instrumentation
CMOVP DI, DX 
MOV BX, DX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RCX 
AND DIL, 2 # instrumentation
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDX] 
SETL CL 
XCHG BL, DL 
CMOVNB SI, CX 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -4 # instrumentation
CMOVNS RDI, RAX 
AND RDX, 63 
XCHG DX, AX 
MOVSX RCX, SI 
MOVZX EDX, DX 
SETZ BL 
OR EBX, ESI 
BSWAP RDI 
CMPXCHG BX, AX 
XADD DI, BX 
AND CL, DL 
JMP .bb_main.4 
.bb_main.4:
XCHG EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDX] 
SETNP DL 
SETNP SIL 
CMOVS BX, DI 
AND SIL, 25 
OR BX, -102 
AND RBX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], RDI 
AND ESI, EDI 
BSWAP RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
