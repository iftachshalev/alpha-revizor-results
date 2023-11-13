.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RCX] 
CMOVS SI, AX 
CMOVLE RDX, RDX 
CMPXCHG DX, CX 
SETNP AL 
SETL BL 
OR ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTR dword ptr [R14 + RAX], EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RSI] 
CMOVNZ EDX, EDI 
SETNB DL 
CMOVNP BX, SI 
SETNP DL 
CMOVNP AX, AX 
BTS EBX, 3 
AND SIL, 63 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG BL, DIL 
AND RBX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RBX] 
CLD  
TEST EDX, -1892242564 
AND RBX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RBX], 1 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RSI] 
OR RSI, RDX 
SETP AL 
TEST EAX, 1619640849 
MOV ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDI] 
MOVSX DX, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], 113 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RCX 
TEST AX, 31982 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
