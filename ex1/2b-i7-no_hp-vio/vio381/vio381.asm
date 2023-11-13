.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -28 # instrumentation
CMOVNLE RAX, RDX 
MOVSX EDX, BX 
BTS EAX, -32 
AND SIL, 12 # instrumentation
SETO AL 
CMOVNS CX, BX 
XCHG CL, AL 
AND AX, 76 
MOV BL, AL 
SETZ BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RBX] 
OR RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RSI] 
MOVSX EDX, AL 
SETNZ CL 
BT RSI, -114 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -10 # instrumentation
SETS SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
CMOVZ RDX, RSI 
TEST EAX, -1003593667 
XADD ESI, EDX 
TEST SIL, AL 
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RCX] 
BTC CX, DX 
BTC EBX, EAX 
XOR EDX, EDI 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], DL 
BTR RCX, RAX 
CMOVBE EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
