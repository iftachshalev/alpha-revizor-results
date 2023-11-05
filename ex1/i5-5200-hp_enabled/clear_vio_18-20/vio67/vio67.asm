.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG ECX, ECX 
BSWAP RBX 
AND RCX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RCX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], -22 
CMOVNBE DX, SI 
CMOVB RCX, RAX 
TEST BX, 9476 
TEST AX, -30547 
AND EAX, -464801501 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], ECX 
SETL AL 
CMOVB DX, DX 
CMOVNB DX, AX 
AND EAX, ESI 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RBX] 
OR RBX, -28 
OR RAX, 1149477543 
AND RCX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTS dword ptr [R14 + RCX], EDI 
XOR EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], BX 
OR CL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RSI] 
XOR RDX, RAX 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 1472664786 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], 1382605889 
MOV CL, -67 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], BL 
CLD  
BTC RCX, -89 
AND SIL, -87 # instrumentation
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RSI], RBX 
OR RSI, -86 
CMOVNL EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
