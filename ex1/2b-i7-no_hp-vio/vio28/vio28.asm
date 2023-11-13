.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DL, 25 
MOVZX RAX, DX 
MOVSX RCX, AX 
CMOVLE EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTS qword ptr [R14 + RBX], RBX 
OR DX, 78 
NOT ESI 
SETZ DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], -85 
XCHG EBX, ECX 
CMPXCHG EDX, ESI 
TEST EAX, -308485546 
CMOVB EDX, EDX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], RSI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR BL, CL 
AND RAX, 911208119 
CMOVL DI, DI 
AND RCX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RCX], 3 
CMOVNBE CX, SI 
BT EBX, ESI 
AND SIL, -31 # instrumentation
SETNP AL 
SETNZ DIL 
XCHG EBX, ESI 
MOVZX SI, CL 
CMPXCHG CL, SIL 
AND RAX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RAX] 
BTC RAX, -70 
AND SIL, 105 # instrumentation
SETNO DL 
TEST EAX, 1989671552 
CMOVLE RDI, RAX 
BTS DX, -14 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
