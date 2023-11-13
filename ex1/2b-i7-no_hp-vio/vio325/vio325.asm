.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST DL, SIL 
CMOVBE DI, SI 
SETO BL 
CMOVB SI, DX 
NOP  
TEST RDX, -377060402 
CMC  
MOVSX EBX, CX 
AND EAX, ESI 
TEST AX, 4357 
MOV EDX, -1632708866 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RAX 
AND CX, CX 
SETS BL 
BTR EDI, 69 
XOR EAX, 1890514578 
CMOVNLE RDI, RAX 
CWD  
BTC RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RSI] 
SETB SIL 
CWD  
MOV DX, 5550 
CMOVS DI, DI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDX] 
AND DIL, -10 # instrumentation
CMOVP RBX, RCX 
XOR RAX, 1346273693 
XOR BX, 31 
SETZ CL 
MOVZX EAX, AL 
XOR RAX, -75 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
