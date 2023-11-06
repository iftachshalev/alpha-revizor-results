.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 17 # instrumentation
CMOVNLE AX, SI 
BT RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -63 # instrumentation
CMOVO RDI, RSI 
MOV SIL, DIL 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND EAX, -27945687 
MOVZX EDI, AL 
BTC EBX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDX], 6 
AND SIL, 86 # instrumentation
CMOVP ECX, EDI 
SETBE DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDI] 
SETLE DIL 
CMOVNLE RCX, RAX 
MOV RAX, -795024230005462911 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -55 # instrumentation
CBW  
SETNO DIL 
CWD  
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RDX 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -30 # instrumentation
XCHG AL, DL 
MOV CX, 14426 
SETNO CL 
AND RBX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RBX] 
CMOVNO ECX, ESI 
TEST SIL, DIL 
XOR RAX, 1880804485 
CMOVNL RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RSI], 1 
AND SIL, -95 # instrumentation
SETNO CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
