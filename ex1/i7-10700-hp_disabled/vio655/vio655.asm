.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RCX] 
XOR AL, DL 
AND RDX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDX], 0 
AND RCX, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RCX] 
OR RAX, 786312037 
BTC RDI, RAX 
CWD  
BTS DX, CX 
BT BX, -86 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], AL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND ESI, EDI 
MOV BL, 6 
SETP DL 
MOV SIL, 70 
OR EAX, -1908064069 
CMOVS RDI, RDX 
SETNZ CL 
CMOVS EDI, ECX 
AND AL, BL 
MOVSX DI, BL 
XOR DL, AL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], ECX 
CMOVNS EDX, ESI 
CMOVNB EDX, EDX 
XOR BL, CL 
CMOVS RDX, RAX 
BTS EAX, 98 
OR EDI, EDX 
XCHG EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
