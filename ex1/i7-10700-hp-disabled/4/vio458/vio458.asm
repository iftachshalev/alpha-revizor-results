.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RAX, 641776889 
SETB CL 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND CL, BL 
AND RDX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTC word ptr [R14 + RDX], DI 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], CL 
MOVZX EBX, AL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST DX, DX 
AND AL, 30 
CMOVNLE EDX, ESI 
CMOVNLE EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RDX 
STD  
NOT DIL 
SETNBE CL 
SETNB DIL 
OR CL, SIL 
OR BX, 75 
CMOVNS EDI, ESI 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -105 # instrumentation
MOVSX EDI, CL 
CMOVLE RCX, RBX 
CMOVP EAX, EAX 
SETNZ SIL 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 102 
MOVZX RSI, DX 
OR DL, -113 
OR ESI, -22 
BTS RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDI] 
SETNO SIL 
XOR RAX, -1798743538 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
