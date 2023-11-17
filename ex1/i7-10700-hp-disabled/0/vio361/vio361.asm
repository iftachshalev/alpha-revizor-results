.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 42 # instrumentation
SETP AL 
CMOVNBE EDX, ESI 
SETZ AL 
CMOVNLE RAX, RCX 
XOR EAX, 1407740000 
SETP AL 
CMOVBE EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 6 
NOT RBX 
CMOVNB SI, DX 
XCHG RBX, RAX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDI] 
XCHG EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDX] 
CMOVL RCX, RAX 
XCHG EBX, EAX 
CMOVNS EAX, EBX 
CMPXCHG CX, AX 
CMPXCHG AX, AX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RDI 
BTC DI, AX 
AND DIL, 5 # instrumentation
BSWAP RAX 
SETZ CL 
CMOVS EDI, ESI 
NOT EBX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RAX] 
AND SIL, 42 # instrumentation
CMOVS AX, AX 
XOR EDX, 33 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RCX] 
XCHG SI, AX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
