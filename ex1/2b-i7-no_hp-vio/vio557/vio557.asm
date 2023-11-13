.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 68 # instrumentation
SETNB AL 
BTR RBX, RSI 
TEST AL, 78 
NOT AX 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RDX], RAX 
OR RSI, 62 
CMOVNO DX, DX 
CMOVLE SI, CX 
LEA RBX, qword ptr [RBX + RAX + 41891] 
CMOVNP EDI, EDI 
BTR RDI, RBX 
TEST RDX, RDI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR BX, SI 
MOV BL, AL 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
CMOVP RDX, RCX 
MOV ECX, -834798673 
CMOVS DX, DX 
SETNS AL 
MOV SI, SI 
CMOVBE DI, DI 
CMOVS AX, DX 
BTC RBX, 109 
AND DIL, -126 # instrumentation
CMOVS AX, BX 
CMOVNZ ESI, EDI 
AND CL, 93 
SETNZ CL 
OR RBX, RBX 
TEST EBX, -1670649291 
BTC SI, DX 
OR SIL, CL 
CMOVBE RDI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
