.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG ESI, EBX 
NOT EDI 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], AX 
BTR EDX, ECX 
OR RAX, -1295251511 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RCX] 
SETNBE DL 
SETNO CL 
AND RAX, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RAX] 
OR DL, AL 
XCHG EDX, EAX 
SETNO CL 
SETNZ DL 
SETLE AL 
MOVZX ECX, BL 
SETZ BL 
BTR RAX, -48 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RCX] 
CMOVNL AX, BX 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], AX 
AND AL, 82 
CMOVNLE RBX, RDI 
SETNO DIL 
CMOVBE RDX, RSI 
AND EDX, EDX 
SETNP BL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
OR RAX, 355573018 
SETNLE AL 
TEST EAX, 1317283151 
XADD RDI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
