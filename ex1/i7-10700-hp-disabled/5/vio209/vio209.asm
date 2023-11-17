.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
CMOVNP RBX, RCX 
TEST SIL, 73 
SETNP AL 
SETNB DL 
SETL BL 
OR BX, 0b1000000000000000 # instrumentation
BSF DX, BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], 97 
MOVZX ESI, BL 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
XCHG DIL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
MOVZX SI, AL 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], DIL 
AND RSI, 0b1111111111111 # instrumentation
OR EDI, dword ptr [R14 + RSI] 
MOV BX, DX 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -126 # instrumentation
CMOVNP BX, BX 
XOR BL, DL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -98 # instrumentation
MOVZX RDX, BX 
NOT BL 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BTC DX, -19 
AND SIL, -11 # instrumentation
SETNL CL 
BTS RCX, 69 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BT qword ptr [R14 + RSI], RSI 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EAX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 31 
TEST DIL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
