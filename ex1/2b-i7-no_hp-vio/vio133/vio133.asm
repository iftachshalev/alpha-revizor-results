.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, -1882795084 
XOR AL, 74 
BT SI, SI 
AND DIL, -113 # instrumentation
MOV BL, -54 
SETNL AL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RAX] 
AND SIL, -98 # instrumentation
SETP CL 
BTR RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RAX] 
SETNP AL 
MOVZX EDX, CL 
SETNL DL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RSI 
AND DIL, -12 # instrumentation
NOT RCX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 29 # instrumentation
SETNL BL 
XOR DX, SI 
AND RDX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDX], 5 
AND SIL, -17 # instrumentation
CMOVNP BX, CX 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
CLD  
CBW  
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], AL 
SETNO BL 
CMC  
SETP CL 
MOVSX ESI, DI 
TEST EAX, -2043818667 
XOR CX, 100 
MOVZX EBX, AL 
BTS AX, CX 
CMPXCHG RSI, RDX 
BTC CX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
