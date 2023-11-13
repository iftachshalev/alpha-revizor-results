.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RDI, 83 
CMOVBE ECX, ESI 
MOVSX RDI, DI 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTS qword ptr [R14 + RDI], RAX 
SETBE SIL 
XADD CL, AL 
CMOVBE RBX, RAX 
BTR DX, -13 
OR EDI, 24 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], ECX 
NOT EBX 
MOVZX ESI, DL 
BTR DX, AX 
STD  
TEST DIL, DIL 
BTR EDI, EAX 
AND SIL, 64 # instrumentation
CMOVNBE DX, AX 
CMOVP RSI, RDI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RCX] 
SETNS AL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RBX] 
BTS DX, AX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RAX] 
TEST RAX, -161335807 
MOV RCX, 8819286371327686965 
BSWAP EAX 
CMOVL CX, AX 
SETNL CL 
XCHG DI, AX 
STC  
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDX] 
SETNP CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
