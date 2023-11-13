.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CL, -72 
BTR CX, -46 
AND SIL, -18 # instrumentation
CMOVS ECX, ESI 
SETNZ CL 
MOV SI, -1933 
SETLE CL 
XOR EAX, EAX 
MOV RBX, -8233634815191847023 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RSI] 
SETBE SIL 
TEST EAX, -1055578296 
CMPXCHG BX, DI 
XADD CX, SI 
SETS BL 
BT ECX, 80 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], -74 
CMOVNLE EAX, ECX 
SETB BL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -24 # instrumentation
XCHG SI, DI 
XCHG RCX, RAX 
SETS BL 
CMOVLE EDX, EDX 
CMOVNP EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RDX] 
SETO DIL 
BTC EDI, ESI 
XOR DL, BL 
CLC  
BTR RCX, 78 
AND DIL, 26 # instrumentation
SETP BL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DIL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
