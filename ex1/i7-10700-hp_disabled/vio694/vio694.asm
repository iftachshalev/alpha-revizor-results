.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 9 # instrumentation
LEA AX, qword ptr [RAX] 
MOV DX, BX 
CMOVZ RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], EAX 
CMOVS AX, SI 
SETP DIL 
JMP .bb_main.1 
.bb_main.1:
CBW  
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], AL 
NOT AL 
LEA RBX, qword ptr [RSI + RDX + 40123] 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
MOV ESI, EDI 
MOVSX EAX, CX 
MOV DIL, -23 
CMPXCHG DL, AL 
BTC RSI, 90 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RAX] 
MOV EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 84 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 8 # instrumentation
CMOVNLE DI, BX 
CMOVNO ECX, EAX 
TEST DL, DL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RAX] 
CMOVS AX, AX 
NOT ECX 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], RCX 
CMC  
SETNLE AL 
SETNO DL 
XOR DX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
