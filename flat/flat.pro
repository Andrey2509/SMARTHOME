CoDeSys+t  �                   @        @   2.3.9.50    @/    @                             �	�] +    @                       7�\        �  @	   q   C:\TwinCAT\PLC\LIB\COMlibV2.lb6 @                                                                                          _RECEIVESTRING     
      RxString                ��              state            ��              c            ��              l            ��              l2            ��              pl            ��              sl            ��              iTimeout            ��              Receive                  ReceiveByte    ��              TimeoutTimer                    TOF    ��                 Prefix    Q       Q    ��              Suffix    Q       Q    ��              Timeout           ��              Reset            ��              pReceivedString                 ��       #    Pointer to variable length string    SizeReceivedString           ��           variable string size       StringReceived            ��              Busy            ��              Error            
   ComError_t   ��           	   RxTimeout            ��              ErrorCountPrefix           ��       +    invalid characters received before prefix    ReceivedPrefix    Q       Q    ��       .    received prefix including invalid characters       RXbuffer                   	   COMbuffer  ��                   �S  �    ����           _SENDSTRING           pos            ��              Send                  SendByte    ��              c            ��              ls            ��              
   SendString               ��                 Busy            ��              Error            
   ComError_t   ��                 TXbuffer                   	   COMbuffer  ��
                   �S  �    ����           _STRNCPY           d            ��              i            ��	                 pTargetString                 ��              pSourceString                 ��              MaxSize           ��                 _strncpy                                      �S  �    ����           ASC           pChar                  ��                 str    Q       Q    ��                 ASC                                     �S  �    ����           CHR           str1                ��              pChar                  ��                 c           ��                 CHR    Q       Q                              �S  �    ����           CLEARCOMBUFFER                       Buffer                   	   COMbuffer  ��                   �S  �    ����           COMRESET     	      TIME_OUT_VALUE    d      ��              RESETMASK_STANDARD          ��              RESETMASK_ALTERNATIVE          ��              Timeout                    TON    ��              state            ��              pCTRL                  ��              pSTATUS                  ��           	   ResetMask            ��              TriggerExecute                 R_TRIG    ��                 Execute            ��	              pComIn    	  A                            ��
       .    pointer to any KL6 or COM-Port process image    pComOut    	  A                            ��       .    pointer to any KL6 or COM-Port process image 	   SizeComIn           ��                 Done            ��              Busy            ��              Error            ��              ErrorID            
   ComError_t   ��                       �S  �    ����           GET_COMLIB_VERSION               bGet            ��                 Get_ComLib_Version                                         �S  �    ����           KL6CONFIGURATION           TIME_OUT_VALUE    d      ��              RESETMASK_STANDARD          ��              RESETMASK_ALTERNATIVE          ��              REGISTERACCESSMASK    �      ��           2011-09-12 KSt    state            ��              TriggerExecute                 R_TRIG    ��              R32            ��              R33            ��              R34            ��               CheckOK             ��!              RegisterList   	  #                   ComRegisterData_t            ��"              WriteRegisterList                                      KL6WriteRegisters    ��#              Timeout                    TON    ��$              pCTRL                  ��%              pSTATUS                  ��&           	   ResetMask            ��'                 Execute            ��              Mode               ComSerialLineMode_t   ��              Baudrate           ��       ?   	115200, 57600, 38400, 19200, 9600, 4800, 2400, 1200, 600, 300 
   NoDatabits           ��          	7 or 8    Parity               ComParity_t   ��       ,   	PARITY_NONE=0, PARITY_EVEN=1, PARITY_ODD=2    Stopbits           ��          	1 or 2 	   Handshake               ComHandshake_t   ��	       ;   	HANDSHAKE_NONE=0, HANDSHAKE_RTSCTS=1, HANDSHAKE_XONXOFF=2    ContinousMode            ��
       ;    don't start transmission before transmit buffer is filled    pComIn    	  A                            ��       &    for universal register communication    pComOut    	  A                            ��       &    for universal register communication 	   SizeComIn           ��                 Done            ��              Busy            ��              Error            ��              ErrorId            
   ComError_t   ��                       �S  �    ����           KL6READREGISTERS           TIME_OUT_VALUE    d      ��              REGISTERNUMBERMASK    ?      ��               REGISTERREADMASK    �      ��!              state            ��$              TriggerExecute                 R_TRIG    ��%              NumRegisters            ��&              n            ��'              Register            ��(              Value            ��)              Timeout                    TON    ��*              pCTRL                  ��+              pSTATUS                  ��,          	NumRegistersInList: INT;   i            ��.              SaveCTRL            ��/           	      Execute            ��              FirstRegister           ��              RegisterCount           ��              Mode               ComSerialLineMode_t   ��              pComIn    	  A                            ��       &    for universal register communication    pComOut    	  A                            ��       &    for universal register communication 	   SizeComIn           ��              pRegisterList    	  ?                    ComRegisterData_t                ��              SizeRegisterList           ��                 Done            ��              Busy            ��              Error            ��              ErrorId            
   ComError_t   ��                       �S  �    ����           KL6WRITEREGISTERS           TIME_OUT_VALUE    d      ��              REGISTERNUMBERMASK    ?      ��              REGISTERWRITEMASK    �      ��              state            ��"              TriggerExecute                 R_TRIG    ��#              NumRegisters            ��$              n            ��%              Register            ��&              Value            ��'              Timeout                    TON    ��(              pCTRL                  ��)              pSTATUS                  ��*              SaveCTRL            ��+                 Execute            ��              Mode               ComSerialLineMode_t   ��              pComIn    	  A                            ��       &    for universal register communication    pComOut    	  A                            ��       &    for universal register communication 	   SizeComIn           ��              pRegisterList    	  ?                    ComRegisterData_t                ��              SizeRegisterList           ��                 Done            ��              Busy            ��              Error            ��              ErrorId            
   ComError_t   ��                       �S  �    ����           RECEIVEBYTE                   ByteReceived            ��              ReceivedByte           ��              Error            
   ComError_t   ��                 RxBuffer                   	   COMbuffer  ��                   �S  �    ����           RECEIVEDATA           state            ��              c            ��              l            ��              iTimeout            ��              Receive                  ReceiveByte    ��              TimeoutTimer                    TOF    ��           	   ptrPrefix                  ��              pData                  ��              p1                  ��              p2                  ��               isEqual             ��!              i            ��"              pw            ��#                 pPrefix                 ��           	   LenPrefix           ��              pSuffix                 ��           	   LenSuffix           ��              pReceiveData                 ��              SizeReceiveData           ��              Timeout           ��	              Reset            ��
                 DataReceived            ��              busy            ��              Error            
   ComError_t   ��           	   RxTimeout            ��              LenReceiveData           ��                 RXbuffer                   	   COMbuffer  ��                   �S  �    ����           RECEIVESTRING           ReceiveStringStandard                                     _ReceiveString    ��              ErrorCountPrefix            ��       +    invalid characters received before prefix    ReceivedPrefix    Q       Q     ��       .    received prefix including invalid characters       Prefix    Q       Q    ��              Suffix    Q       Q    ��              Timeout           ��              Reset            ��                 StringReceived            ��	              Busy            ��
              Error            
   ComError_t   ��           	   RxTimeout            ��                 ReceivedString     Q       Q   ��              RXbuffer                   	   COMbuffer  ��                   �S  �    ����           RECEIVESTRING255           ReceiveStringStandard                                     _ReceiveString    ��              ErrorCountPrefix            ��       +    invalid characters received before prefix    ReceivedPrefix    Q       Q     ��       .    received prefix including invalid characters       Prefix    Q       Q    ��              Suffix    Q       Q    ��              Timeout           ��              Reset            ��                 StringReceived            ��	              Busy            ��
              Error            
   ComError_t   ��           	   RxTimeout            ��                 ReceivedString               ��              RXbuffer                   	   COMbuffer  ��                   �S  �    ����           SENDBYTE               SendByte           ��                 Busy            ��              Error            
   ComError_t   ��                 TxBuffer                   	   COMbuffer  ��                   �S  �    ����           SENDDATA           pos            ��              Send                  SendByte    ��              c            ��              dp                  ��              dpw            ��              	   pSendData                 ��              Length           ��                 Busy            ��              Error            
   ComError_t   ��                 TXbuffer                   	   COMbuffer  ��                   �S  �    ����        
   SENDSTRING           SendStringStandard                      _SendString    ��              
   SendString    Q       Q    ��                 Busy            ��              Error            
   ComError_t   ��                 TXbuffer                   	   COMbuffer  ��
                   �S  �    ����           SENDSTRING255           SendStringStandard                      _SendString    ��              
   SendString               ��                 Busy            ��              Error            
   ComError_t   ��                 TXbuffer                   	   COMbuffer  ��
                   �S  �    ����           SERIALLINECONTROL           ComPortDebugBuffer                 ComDebugBuffer    ��              InvalidDataExchangeMode            ��               RegisterMode            ��!              pCTRL                  ��"              pSTATUS                  ��#              RxCount            ��$              TxCount            ��%           	   DataIndex            ��&              DataCountMask            ��'              DataCountShift            ��(              ReceiveHandshakeBit            ��)              TransmitHandshakeBit            ��*              TransmitBufferSentBit            ��+              ContinousModeStartBit            ��,              ReceiveBufferFullBit            ��-              ResetBit            ��.              RR            ��/              RA            ��0              TR            ��1              TA            ��2              IA            ��3              BUF_F            ��4              noTAcounter            ��5              initialized             ��6              TransmitDataSent             ��7              i            ��8                 Mode               ComSerialLineMode_t   ��              pComIn    	  A                            ��       A    must meet the maximum size of a hardware related data structure    pComOut    	  A                            ��       A    must meet the maximum size of a hardware related data structure 	   SizeComIn           ��                 Error            ��              ErrorID            
   ComError_t   ��                 TxBuffer                   	   COMbuffer  ��              RxBuffer                   	   COMbuffer  ��                   �S  �    ����    n   C:\TwinCAT\PLC\LIB\TcpIp.lib @                                                                                          F_GETVERSIONTCPIP               nVersionElement           ��                 F_GetVersionTcpIp                                     �^�R  �    ����           FB_SOCKETACCEPT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_ACCEPT )              	   T_AmsPort           �                ADSRDWRT ` ��              fbRTrig                 R_TRIG ` ��              nStep         ` ��              response                ST_TcIpConnSvrResponse ` ��              request                ST_SockAddr ` ��              	   sSrvNetId           ''    
   T_AmsNetId   ��       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system	   hListener              	   T_HSOCKET   ��       x    Listener handle identifying a socket that has been placed in a listening state with the FB_SocketListen function block    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.    	   bAccepted            ��
       ;    TRUE = new connection is made. FALSE = no new connection.    bBusy            ��              bError            ��              nErrId           ��              hSocket              	   T_HSOCKET   ��       V   This returned value is a handle for the socket on which the actual connection is made.            �^�R  �   ����           FB_SOCKETCLOSE        
   fbAdsWrite       V    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CLOSEBYHDL, SRCADDR := 0, LEN := 0 )              	   T_AmsPort           �                   ADSWRITE ` ��              fbRTrig                 R_TRIG ` ��              nStep         ` ��              	   sSrvNetId           ''    
   T_AmsNetId   ��       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   ��       4    Local or remote client or listener socket to close.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��                       �^�R  �   ����           FB_SOCKETCLOSEALL        
   fbAdsWrite       y    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CLOSEALL, SRCADDR := 0, LEN := 0 )              	   T_AmsPort           �                      ADSWRITE ` ��              fbRTrig                 R_TRIG ` ��              nStep         ` ��              	   sSrvNetId           ''    
   T_AmsNetId   ��       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��	              bError            ��
              nErrId           ��                       �^�R  �   ����           FB_SOCKETCONNECT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CONNECT )              	   T_AmsPort           �                ADSRDWRT ` ��              fbRTrig                 R_TRIG ` ��              nStep         ` ��              request                ST_SockAddr ` ��              response                ST_TcIpConnSvrResponse ` ��              	   sSrvNetId           ''    
   T_AmsNetId   ��       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   sRemoteHost               ��       X    Remote (server) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           ��       .    Remote (server) Internet Protocol (IP) port.    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ȯ     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              hSocket              	   T_HSOCKET   ��       V   This returned value is a handle for the socket on which the actual connection is made.            �^�R  �   ����           FB_SOCKETLISTEN        
   fbAdsRdWrt       ]    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_LISTEN )              	   T_AmsPort           �                ADSRDWRT ` ��              fbRTrig                 R_TRIG ` ��              nStep         ` ��              request                ST_SockAddr ` ��              response                ST_TcIpConnSvrResponse ` ��              	   sSrvNetId           ''    
   T_AmsNetId   ��       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               ��       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           ��       -    Local (server) Internet Protocol (IP) port.    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��	       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��           	   hListener              	   T_HSOCKET   ��       _   This returned value is a handle for the listener socket on which the actual connection is made.            �^�R  �   ����           FB_SOCKETRECEIVE           fbAdsReadEx       <    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVBYHDL )              	   T_AmsPort           �         	   ADSREADEX ` ��              fbRTrig                 R_TRIG ` ��              nStep         ` ��              	   sSrvNetId           ''    
   T_AmsNetId   ��       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   ��       ?    Handle for the socket on which the actual connection is made.    cbLen           ��       3    Contains the max. number of bytes to be received.    pDest           ��       ;    Contains the address of the buffer for the received data.    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��	       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��           	   nRecBytes           ��       2    Contains the number of bytes currently received.             �^�R  �   ����           FB_SOCKETSEND        
   fbAdsWrite       >    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDBYHDL )              	   T_AmsPort           �           ADSWRITE ` ��              fbRTrig                 R_TRIG ` ��              nStep         ` ��              	   sSrvNetId           ''    
   T_AmsNetId   ��       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   ��       ?    Handle for the socket on which the actual connection is made.    cbLen           ��       *    Contains the number of bytes to be send.    pSrc           ��       D    Contains the address of the buffer containing the data to be send.    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��	       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��                       �^�R  �   ����           FB_SOCKETUDPADDMULTICASTADDRESS        
   fbAdsWrite       E    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_MULTICAST_ADDBYHDL )              	   T_AmsPort           �           ADSWRITE ` ��              fbRTrig                 R_TRIG ` ��              nStep         ` ��              	   sSrvNetId           ''    
   T_AmsNetId   ��       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   ��       )    udp socket to add multicast address  to.   sMulticastAddr               ��          Multicast address to add   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��                       �^�R  �   ����           FB_SOCKETUDPCREATE        
   fbAdsRdWrt       ^    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_UDPBIND )              	   T_AmsPort           �                ADSRDWRT ` ��              fbRTrig                 R_TRIG ` ��              nStep         ` ��              request                ST_SockAddr ` ��              response                ST_TcIpConnSvrResponse ` ��              	   sSrvNetId           ''    
   T_AmsNetId   ��       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               ��       N    Local address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           ��	       $    Local Internet Protocol (IP) port.    bExecute            ��
       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              hSocket              	   T_HSOCKET   ��       ?   This returned value is a handle for the bind (reserved) socket.            �^�R  �   ����            FB_SOCKETUDPDROPMULTICASTADDRESS        
   fbAdsWrite       F    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_MULTICAST_DROPBYHDL )              	   T_AmsPort         	  �           ADSWRITE ` ��              fbRTrig                 R_TRIG ` ��              nStep         ` ��              	   sSrvNetId           ''    
   T_AmsNetId   ��       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   ��       .    udp socket to remove multicast address  from.   sMulticastAddr               ��          Multicast address to remove   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��                       �^�R  �   ����           FB_SOCKETUDPRECEIVEFROM           fbAdsReadEx       @    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVFROMBYHDL )              	   T_AmsPort           �         	   ADSREADEX ` ��              fbRTrig                 R_TRIG ` ��              nStep         ` ��              buffer                ST_TcIpConnSvrUdpBuffer ` ��              	   sSrvNetId           ''    
   T_AmsNetId   ��       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   ��       ?    Handle for the socket on which the actual connection is made.    cbLen           ��       3    Contains the max. number of bytes to be received.    pDest           ��       ;    Contains the address of the buffer for the received data.    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��	       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              sRemoteHost               ��       p    Remote address from which the data was received. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           ��       G    Remote Internet Protocol (IP) port  from which the data was received. 	   nRecBytes           ��       2    Contains the number of bytes currently received.             �^�R  �   ����           FB_SOCKETUDPSENDTO        
   fbAdsWrite       @    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDTOBYHDL )              	   T_AmsPort           �           ADSWRITE ` ��              fbRTrig                 R_TRIG ` ��              nStep         ` ��              buffer                ST_TcIpConnSvrUdpBuffer ` ��              	   sSrvNetId           ''    
   T_AmsNetId   ��       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   ��       ?    Handle for the socket on which the actual connection is made.    sRemoteHost               ��       d    Remote address of the target socket. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           ��       :    Remote Internet Protocol (IP) port of the target socket.    cbLen           ��       *    Contains the number of bytes to be send.    pSrc           ��	       D    Contains the address of the buffer containing the data to be send.    bExecute            ��
       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��                       �^�R  �   ����    o   C:\TwinCAT\PLC\LIB\TcBase.lib @                                                                                          FW_ADSCLEAREVENTS           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��           
   READ_SAV_I             ��              TICKSTART_I            ��                 sNetId               ��              bClear            ��              nMode           ��              tTimeout           ��                 bBusy            ��	              bError            ��
              nErrId           ��                       ��J  �   ����           FW_ADSLOGDINT            	   nCtrlMask           ��              sMsgFmt               ��              nArg           ��                 FW_AdsLogDINT                                     ��J  �   ����           FW_ADSLOGEVENT        
   STAMPREQ_I            ��           
   STAMPRES_I            ��           
   STAMPSIG_I            ��           
   STAMPCON_I            ��              ACCESSCNT_I            ��           	   AMSADDR_I   	                         ��              EVENT_I                      
   FW_TcEvent    ��              pTCEVENTSTREAM_I            ��              CBEVENTSTREAM_I            ��              nSTATE_I            ��              nSTATEREQ_I            ��              nSTATERES_I            ��              nSTATESIG_I            ��               nSTATECON_I            ��!              ERR_I             ��"              ERRID_I            ��#              bEVENT_SAV_I             ��$              bEVENTQUIT_SAV_I             ��%              TICKSTART_I            ��&           	      sNetId               ��              nPort           ��              bEvent            ��           
   bEventQuit            ��              stEventConfigData                      
   FW_TcEvent   ��              pEventDataAddress           ��       	    pointer    cbEventDataLength           ��	           
   bFbCleanup            ��
              tTimeout           ��                 nEventState           ��              bError            ��              nErrId           ��              bQuit            ��                       ��J  �   ����           FW_ADSLOGLREAL            	   nCtrlMask           ��              sMsgFmt               ��              fArg                        ��                 FW_AdsLogLREAL                                     ��J  �   ����           FW_ADSLOGSTR            	   nCtrlMask           ��              sMsgFmt               ��              sArg               ��                 FW_AdsLogSTR                                     ��J  �   ����           FW_ADSRDWRT           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��              WRTRD_SAV_I             ��              PDESTADDR_I            ��              TICKSTART_I            ��           
      sNetId               ��              nPort           ��              nIdxGrp           ��              nIdxOffs           ��           
   cbWriteLen           ��           	   cbReadLen           ��           
   pWriteBuff           ��	           	   pReadBuff           ��
              bExecute            ��              tTimeout           ��                 bBusy            ��              bError            ��              nErrId           ��              cbRead           ��           count of bytes actually read             ��J  �   ����           FW_ADSRDWRTIND           CLEAR_I             ��                 bClear            ��           	      bValid            ��              sNetId               ��              nPort           ��           	   nInvokeId           ��	              nIdxGrp           ��
              nIdxOffs           ��           	   cbReadLen           ��           
   cbWriteLen           ��           
   pWriteBuff           ��                       ��J  �   ����           FW_ADSRDWRTRES        	   RESPOND_I             ��                 sNetId               ��              nPort           ��           	   nInvokeId           ��              nErrId           ��           	   cbReadLen           ��           	   pReadBuff           ��              bRespond            ��	                           ��J  �   ����        
   FW_ADSREAD           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��           
   READ_SAV_I             ��              TICKSTART_I            ��                 sNetId               ��              nPort           ��              nIdxGrp           ��              nIdxOffs           ��           	   cbReadLen           ��           	   pReadBuff           ��              bExecute            ��	              tTimeout           ��
                 bBusy            ��              bError            ��              nErrId           ��              cbRead           ��           count of bytes actually read             ��J  �   ����           FW_ADSREADDEVICEINFO           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��              RDINFO_SAV_I             ��              TICKSTART_I            ��                 sNetId               ��              nPort           ��              bExecute            ��              tTimeout           ��                 bBusy            ��	              bError            ��
              nErrId           ��              sDevName               ��              nDevVersion           ��                       ��J  �   ����           FW_ADSREADIND           CLEAR_I             ��                 bClear            ��                 bValid            ��              sNetId               ��              nPort           ��           	   nInvokeId           ��	              nIdxGrp           ��
              nIdxOffs           ��           	   cbReadLen           ��                       ��J  �   ����           FW_ADSREADRES        	   RESPOND_I             ��                 sNetId               ��              nPort           ��           	   nInvokeId           ��              nErrId           ��           	   cbReadLen           ��           	   pReadBuff           ��              bRespond            ��	                           ��J  �   ����           FW_ADSREADSTATE           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��              RDSTATE_SAV_I             ��              TICKSTART_I            ��                 sNetId               ��              nPort           ��              bExecute            ��              tTimeout           ��                 bBusy            ��	              bError            ��
              nErrId           ��           	   nAdsState           ��           	   nDevState           ��                       ��J  �   ����           FW_ADSWRITE           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��              WRITE_SAV_I             ��              TICKSTART_I            ��                 sNetId               ��              nPort           ��              nIdxGrp           ��              nIdxOffs           ��           
   cbWriteLen           ��           
   pWriteBuff           ��              bExecute            ��	              tTimeout           ��
                 bBusy            ��              bError            ��              nErrId           ��                       ��J  �   ����           FW_ADSWRITECONTROL           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��              WRITE_SAV_I             ��              TICKSTART_I            ��                 sNetId               ��              nPort           ��           	   nAdsState           ��           	   nDevState           ��           
   cbWriteLen           ��           
   pWriteBuff           ��              bExecute            ��	              tTimeout           ��
                 bBusy            ��              bError            ��              nErrId           ��                       ��J  �   ����           FW_ADSWRITEIND           CLEAR_I             ��                 bClear            ��                 bValid            ��              sNetId               ��              nPort           ��           	   nInvokeId           ��	              nIdxGrp           ��
              nIdxOffs           ��           
   cbWriteLen           ��           
   pWriteBuff           ��                       ��J  �   ����           FW_ADSWRITERES        	   RESPOND_I             ��                 sNetId               ��              nPort           ��           	   nInvokeId           ��              nErrId           ��              bRespond            ��                           ��J  �   ����           FW_DRAND           FirstCall_i             ��	           
   HoldRand_i            ��
              R250_Buffer_i   	  �                        ��           
   R250_Index            ��                 nSeed           ��                 fRndNum                        ��                       ��J  �   ����           FW_GETCPUACCOUNT                   dwCpuAccount           ��                       ��J  �   ����           FW_GETCPUCOUNTER                
   dwCpuCntLo           ��           
   dwCpuCntHi           ��                       ��J  �   ����           FW_GETCURTASKINDEX                   nIndex           ��                       ��J  �   ����           FW_GETSYSTEMTIME                   dwTimeLo           ��              dwTimeHi           ��                       ��J  �   ����           FW_GETVERSIONTCBASE               nVersionElement           ��                 FW_GetVersionTcBase                                     ��J  �   ����           FW_LPTSIGNAL            	   nPortAddr           ��              nPinNo           ��              bOnOff            ��	                 FW_LptSignal                                      ��J  �   ����        	   FW_MEMCMP               pBuf1           ��           First buffer    pBuf2           ��           Second buffer    cbLen           ��           Number of characters    	   FW_MemCmp                                     ��J  �   ����        	   FW_MEMCPY               pDest           ��           New buffer    pSrc           ��           Buffer to copy from    cbLen           ��           Number of characters to copy    	   FW_MemCpy                                     ��J  �   ����        
   FW_MEMMOVE               pDest           ��           New buffer    pSrc           ��           Buffer to copy from    cbLen           ��           Number of characters to copy    
   FW_MemMove                                     ��J  �   ����        	   FW_MEMSET               pDest           ��           Pointer to destination 	   nFillByte           ��           Character to set    cbLen           ��           Number of characters    	   FW_MemSet                                     ��J  �   ����           FW_PORTREAD            	   nPortAddr           ��           	   eNoOfByte               FW_NoOfByte   ��                 FW_PortRead                                     ��J  �   ����           FW_PORTWRITE            	   nPortAddr           ��           	   eNoOfByte               FW_NoOfByte   ��              nValue           ��                 FW_PortWrite                                      ��J  �   ����    q   C:\TwinCAT\PLC\LIB\TcSystem.lib @                                                                                T          ADSCLEAREVENTS           fbAdsClearEvents                            FW_AdsClearEvents ` ��                 NetID            
   T_AmsNetId   ��              bClear            ��              iMode           ��              tTimeout    �     ��                 bBusy            ��	              bErr            ��
              iErrId           ��                       "UVW  �   ����        
   ADSLOGDINT               msgCtrlMask           ��           	   msgFmtStr               T_MaxString   ��              dintArg           ��              
   ADSLOGDINT                                     "UVW  �    ����           ADSLOGEVENT           fbAdsLogEvent                                               FW_AdsLogEvent ` ��           	      NETID            
   T_AmsNetId   ��              PORT           ��              Event            ��           	   EventQuit            ��              EventConfigData               TcEvent   ��              EventDataAddress           ��       	    pointer    EventDataLength           ��	           	   FbCleanup            ��
              TMOUT    �     ��              
   EventState           ��              Err            ��              ErrId           ��              Quit            ��                       "UVW  �   ����           ADSLOGLREAL               msgCtrlMask           ��           	   msgFmtStr               T_MaxString   ��              lrealArg                        ��                 ADSLOGLREAL                                     "UVW  �    ����        	   ADSLOGSTR               msgCtrlMask           ��           	   msgFmtStr               T_MaxString   ��              strArg               T_MaxString   ��              	   ADSLOGSTR                                     "UVW  �    ����           ADSRDDEVINFO           fbAdsReadDeviceInfo                              FW_AdsReadDeviceInfo    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              RDINFO            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              DEVNAME               ��              DEVVER           ��                       "UVW  �   ����        
   ADSRDSTATE           fbAdsReadState                              FW_AdsReadState    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              RDSTATE            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              ADSSTATE           ��              DEVSTATE           ��                       "UVW  �   ����           ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt    ��           
      NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              WRITELEN           ��              READLEN           ��              SRCADDR           ��	              DESTADDR           ��
              WRTRD            ��              TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��                       "UVW  �   ����        
   ADSRDWRTEX        
   fbAdsRdWrt                                    FW_AdsRdWrt    ��           
      NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              WRITELEN           ��              READLEN           ��              SRCADDR           ��	              DESTADDR           ��
              WRTRD            ��              TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��              COUNT_R           ��           count of bytes actually read             "UVW  �   ����           ADSRDWRTIND           fbAdsRdWrtInd                         FW_AdsRdWrtInd    ��                 CLEAR            ��           	      VALID            ��              NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              INVOKEID           ��	              IDXGRP           ��
              IDXOFFS           ��              RDLENGTH           ��           	   WRTLENGTH           ��              DATAADDR           ��                       "UVW  �    ����           ADSRDWRTRES           fbAdsRdWrtRes                      FW_AdsRdWrtRes    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              INVOKEID           ��              RESULT           ��              LEN           ��              DATAADDR           ��              RESPOND            ��	                           "UVW  �    ����           ADSREAD        	   fbAdsRead                              
   FW_AdsRead    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              LEN           ��              DESTADDR           ��              READ            ��	              TMOUT    �     ��
                 BUSY            ��              ERR            ��              ERRID           ��                       "UVW  �   ����        	   ADSREADEX        	   fbAdsRead                              
   FW_AdsRead    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              LEN           ��              DESTADDR           ��              READ            ��	              TMOUT    �     ��
                 BUSY            ��              ERR            ��              ERRID           ��              COUNT_R           ��           count of bytes actually read             "UVW  �   ����        
   ADSREADIND           fbAdsReadInd        	               FW_AdsReadInd    ��                 CLEAR            ��                 VALID            ��              NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              INVOKEID           ��	              IDXGRP           ��
              IDXOFFS           ��              LENGTH           ��                       "UVW  �    ����        
   ADSREADRES           fbAdsReadRes                      FW_AdsReadRes    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              INVOKEID           ��              RESULT           ��              LEN           ��              DATAADDR           ��              RESPOND            ��	                           "UVW  �    ����           ADSWRITE        
   fbAdsWrite                                FW_AdsWrite    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              LEN           ��              SRCADDR           ��              WRITE            ��	              TMOUT    �     ��
                 BUSY            ��              ERR            ��              ERRID           ��                       "UVW  �   ����           ADSWRITEIND           fbAdsWriteInd        
                FW_AdsWriteInd    ��                 CLEAR            ��                 VALID            ��              NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              INVOKEID           ��	              IDXGRP           ��
              IDXOFFS           ��              LENGTH           ��              DATAADDR           ��                       "UVW  �    ����           ADSWRITERES           fbAdsWriteRes                    FW_AdsWriteRes    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              INVOKEID           ��              RESULT           ��              RESPOND            ��                           "UVW  �    ����        	   ADSWRTCTL           fbAdsWriteControl                                FW_AdsWriteControl    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              ADSSTATE           ��              DEVSTATE           ��              LEN           ��              SRCADDR           ��              WRITE            ��	              TMOUT    �     ��
                 BUSY            ��              ERR            ��              ERRID           ��                       "UVW  �   ����           ANALYZEEXPRESSION               InputExp            ��           	   DoAnalyze            ��              	   ExpResult            ��           	   OutString               ��                       "UVW  �    ����           ANALYZEEXPRESSIONCOMBINED           Index            ��                 InputExp            ��           	   DoAnalyze            ��              	   ExpResult            ��              OutTable   	                        ExpressionResult           ��           	   OutString               ��	                       "UVW  �    ����           ANALYZEEXPRESSIONTABLE           Index            ��                 InputExp            ��           	   DoAnalyze            ��              	   ExpResult            ��              OutTable   	                        ExpressionResult           ��                       "UVW  �    ����           APPENDERRORSTRING               strOld               ��              strNew               ��                 AppendErrorString                                         "UVW  �    ����           BAVERSION_TO_DWORD               nVersion         ` ��           	   nRevision         ` ��	              nBuild         ` ��
                 BAVERSION_TO_DWORD                                     "UVW  �    ����        
   CLEARBIT32           dwConst        ` ��                 inVal32           ��              bitNo           ��              
   CLEARBIT32                                     "UVW  �    ����        	   CSETBIT32           dwConst        ` ��	                 inVal32           ��              bitNo           ��              bitVal            ��       &    value to which the bit should be set    	   CSETBIT32                                     "UVW  �    ����           DRAND           fbDRand                    FW_DRand ` ��
                 Seed           ��                 Num                        ��                       "UVW  �    ����           F_COMPAREFWVERSION           soll         ` ��              ist         ` ��                 major         ` ��           requiered major version    minor         ` ��	           requiered minor version    revision         ` ��
       )    requiered revision/service pack version    patch         ` ��       0    required patch version (reserved, default = 0 )      F_CompareFwVersion                                      "UVW  �    ����           F_CREATEAMSNETID           idx         ` ��                 nIds               T_AmsNetIdArr   ��           Ams Net ID as array of bytes.       F_CreateAmsNetId            
   T_AmsNetId                             "UVW  �    ����           F_CREATEIPV4ADDR           idx         ` ��                 nIds               T_IPv4AddrArr   ��       <    Internet Protocol dotted address (ipv4) as array of bytes.       F_CreateIPv4Addr            
   T_IPv4Addr                             "UVW  �    ����           F_GETSTRUCTMEMBERALIGNMENT           tmp                ST_StructMemberAlignmentProbe ` ��                     F_GetStructMemberAlignment                                     "UVW  �    ����           F_GETVERSIONTCSYSTEM               nVersionElement           ��                 F_GetVersionTcSystem                                     "UVW  �    ����           F_IOPORTREAD               nAddr           ��           Port address    eSize               E_IOAccessSize   ��           Number of bytes to read       F_IOPortRead                                     "UVW  �    ����           F_IOPORTWRITE               nAddr           ��           Port address    eSize               E_IOAccessSize   ��           Number of bytes to write    nValue           ��           Value to write       F_IOPortWrite                                      "UVW  �    ����           F_SCANAMSNETIDS           pNetID               ` ��              b               T_AmsNetIdArr ` ��              w         ` ��	              id         ` ��
           	   Index7001                            sNetID            
   T_AmsNetID   ��       :    String containing the Ams Net ID. E.g. '127.16.17.3.1.1'       F_ScanAmsNetIds               T_AmsNetIdArr                             "UVW  �    ����           F_SCANIPV4ADDRIDS           b               T_AmsNetIdArr ` ��           	   Index7001                            sIPv4            
   T_IPv4Addr   ��       M    String containing the Internet Protocol dotted address. E.g. '172.16.7.199'       F_ScanIPv4AddrIds               T_IPv4AddrArr                             "UVW  �    ����           F_SPLITPATHNAME           pPath               ` ��              pSlash               ` ��              pDot               ` ��              p               ` ��              length         ` ��              	   sPathName               T_MaxString   ��                 F_SplitPathName                                sDrive               ��              sDir                T_MaxString  ��           	   sFileName                T_MaxString  ��              sExt                T_MaxString  ��	                   "UVW  �    ����           F_TOASC           pChar               ` ��                 str    Q       Q    ��                 F_ToASC                                     "UVW  �    ����           F_TOCHR           pChar    	                            ` ��                 c           ��                 F_ToCHR    Q       Q                              "UVW  �    ����           FB_ADSREADWRITELIST           para                ST_AdsRdWrtListPara ` ��           	   fbTrigger                 R_TRIG ` ��              nState         ` ��              fbCall       �    ( 	sNetID := '', nPort := 16#1234,
									nIdxGrp := GENERIC_FB_GRP_ADS,
									nIdxOffs := GENERIC_FB_ADS_RDWRTLIST,
									bExecute := FALSE,  ACCESSCNT_I := 16#0000BEC1,
									tTimeout := DEFAULT_ADS_TIMEOUT )     ��                 4                     �         FW_AdsRdWrt ` ��           
      sNetId           ''    
   T_AmsNetID ` ��              nPort           0    	   T_AmsPort ` ��              nIdxGrp         ` ��              nIdxOffs         ` ��              cbWriteList         ` ��	           Byte size of list array 
   pWriteList                   ST_AdsReadWriteListEntry      ` ��
       !    Pointer to the first list entry 	   cbReadLen         ` ��           	   pReadBuff           0       PVOID ` ��              bExecute          ` ��              tTimeout    �   ` ��                 bBusy          ` ��              bError          ` ��              nErrID         ` ��              cbRead         ` ��                       "UVW  �   ����           FB_BADEVICEIOCONTROL           fbRW       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_BADEVAPI, IDXOFFS := 0 )              	   T_AmsPort         L                 
   ADSRDWRTEX ` ��              req                ST_AdsBaDevApiReq ` ��              state         ` ��              rtrig                 R_TRIG ` ��                 sNetID           ''    
   T_AmsNetID ` ��           Ams net id    affinity           ( lower :=0, higher := 0 )                T_U64KAFFINITY ` ��       )    Affinity mask (default  = 0 = not used) 	   nModifier         ` ��       +    Optional command modifier (0 == not used)    nIdxGrp         ` ��           Api function group    nIdxOffs         ` ��           Api function offset 
   cbWriteLen         ` ��	           Input data byte size 	   cbReadLen         ` ��
           Output data byte size 
   pWriteBuff         ` ��           Pointer to input data buffer 	   pReadBuff         ` ��           Pointer to output data buffer    bExecute          ` ��       &    Rising edge starts command execution    tTimeout    �   ` ��                 bBusy          ` ��              bError          ` ��              nErrID         ` ��              cbRead         ` ��           Count of bytes actually read             "UVW  �   ����           FB_BAGENGETVERSION           fbCtrl       �    ( nModifier := 0, affinity := ( lower := 0, higher := 0 ), nIdxGrp := BADEVAPIIGRP_GENERAL, nIdxOffs := BADEVAPIIOFFS_GENERAL_VERSION )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                                             FB_BaDeviceIoControl ` ��              rtrig                 R_TRIG ` ��              state         ` ��              rsp         ` ��                 sNetID           ''    
   T_AmsNetID ` ��           ams net id    bExecute          ` ��       &    rising edge starts command execution    tTimeout    �   ` ��                 bBusy          ` ��	              bError          ` ��
              nErrID         ` ��              nVersion         ` ��           	   nRevision         ` ��              nBuild         ` ��                       "UVW  �   ����           FB_CREATEDIR        
   fbAdsRdWrt       ]    ( nPort:= AMSPORT_R3_SYSSERV, nIdxGrp:= SYSTEMSERVICE_MKDIR, cbReadLen := 0, pReadBuff:= 0 )             '   �                         FW_AdsRdWrt ` ��                 sNetId            
   T_AmsNetId   ��           ams net id 	   sPathName               T_MaxString   ��           max directory length = 255    ePath           PATH_GENERIC    
   E_OpenPath   ��       +    Default: Create directory at generic path    bExecute            ��       %    rising edge start command execution    tTimeout    �     ��                 bBusy            ��
              bError            ��              nErrId           ��                       "UVW  �   ����           FB_EOF        
   fbAdsRdWrt       `    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FEOF, cbWriteLen := 0, pWriteBuff := 0 )             '   �                         FW_AdsRdWrt ` ��              iEOF         ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��           file handle    bExecute            ��           control input    tTimeout    �     ��                 bBusy            ��	              bError            ��
              nErrId           ��              bEOF            ��                       "UVW  �   ����           FB_FILECLOSE        
   fbAdsRdWrt       �    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FCLOSE, cbWriteLen := 0,	cbReadLen := 0,	pWriteBuff := 0, pReadBuff := 0 )             '   y                                 FW_AdsRdWrt ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��       %    file handle obtained through 'open'    bExecute            ��           close control input    tTimeout    �     ��                 bBusy            ��	              bError            ��
              nErrId           ��                       "UVW  �   ����           FB_FILEDELETE        
   fbAdsRdWrt       a    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FDELETE, cbReadLen := 0, pReadBuff := 0 )             '   �                         FW_AdsRdWrt ` ��              tmpOpenMode         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id 	   sPathName               T_MaxString   ��           file path and name    ePath           PATH_GENERIC    
   E_OpenPath   ��           Default: Open generic file    bExecute            ��           open control input    tTimeout    �     ��                 bBusy            ��
              bError            ��              nErrId           ��                       "UVW  �   ����           FB_FILEGETS        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FGETS, cbWriteLen := 0, pWriteBuff := 0 )             '   ~                         FW_AdsRdWrt ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��           file handle    bExecute            ��           control input    tTimeout    �     ��                 bBusy            ��	              bError            ��
              nErrId           ��              sLine               T_MaxString   ��              bEOF            ��                       "UVW  �   ����           FB_FILEOPEN        
   fbAdsRdWrt       @    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FOPEN )             '   x                 FW_AdsRdWrt ` ��              tmpOpenMode         ` ��              tmpHndl         ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id 	   sPathName               T_MaxString   ��           max filename length = 255    nMode           ��           open mode flags    ePath           PATH_GENERIC    
   E_OpenPath   ��           Default: Open generic file    bExecute            ��           open control input    tTimeout    �     ��                 bBusy            ��              bError            ��              nErrId           ��              hFile           ��           file handle             "UVW  �   ����           FB_FILEPUTS        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FPUTS, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��           file handle    sLine               T_MaxString   ��           string to write    bExecute            ��           control input    tTimeout    �     ��                 bBusy            ��
              bError            ��              nErrId           ��                       "UVW  �   ����           FB_FILEREAD        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FREAD, cbWriteLen := 0, pWriteBuff := 0 )             '   z                         FW_AdsRdWrt ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��           file handle 	   pReadBuff           ��           buffer address for read 	   cbReadLen           ��           count of bytes for read    bExecute            ��           read control input    tTimeout    �     ��                 bBusy            ��              bError            ��              nErrId           ��              cbRead           ��           count of bytes actually read    bEOF            ��                       "UVW  �   ����           FB_FILERENAME        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FRENAME, cbReadLen := 0, pReadBuff := 0 )             '   �                         FW_AdsRdWrt ` ��              tmpOpenMode         ` ��           
   sBothNames   	                    T_MaxString         ` ��           = SIZEOF( T_MaxString ) * 2    nOldLen         ` ��              nNewLen         ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    sOldName               T_MaxString   ��           max filename length = 255    sNewName               T_MaxString   ��           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath   ��           Default: generic file path   bExecute            ��           open control input    tTimeout    �     ��                 bBusy            ��              bError            ��              nErrId           ��                       "UVW  �   ����           FB_FILESEEK        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FSEEK, cbReadLen := 0, pReadBuff := 0 )             '   |                         FW_AdsRdWrt ` ��           
   tmpSeekPos   	                       ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��	           file handle    nSeekPos           ��
           new seek pointer position    eOrigin       	    SEEK_SET       E_SeekOrigin   ��              bExecute            ��           seek control input    tTimeout    �     ��                 bBusy            ��              bError            ��              nErrId           ��                       "UVW  �   ����           FB_FILETELL        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FTELL, cbWriteLen := 0, pWriteBuff := 0 )             '   }                         FW_AdsRdWrt ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��           file handle    bExecute            ��           control input    tTimeout    �     ��                 bBusy            ��	              bError            ��
              nErrId           ��              nSeekPos           ��          	On error, nSEEKPOS returns -1             "UVW  �   ����           FB_FILEWRITE        
   fbAdsRdWrt       A    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FWRITE )             '   {                 FW_AdsRdWrt ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��           file handle 
   pWriteBuff           ��           buffer address for write 
   cbWriteLen           ��           count of bytes for write    bExecute            ��           write control input    tTimeout    �     ��                 bBusy            ��              bError            ��              nErrId           ��              cbWrite           ��       !    count of bytes actually written             "UVW  �   ����           FB_PCWATCHDOG           bRetVal          ` ��              iTime         ` ��              iIdx         ` ��              iPortArr   	                 >    16#2E, 16#2E, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E	      .      .      .      /      .      /      .      /      .    ` ��              iArrEn   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#05, 16#30, 16#01, 16#AA	      �      �                  �            0            �    ` ��              iArrDis   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#00, 16#30, 16#00, 16#AA	      �      �                  �             0             �    ` ��                 tTimeOut           ��       ;    Watchdog TimeOut Time 1s..255s, disabled if tTimeOut < 1s    bEnable            ��           Enable / Disable Watchdog       bEnabled            ��       2    TRUE: Watchdog Enabled; FALSE: Watchdog Disabled    bBusy            ��           FB still busy    bError            ��	           FB has error     nErrId           ��
           FB error ID               "UVW  �    ����           FB_PCWATCHDOG_BAPI           nState         ` ��              bInit         ` ��              eConfig           eWATCHDOG_TIME_DISABLED       E_WATCHDOG_TIME_CONFIG ` ��           
   nWatchTime         ` ��           watchdog watch time 	   nTimeBase         ` ��       *    watchdog time base: seconds/milliseconds    nPwrCtrlIoWd        ` ��       >    1 use power controller IO watchdog; 0 use compatibility mode    fbGetVersion                           FB_BaGenGetVersion ` ��              nVersion         ` ��           
   stGpioInfo                 ST_WD_GPIO_Info ` ��              bUseInfo          ` ��              stGpioInfoEx                      ST_WD_GPIO_InfoEx ` ��           
   bUseInfoEx          ` ��              nWDByte         ` ��              fbCtrl       �    ( affinity := ( lower := 0, higher := 0 ), nModifier := 0, nIdxGrp := BIOSIGRP_WATCHDOG, nIdxOffs := BIOSIOFFS_WATCHDOG_CONFIG )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                        `                   FB_BaDeviceIoControl ` ��              rtrig                 R_TRIG ` ��              bRetVal          ` ��           	   pAddress1               ` ��               dxValue1         ` ��!           
   dxBitMask1         ` ��"           	   pAddress2               ` ��#              dxValue2         ` ��$           
   dxBitMask2         ` ��%           	   pAddress4               ` ��&              dxValue4         ` ��'           
   dxBitMask4         ` ��(                 sNetID           ''    
   T_AmsNetID   ��       ;    ams net id, only empty string or local netid is supported    nWatchdogTimeS             �;             ��       -    Watchdog time [s], 0 = disable, >0 = enable    bExecute            ��       &    rising edge starts command execution    tTimeout    �     ��           ADS communication timeout       bEnabled            ��	       2    TRUE: Watchdog Enabled; FALSE: Watchdog Disabled    bBusy            ��
           TRUE: function block is busy    bError            ��            TRUE: function block has error    nErrID           ��           FB error ID               "UVW  �   ����           FB_REMOVEDIR        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_RMDIR, cbReadLen := 0, pReadBuff := 0 )             '   �                         FW_AdsRdWrt ` ��                 sNetId            
   T_AmsNetId   ��           ams net id 	   sPathName               T_MaxString   ��           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath   ��       +    Default: Delete directory at generic path    bExecute            ��       &    rising edge starts command execution    tTimeout    �     ��                 bBusy            ��
              bError            ��              nErrId           ��                       "UVW  �   ����           FB_SETLEDCOLOR_BAPI           nState         ` ��              fbCtrl       y    ( affinity := ( lower := 0, higher := 0 ), nModifier := 0, nIdxGrp := BIOSIGRP_LED, nIdxOffs := BIOSIOFFS_LED_SET_USER )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                        �                   FB_BaDeviceIoControl ` ��              rtrig                 R_TRIG ` ��              nLED         ` ��                 sNetID           ''    
   T_AmsNetID   ��       ;    ams net id, only empty string or local netid is supported 	   eNewColor               E_UsrLED_Color   ��           new LED Color    bExecute            ��           change LED Color    tTimeout    �     ��           ADS communication timeout       bBusy            ��	           TRUE: function block is busy    bError            ��
            TRUE: function block has error    nErrID           ��           FB error ID               "UVW  �   ����           FB_SIMPLEADSLOGEVENT           fbEvent       9    ( NETID := '', PORT := AMSPORT_EVENTLOG, TMOUT:= t#15s )             
   T_AmsNetId         n          �:         ADSLOGEVENT ` ��              cfgEvent               TcEvent ` ��              bInit         ` ��                 SourceID           ��              EventID           ��           	   bSetEvent           ��              bQuit            ��                 ErrId           ��	              Error            ��
                       "UVW  �   ����        	   FILECLOSE        
   fbAdsWrite                                FW_AdsWrite    ��                 NETID            
   T_AmsNetId   ��           ams net id    HFILE           ��       )    file handle obtained through 'FILEOPEN'    CLOSE            ��           close control input    TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��                       "UVW  �   ����           FILEOPEN        
   fbAdsWrite                                FW_AdsWrite    ��           
   RisingEdge                 R_TRIG    ��              FallingEdge                 F_TRIG    ��                 NETID            
   T_AmsNetId   ��           ams net id 	   FPATHNAME               T_MaxString   ��       #    default max filename length = 255    OPENMODE           ��           open mode flags    OPEN            ��           open control input    TMOUT    �     ��                 BUSY            ��
              ERR            ��              ERRID           ��              HFILE           ��           file handle             "UVW  �   ����           FILEREAD        	   fbAdsRead                              
   FW_AdsRead    ��                 NETID            
   T_AmsNetId   ��           ams net id    HFILE           ��           file handle    BUFADDR           ��           buffer address for read    COUNT           ��           count of bytes for read    READ            ��           read control input    TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��              COUNT_R           ��           count of bytes actually read             "UVW  �   ����           FILESEEK        
   fbAdsWrite                                FW_AdsWrite    ��                 NETID            
   T_AmsNetId   ��           ams net id    HFILE           ��           file handle    SEEKPOS           ��           new seek pointer position    SEEK            ��           seek control input    TMOUT    �     ��                 BUSY            ��
              ERR            ��              ERRID           ��                       "UVW  �   ����        	   FILEWRITE        
   fbAdsWrite                                FW_AdsWrite    ��           
   RisingEdge                 R_TRIG    ��              FallingEdge                 F_TRIG    ��              tmpCount            ��                 NETID            
   T_AmsNetId   ��           ams net id    HFILE           ��           file handle    BUFADDR           ��           buffer address for write    COUNT           ��           count of bytes for write    WRITE            ��           write control input    TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��              COUNT_W           ��       !    count of bytes actually written             "UVW  �   ����           FW_CALLGENERICFB           fbCall       w    ( 	sNetID := '', nPort := 16#1234,
								bExecute := FALSE, tTimeout := T#0s,
								ACCESSCNT_I := 16#0000BEC1 )     ��                 4                          FW_AdsRdWrt ` ��                 funGrp         ` ��       #    Function block group (identifier)    funNum         ` ��       $    Function block number (identifier)    pWrite               PVOID ` ��       7    Pointer to generic function input parameter structure    cbWrite         ` ��       ;    Byte length of generic function input parameter structure    pRead               PVOID ` ��	           Pointer to output data buffer    cbRead         ` ��
       #    Byte length of output data buffer       nErrID         ` ��           0 => no error, <> 0 => error
   cbReturned         ` ��       ,    Number of successfully returned data bytes             "UVW  �    ����           FW_CALLGENERICFBEX           fbCall        	               FW_CallGenericFb ` ��              in                  ST_AdsCallGenericFbExReq ` ��                 funGrp         ` ��       #    Function block group (identifier)    funNum         ` ��       $    Function block number (identifier)    nIdxGrp         ` ��           Index group parameter    nIdxOffs         ` ��           Index offset parameter    pWrite               PVOID ` ��	       7    Pointer to generic function input parameter structure    cbWrite         ` ��
       ;    Byte length of generic function input parameter structure    pRead               PVOID ` ��           Pointer to output data buffer    cbRead         ` ��       #    Byte length of output data buffer       nErrID         ` ��           0 => no error, <> 0 => error
   cbReturned         ` ��       ,    Number of successfully returned data bytes             "UVW  �    ����           FW_CALLGENERICFUN           fbCall       y    ( 	sNetID := '', nPort := 16#1234,
									bExecute := FALSE, tTimeout := T#0s,
									ACCESSCNT_I := 16#0000BEC2 )     ¾                 4                          FW_AdsRdWrt ` ��           don't use it!        funGrp         ` ��           Function group (identifier)    funNum         ` ��       $    Function block number (identifier)    pWrite               PVOID ` ��       7    Pointer to generic function input parameter structure    cbWrite         ` ��       ;    Byte length of generic function input parameter structure    pRead               PVOID ` ��	           Pointer to output data buffer    cbRead         ` ��
       #    Byte length of output data buffer    pcbReturned               ` ��       ,    Number of successfully returned data bytes       FW_CallGenericFun                                     "UVW  �    ����           GETBIT32           dwConst        ` ��                 inVal32           ��              bitNo           ��                 GETBIT32                                      "UVW  �    ����           GETCPUACCOUNT           fbGetCpuAccount               FW_GetCpuAccount ` ��                     cpuAccountDW           ��                       "UVW  �    ����           GETCPUCOUNTER           fbGetCpuCounter                FW_GetCpuCounter ` ��                  
   cpuCntLoDW           ��           
   cpuCntHiDW           ��                       "UVW  �    ����           GETCURTASKINDEX           fbGetCurTaskIndex               FW_GetCurTaskIndex ` ��                     index           ��           Task index [1..4]             "UVW  �    ����           GETSYSTEMTIME           fbGetSystemTime                FW_GetSystemTime ` ��                     timeLoDW           ��              timeHiDW           ��                       "UVW  �    ����           GETTASKTIME           out   	                       ` ��	           
   cbReturned         ` ��
                     timeLoDW           ��              timeHiDW           ��                       "UVW  �    ����        	   LPTSIGNAL               PortAddr           ��              PinNo           ��              OnOff            ��	              	   LPTSIGNAL                                      "UVW  �    ����           MEMCMP               pBuf1           ��           First buffer    pBuf2           ��           Second buffer    n           ��           Number of characters       MEMCMP                                     "UVW  �    ����           MEMCPY               destAddr           ��           New buffer    srcAddr           ��           Buffer to copy from    n           ��           Number of characters to copy       MEMCPY                                     "UVW  �    ����           MEMMOVE               destAddr           ��           New buffer    srcAddr           ��           Buffer to copy from    n           ��           Number of characters to copy       MEMMOVE                                     "UVW  �    ����           MEMSET               destAddr           ��           Pointer to destination    fillByte           ��           Character to set    n           ��           Number of characters       MEMSET                                     "UVW  �    ����           ROL32               inVal32           ��              n           ��                 ROL32                                     "UVW  �    ����           ROR32               inVal32           ��              n           ��                 ROR32                                     "UVW  �    ����           SETBIT32           dwConst        ` ��                 inVal32           ��              bitNo           ��                 SETBIT32                                     "UVW  �    ����           SFCACTIONCONTROL     
      S_FF                 RS    ��              L_TMR                    TON    ��              D_TMR                    TON    ��              P_TRIG                 R_TRIG    ��              SD_TMR                    TON    ��              SD_FF                 RS    ��              DS_FF                 RS    ��              DS_TMR                    TON    ��              SL_FF                 RS    ��              SL_TMR                    TON    ��           
      N            ��              R0            ��              S0            ��              L            ��              D            ��              P            ��              SD            ��	              DS            ��
              SL            ��              T           ��                 Q            ��                       "UVW  �    ����           SHL32               inVal32           ��              n           ��                 SHL32                                     "UVW  �    ����           SHR32               inVal32           ��              n           ��                 SHR32                                     "UVW  �    ����    r   C:\TwinCAT\PLC\LIB\ModbusRTU.lib @                                                                                          GET_MODBUSRTU_VERSION           VERSION_ModbusRTU       	   2.006.000    ��%                 bGet            ��"                 Get_ModbusRTU_Version                                         h�RU  �    ����           MODBUSADDRESSVALID               UnitID           ��              ReceivedUnitID           ��                 ModbusAddressValid                                      h�RU  �    ����           MODBUSCRC16           idx            ��
              i            ��              feldHI   	  �               M  
		16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0, 16#80, 16#41, 16#01, 16#C0,
		16#80, 16#41, 16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0, 16#80, 16#41,
		16#00, 16#C1, 16#81, 16#40, 16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0,
		16#80, 16#41, 16#01, 16#C0, 16#80, 16#41, 16#00, 16#C1, 16#81, 16#40,
		16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0, 16#80, 16#41, 16#00, 16#C1,
		16#81, 16#40, 16#01, 16#C0, 16#80, 16#41, 16#01, 16#C0, 16#80, 16#41,
		16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0, 16#80, 16#41, 16#00, 16#C1,
		16#81, 16#40, 16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0, 16#80, 16#41,
		16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0, 16#80, 16#41, 16#01, 16#C0,
		16#80, 16#41, 16#00, 16#C1, 16#81, 16#40, 16#00, 16#C1, 16#81, 16#40,
		16#01, 16#C0, 16#80, 16#41, 16#01, 16#C0, 16#80, 16#41, 16#00, 16#C1,
		16#81, 16#40, 16#01, 16#C0, 16#80, 16#41, 16#00, 16#C1, 16#81, 16#40,
		16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0, 16#80, 16#41, 16#01, 16#C0,
		16#80, 16#41, 16#00, 16#C1, 16#81, 16#40, 16#00, 16#C1, 16#81, 16#40,
		16#01, 16#C0, 16#80, 16#41, 16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0,
		16#80, 16#41, 16#01, 16#C0, 16#80, 16#41, 16#00, 16#C1, 16#81, 16#40,
		16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0, 16#80, 16#41, 16#01, 16#C0,
		16#80, 16#41, 16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0, 16#80, 16#41,
		16#00, 16#C1, 16#81, 16#40, 16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0,
		16#80, 16#41, 16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0, 16#80, 16#41,
		16#01, 16#C0, 16#80, 16#41, 16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0,
		16#80, 16#41, 16#00, 16#C1, 16#81, 16#40, 16#00, 16#C1, 16#81, 16#40,
		16#01, 16#C0, 16#80, 16#41, 16#01, 16#C0, 16#80, 16#41, 16#00, 16#C1,
		16#81, 16#40, 16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0, 16#80, 16#41,
		16#00, 16#C1, 16#81, 16#40, 16#01, 16#C0, 16#80, 16#41, 16#01, 16#C0,
		16#80, 16#41, 16#00, 16#C1, 16#81, 16#40             �      �      @            �      �      A            �      �      A             �      �      @            �      �      A             �      �      @             �      �      @            �      �      A            �      �      A             �      �      @             �      �      @            �      �      A             �      �      @            �      �      A            �      �      A             �      �      @            �      �      A             �      �      @             �      �      @            �      �      A             �      �      @            �      �      A            �      �      A             �      �      @             �      �      @            �      �      A            �      �      A             �      �      @            �      �      A             �      �      @             �      �      @            �      �      A            �      �      A             �      �      @             �      �      @            �      �      A             �      �      @            �      �      A            �      �      A             �      �      @             �      �      @            �      �      A            �      �      A             �      �      @            �      �      A             �      �      @             �      �      @            �      �      A             �      �      @            �      �      A            �      �      A             �      �      @            �      �      A             �      �      @             �      �      @            �      �      A            �      �      A             �      �      @             �      �      @            �      �      A             �      �      @            �      �      A            �      �      A             �      �      @       ��              feldLo   	  �               M  
		16#00, 16#C0, 16#C1, 16#01, 16#C3, 16#03, 16#02, 16#C2, 16#C6, 16#06,
		16#07, 16#C7, 16#05, 16#C5, 16#C4, 16#04, 16#CC, 16#0C, 16#0D, 16#CD,
		16#0F, 16#CF, 16#CE, 16#0E, 16#0A, 16#CA, 16#CB, 16#0B, 16#C9, 16#09,
		16#08, 16#C8, 16#D8, 16#18, 16#19, 16#D9, 16#1B, 16#DB, 16#DA, 16#1A,
		16#1E, 16#DE, 16#DF, 16#1F, 16#DD, 16#1D, 16#1C, 16#DC, 16#14, 16#D4,
		16#D5, 16#15, 16#D7, 16#17, 16#16, 16#D6, 16#D2, 16#12, 16#13, 16#D3,
		16#11, 16#D1, 16#D0, 16#10, 16#F0, 16#30, 16#31, 16#F1, 16#33, 16#F3,
		16#F2, 16#32, 16#36, 16#F6, 16#F7, 16#37, 16#F5, 16#35, 16#34, 16#F4,
		16#3C, 16#FC, 16#FD, 16#3D, 16#FF, 16#3F, 16#3E, 16#FE, 16#FA, 16#3A,
		16#3B, 16#FB, 16#39, 16#F9, 16#F8, 16#38, 16#28, 16#E8, 16#E9, 16#29,
		16#EB, 16#2B, 16#2A, 16#EA, 16#EE, 16#2E, 16#2F, 16#EF, 16#2D, 16#ED,
		16#EC, 16#2C, 16#E4, 16#24, 16#25, 16#E5, 16#27, 16#E7, 16#E6, 16#26,
		16#22, 16#E2, 16#E3, 16#23, 16#E1, 16#21, 16#20, 16#E0, 16#A0, 16#60,
		16#61, 16#A1, 16#63, 16#A3, 16#A2, 16#62, 16#66, 16#A6, 16#A7, 16#67,
		16#A5, 16#65, 16#64, 16#A4, 16#6C, 16#AC, 16#AD, 16#6D, 16#AF, 16#6F,
		16#6E, 16#AE, 16#AA, 16#6A, 16#6B, 16#AB, 16#69, 16#A9, 16#A8, 16#68,
		16#78, 16#B8, 16#B9, 16#79, 16#BB, 16#7B, 16#7A, 16#BA, 16#BE, 16#7E,
		16#7F, 16#BF, 16#7D, 16#BD, 16#BC, 16#7C, 16#B4, 16#74, 16#75, 16#B5,
		16#77, 16#B7, 16#B6, 16#76, 16#72, 16#B2, 16#B3, 16#73, 16#B1, 16#71,
		16#70, 16#B0, 16#50, 16#90, 16#91, 16#51, 16#93, 16#53, 16#52, 16#92,
		16#96, 16#56, 16#57, 16#97, 16#55, 16#95, 16#94, 16#54, 16#9C, 16#5C,
		16#5D, 16#9D, 16#5F, 16#9F, 16#9E, 16#5E, 16#5A, 16#9A, 16#9B, 16#5B,
		16#99, 16#59, 16#58, 16#98, 16#88, 16#48, 16#49, 16#89, 16#4B, 16#8B,
		16#8A, 16#4A, 16#4E, 16#8E, 16#8F, 16#4F, 16#8D, 16#4D, 16#4C, 16#8C,
		16#44, 16#84, 16#85, 16#45, 16#87, 16#47, 16#46, 16#86, 16#82, 16#42,
		16#43, 16#83, 16#41, 16#81, 16#80, 16#40             �      �            �                  �      �                  �            �      �            �                  �            �      �            
      �      �            �      	            �      �                  �            �      �                  �      �            �                  �            �      �            �                  �      �                  �            �      �            �      0      1      �      3      �      �      2      6      �      �      7      �      5      4      �      <      �      �      =      �      ?      >      �      �      :      ;      �      9      �      �      8      (      �      �      )      �      +      *      �      �      .      /      �      -      �      �      ,      �      $      %      �      '      �      �      &      "      �      �      #      �      !             �      �      `      a      �      c      �      �      b      f      �      �      g      �      e      d      �      l      �      �      m      �      o      n      �      �      j      k      �      i      �      �      h      x      �      �      y      �      {      z      �      �      ~            �      }      �      �      |      �      t      u      �      w      �      �      v      r      �      �      s      �      q      p      �      P      �      �      Q      �      S      R      �      �      V      W      �      U      �      �      T      �      \      ]      �      _      �      �      ^      Z      �      �      [      �      Y      X      �      �      H      I      �      K      �      �      J      N      �      �      O      �      M      L      �      D      �      �      E      �      G      F      �      �      B      C      �      A      �      �      @       ��(           	   Index7001                            pdata                 ��              count           ��                 ModbusCRC16                  ST_ModbusCRC16                             h�RU  �    ����           MODBUSREADBITS        
   pTmpWrData                  ��              i            ��              startidx            ��              endidx            ��              emptyStartbits            ��              lastSourcebits            ��              lastDestinationbits            ��              datatmp            ��              	   startAddr           ��              quantity           ��           
   ptrReadmem                 ��              sizeOfReadmem           ��              ptrWritedata                 ��                 count           ��              ErrId               Modbus_ERRORS   ��                       h�RU  �    ����           MODBUSREADREG        
   pTmpWrData                  ��              i            ��              ByteAddr            ��              ptrReadmem1                  ��              	   startAddr           ��              quantity           ��           
   ptrReadmem                 ��              sizeOfReadmem           ��              ptrWritedata                 ��                 count           ��              ErrId               Modbus_ERRORS   ��                       h�RU  �    ����           MODBUSRECEIVEBYTE                   ByteReceived            ��              ReceivedByte           ��              ErrId           ��                 RxBuffer                      ModbusCOMbuffer  ��                   h�RU  �    ����           MODBUSRECEIVEMODDATA     
      state            ��              iTimeout            ��              TimeoutTimer                    TOF    ��               idx            ��!           	   bytecount            ��"              startidx            ��#              tmpErrId            ��$              UnitIDvalid             ��%           
   EntryState            ��&           	   LastState            ��'                 UnitID           ��              Timeout           ��              Reset            ��              Master            ��                 data   	  �                       ��              DataReceived            ��              busy            ��              ErrId           ��           	   RxTimeout            ��              LenReceiveData           ��              crc                  ST_ModbusCRC16   ��                 RXbuffer                      ModbusCOMbuffer  ��              Receive                   ModbusReceiveByte  ��                   h�RU  �   ����           MODBUSRTUMASTER           state           Modbus_INIT       Modbus_STATES    ��           state machine state    iUnitID            ��           	   iQuantity            ��              iMBAddr            ��              iSubfunction            ��       $    used with diagnostic function 0x08 	   icbLength            ��              ipMemoryAddr                  ��          DWORD;   iExecute             ��               iTimeout            ��!              com                   ST_ModbusCom    ��"              TriggerExecute                 R_TRIG    ��#           
   MBFunction               MODBUS_FUNCTIONS    ��$              startaddress            ��%           
   memorytype               MODBUS_MEMORYTYPE    ��&           
   TimeoutTON                    TON    ��'              p                  ��(              i            ��)           	   bQuantity            ��*                 UnitID           ��              Quantity           ��              MBAddr           ��              cbLength           ��              pMemoryAddr                 ��          DWORD;   Execute            ��              Timeout           ��	              Mode               MBserialLineMode_t   ��
              pComIn    	  A                            ��       A    must meet the maximum size of a hardware related data structure    pComOut    	  A                            ��       A    must meet the maximum size of a hardware related data structure 	   SizeComIn           ��                 BUSY            ��              Error            ��              ErrorId               MODBUS_ERRORS   ��              cbRead           ��                 ErrorDiagnostics         
                ST_ModbusErrorDiagnostics  ��                   h�RU  �    ����           MODBUSRTUMASTER_KL6X22B           InData                MB_KL6inData22B   ��              OutData                MB_KL6outData22B    ��              MBmaster        "                                        ModbusRtuMaster    ��              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    ��              Mode       "    MBSERIALLINEMODE_KL6_22B_STANDARD       MBserialLineMode_t   ��                 UnitID           ��              Quantity           ��              MBAddr           ��              cbLength           ��              pMemoryAddr                 ��          DWORD;   Execute            ��              Timeout           ��	                 BUSY            ��              Error            ��              ErrorId               MODBUS_ERRORS   ��              cbRead           ��                       h�RU  �   ����           MODBUSRTUMASTER_KL6X5B           InData                MB_KL6inData5B   ��              OutData                MB_KL6outData5B    ��              MBmaster        "                                        ModbusRtuMaster    ��              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    ��              Mode       !    MBSERIALLINEMODE_KL6_5B_STANDARD       MBserialLineMode_t   ��                 UnitID           ��              Quantity           ��              MBAddr           ��              cbLength           ��              pMemoryAddr                 ��          DWORD;   Execute            ��              Timeout           ��	                 BUSY            ��              Error            ��              ErrorId               MODBUS_ERRORS   ��              cbRead           ��                       h�RU  �   ����           MODBUSRTUMASTER_PCCOM           InData                MB_PcComInData   ��              OutData                MB_PcComOutData    ��              MBmaster        "                                        ModbusRtuMaster    ��              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    ��              Mode           MBSERIALLINEMODE_PC_COM_PORT       MBserialLineMode_t   ��                 UnitID           ��              Quantity           ��              MBAddr           ��              cbLength           ��              pMemoryAddr                 ��          DWORD;   Execute            ��              Timeout           ��	                 BUSY            ��              Error            ��              ErrorId               MODBUS_ERRORS   ��              cbRead           ��                       h�RU  �   ����           MODBUSRTUMASTERV2           state           Modbus_INIT       Modbus_STATES    ��            state machine state    iUnitID            ��!           	   iQuantity            ��#              iMBAddr            ��$              iSubfunction            ��%       $    used with diagnostic function 0x08 	   icbLength            ��&              ipMemoryAddr                  ��'          DWORD;   iAuxQuantity            ��)           
   iAuxMBAddr            ��*              iAuxcbLength            ��+              ipAuxMemoryAddr                  ��,              iExecute             ��.              iTimeout            ��/              com                   ST_ModbusCom    ��0              TriggerExecute                 R_TRIG    ��1           
   MBFunction               MODBUS_FUNCTIONS    ��2              startaddress            ��3           
   memorytype               MODBUS_MEMORYTYPE    ��4           
   TimeoutTON                    TON    ��5              p                  ��6              i            ��7           	   bQuantity            ��8                 UnitID           ��           modbus unit ID    Quantity           ��       ,    quantity of bits or words to read or write    MBAddr           ��           modbus address    cbLength           ��           byte length of memory    pMemoryAddr                 ��          DWORD;   AuxQuantity           ��
       C    Write access - used for Read/Write access only (function code 23) 	   AuxMBAddr           ��       C    Write access - used for Read/Write access only (function code 23)    AuxcbLength           ��       C    Write access - used for Read/Write access only (function code 23)    pAuxMemoryAddr                 ��       C    Write access - used for Read/Write access only (function code 23)    Execute            ��              Timeout           ��              Mode               MBserialLineMode_t   ��              pComIn    	  A                            ��       A    must meet the maximum size of a hardware related data structure    pComOut    	  A                            ��       A    must meet the maximum size of a hardware related data structure 	   SizeComIn           ��                 BUSY            ��              Error            ��              ErrorId               MODBUS_ERRORS   ��              cbRead           ��                 ErrorDiagnostics         
                ST_ModbusErrorDiagnostics  ��                   h�RU  �    ����           MODBUSRTUMASTERV2_KL6X22B           InData                MB_KL6inData22B   ��              OutData                MB_KL6outData22B    ��              MBmaster        *                                                ModbusRtuMasterV2    ��              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    ��              Mode       "    MBSERIALLINEMODE_KL6_22B_STANDARD       MBserialLineMode_t   ��"                 UnitID           ��       1    standard quantity and address for all functions    Quantity           ��       ,    quantity of bits or words to read or write    MBAddr           ��           modbus address    cbLength           ��           byte length of memory    pMemoryAddr                 ��	          DWORD;   AuxQuantity           ��       C    Write access - used for Read/Write access only (function code 23) 	   AuxMBAddr           ��       C    Write access - used for Read/Write access only (function code 23)    AuxcbLength           ��       C    Write access - used for Read/Write access only (function code 23)    pAuxMemoryAddr                 ��       C    Write access - used for Read/Write access only (function code 23)    Execute            ��              Timeout           ��                 BUSY            ��              Error            ��              ErrorId               MODBUS_ERRORS   ��              cbRead           ��                       h�RU  �   ����           MODBUSRTUMASTERV2_KL6X5B           InData                MB_KL6inData5B   ��              OutData                MB_KL6outData5B    ��              MBmaster        *                                                ModbusRtuMasterV2    ��              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    ��              Mode       !    MBSERIALLINEMODE_KL6_5B_STANDARD       MBserialLineMode_t   ��"                 UnitID           ��       1    standard quantity and address for all functions    Quantity           ��       ,    quantity of bits or words to read or write    MBAddr           ��           modbus address    cbLength           ��           byte length of memory    pMemoryAddr                 ��	          DWORD;   AuxQuantity           ��       C    Write access - used for Read/Write access only (function code 23) 	   AuxMBAddr           ��       C    Write access - used for Read/Write access only (function code 23)    AuxcbLength           ��       C    Write access - used for Read/Write access only (function code 23)    pAuxMemoryAddr                 ��       C    Write access - used for Read/Write access only (function code 23)    Execute            ��              Timeout           ��                 BUSY            ��              Error            ��              ErrorId               MODBUS_ERRORS   ��              cbRead           ��                       h�RU  �   ����           MODBUSRTUMASTERV2_PCCOM           InData                MB_PcComInData   ��              OutData                MB_PcComOutData    ��              MBmaster        *                                                ModbusRtuMasterV2    ��              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    ��              Mode           MBSERIALLINEMODE_PC_COM_PORT       MBserialLineMode_t   ��"                 UnitID           ��       1    standard quantity and address for all functions    Quantity           ��       ,    quantity of bits or words to read or write    MBAddr           ��           modbus address    cbLength           ��           byte length of memory    pMemoryAddr                 ��	          DWORD;   AuxQuantity           ��       C    Write access - used for Read/Write access only (function code 23) 	   AuxMBAddr           ��       C    Write access - used for Read/Write access only (function code 23)    AuxcbLength           ��       C    Write access - used for Read/Write access only (function code 23)    pAuxMemoryAddr                 ��       C    Write access - used for Read/Write access only (function code 23)    Execute            ��              Timeout           ��                 BUSY            ��              Error            ��              ErrorId               MODBUS_ERRORS   ��              cbRead           ��                       h�RU  �   ����           MODBUSRTUSLAVE           state           Modbus_INIT       Modbus_STATES    ��           state machine state 	   nextstate           Modbus_INIT       Modbus_STATES    ��            state machine state    readBits                             ModbusReadBits    ��!              readReg                         ModbusReadReg    ��"              writeBit                   ModbusWriteBit    ��#           	   writeBits                                 ModbusWriteBits    ��$              writeReg                         ModbusWriteReg    ��%              startaddress            ��&              quantityrequest            ��'              synctime                    TON    ��(              com                   ST_ModbusCom    ��)           
   memorytype               MODBUS_MEMORYTYPE    ��*              ptrMemoryRange                  ��+           	   RangeSize            ��,              DiagnosticSubfunction            ��-              DiagnosticData            ��.                 UnitID           ��           	   AdrInputs                 ��       %    Pointer to the input memory area %I    SizeInputBytes           ��           
   AdrOutputs                 ��       &    Pointer to the output memory area %Q    SizeOutputBytes           ��           	   AdrMemory                 ��           Pointer to the memory area %M    SizeMemoryBytes           ��              Mode               MBserialLineMode_t   ��              pComIn    	  A                            ��       A    must meet the maximum size of a hardware related data structure    pComOut    	  A                            ��       A    must meet the maximum size of a hardware related data structure 	   SizeComIn           ��                 ErrorId               Modbus_ERRORS   ��                 ErrorDiagnostics         
                ST_ModbusErrorDiagnostics  ��                   h�RU  �    ����           MODBUSRTUSLAVE_KL6X22B           InData                MB_KL6inData22B   ��              OutData                MB_KL6outData22B    ��              MBslave                                           ModbusRtuSlave    ��              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    ��                 UnitID           ��           	   AdrInputs                 ��       %    Pointer to the input memory area %I    SizeInputBytes           ��           
   AdrOutputs                 ��       &    Pointer to the output memory area %Q    SizeOutputBytes           ��           	   AdrMemory                 ��           Pointer to the memory area %M    SizeMemoryBytes           ��                 ErrorId               Modbus_ERRORS   ��                       h�RU  �   ����           MODBUSRTUSLAVE_KL6X5B           InData                MB_KL6inData5B   ��              OutData                MB_KL6outData5B    ��              MBslave                                           ModbusRtuSlave    ��              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    ��                 UnitID           ��           	   AdrInputs                 ��       %    Pointer to the input memory area %I    SizeInputBytes           ��           
   AdrOutputs                 ��       &    Pointer to the output memory area %Q    SizeOutputBytes           ��           	   AdrMemory                 ��           Pointer to the memory area %M    SizeMemoryBytes           ��                 ErrorId               Modbus_ERRORS   ��                       h�RU  �   ����           MODBUSRTUSLAVE_PCCOM           InData                MB_PcComInData   ��              OutData                MB_PcComOutData    ��              MBslave                                           ModbusRtuSlave    ��              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    ��                 UnitID           ��           	   AdrInputs                 ��       %    Pointer to the input memory area %I    SizeInputBytes           ��           
   AdrOutputs                 ��       &    Pointer to the output memory area %Q    SizeOutputBytes           ��           	   AdrMemory                 ��           Pointer to the memory area %M    SizeMemoryBytes           ��                 ErrorId               Modbus_ERRORS   ��                       h�RU  �   ����           MODBUSSENDMODDATA           state            ��              idx            ��           	   nextWrIdx            ��              crc                  ST_ModbusCRC16    ��                 send            ��              data   	  �                       ��              Length           ��                 Busy            ��              bErr            ��              ErrId           ��                 TXbuffer                      ModbusCOMbuffer  ��                   h�RU  �   ����           MODBUSSERIALLINECONTROL           ComPortDebugBuffer                 MBcomDebugBuffer    ��"              InvalidDataExchangeMode            ��#              RegisterMode            ��$              pCTRL                  ��%              pSTATUS                  ��&              RxCount            ��'              TxCount            ��(           	   DataIndex            ��)              DataCountMask            ��*              DataCountShift            ��+              ReceiveHandshakeBit            ��,              TransmitHandshakeBit            ��-              TransmitBufferSentBit            ��.              ContinousModeStartBit            ��/              ReceiveBufferFullBit            ��0              ResetBit            ��1              RR            ��2              RA            ��3              TR            ��4              TA            ��5              IA            ��6              BUF_F            ��7              noTAcounter            ��8              initialized             ��9              TransmitDataSent             ��:              i            ��;                 Mode               MBserialLineMode_t   ��              pComIn    	  A                            ��       A    must meet the maximum size of a hardware related data structure    pComOut    	  A                            ��       A    must meet the maximum size of a hardware related data structure 	   SizeComIn           ��                 Error            ��              ErrorID               MODBUS_ERRORS   ��                 TxBuffer                      ModbusComBuffer  ��              RxBuffer                      ModbusComBuffer  ��                   h�RU  �    ����           MODBUSWRITEBIT               outAddr           ��              value           ��              ptrWritemem                 ��              sizeOfWritemem           ��                 ErrId               Modbus_ERRORS   ��                       h�RU  �    ����           MODBUSWRITEBITS           i            ��              startidx            ��              endidx            ��              memvalue            ��           	   datavalue            ��           
   nDatabytes            ��              usedbits            ��              unusedlowbits            ��              unusedhighbits            ��              unusedhighmask            ��              unusedlowmask            ��           
   unusedmask            ��               ptrByte                  ��!              	   startAddr           ��              quantity           ��              ptrReadData                 ��              ptrWritemem                 ��              sizeOfWritemem           ��                 ErrId               Modbus_ERRORS   ��                       h�RU  �    ����           MODBUSWRITEREG        
   pTmpWrData                  ��              ptrReadData1                  ��              i            ��              ByteAddr            ��              	   startAddr           ��              quantity           ��              ptrReadData                 ��              ptrWritemem                 ��              sizeOfWritemem           ��                 count           ��              ErrId               Modbus_ERRORS   ��                       h�RU  �    ����    v   C:\TwinCAT\PLC\LIB\TcIoFunctions.lib @                                                                                Q       
   F_BYTESWAP     
      iByte            ��              iIndex            ��           	   iTypeSize            ��              bEven             ��              bOdd             ��              iRepeats            ��           
   pSrcAdrPtr                  ��              pSrcAdrPtrOrg                  ��           
   pDstAdrPtr                  ��              pDstAdrPtrOrg                  ��                 pSrcAdr                 ��              pDstAdr                 ��              iSize           ��              eType           ePD_UNDEFINED       E_PD_Datatype   ��              
   F_ByteSwap                                     n-�X  �    ����           F_CHECKFORSWAPBYTES               eFormat               E_PD_Datatype   ��                 F_CheckForSwapBytes                                      n-�X  �    ����           F_CREATEDPV1READREQPKG           stDpv1ReqHeader                  ST_Dpv1Header    ��              stDpv1ParameterSwap                  ST_Dpv1ParamAddr    ��       '    parameter address with swapped bytes     iDpv1ReqIndex            ��              iPIndex            ��                 pDpv1ReqData    	  �                           ��           DPV1 read request    iNumOfParams           ��           1..39;     else: reserved    iDriveId           ��                 F_CreateDpv1ReadReqPkg                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          ��           list of parameters         n-�X  �   ����           F_CREATEDPV1READREQPKGPNET           stDpv1FrameHeader                    ST_PNIOConfigRecord    ��              stDpv1ReqHeader                  ST_Dpv1Header    ��              stDpv1ParameterSwap                  ST_Dpv1ParamAddr    ��       '    parameter address with swapped bytes     iDpv1ReqIndex            ��              iPIndex            ��                 pDpv1ReqData    	                            ��           DPV1 read request    iNumOfParams           ��           1..39;     else: reserved    iDriveId           ��                 F_CreateDpv1ReadReqPkgPNET                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          ��           list of parameters         n-�X  �   ����           F_CREATEDPV1WRITEREQPKG           stDpv1ReqHeader                  ST_Dpv1Header    ��              stDpv1ParameterSwap                  ST_Dpv1ParamAddr    ��       '    parameter address with swapped bytes     iDpv1ReqIndex            ��              iPIndex            ��              stDpv1ValueHeader                ST_Dpv1ValueHeader    ��              iSize            ��              bError             ��              bAddFillByte             ��                 pDpv1ReqData    	  �                           ��           DPV1 write request    iNumOfParams           ��           1..39;     else: reserved    iDriveId           ��                 F_CreateDpv1WriteReqPkg                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          ��           list of parameters    stDpv1ValueHeaderEx    	  '                      ST_Dpv1ValueHeaderEx          ��                   n-�X  �   ����           F_CREATEDPV1WRITEREQPKGPNET     	      stDpv1FrameHeader                    ST_PNIOConfigRecord    ��              stDpv1ReqHeader                  ST_Dpv1Header    ��              stDpv1ParameterSwap                  ST_Dpv1ParamAddr    ��       '    parameter address with swapped bytes     iDpv1ReqIndex            ��              iPIndex            ��              stDpv1ValueHeader                ST_Dpv1ValueHeader    ��              iSize            ��              bError             ��              bAddFillByte             ��                 pDpv1ReqData    	                            ��           DPV1 write request    iNumOfParams           ��           1..39;     else: reserved    iDriveId           ��                 F_CreateDpv1WriteReqPkgPNET                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          ��           list of parameters    stDpv1ValueHeaderEx    	  '                      ST_Dpv1ValueHeaderEx          ��                   n-�X  �   ����           F_GETDATASTRING           iIdx            ��	              iInt32            ��
              iUInt32            ��              fFloat32             ��           	   strRetVal    Q       Q     ��           
   iValueSize            ��           
   iValueAddr            ��                 eFormat               E_PD_Datatype   ��              iNumOfValues           ��       ,    0..234: number of values;   else: reserved 	   iDataAddr           ��       +    address of buffer/address of plc variable 	   iDataSize           ��       %    size of buffer/size of plc variable       F_GetDataString    Q       Q                              n-�X  �    ����           F_GETPDTYPESIZE               eFormat               E_PD_Datatype   ��                 F_GetPDTypeSize                                     n-�X  �    ����           F_GETVERSIONTCIOFUNCTIONS               nVersionElement           ��                 F_GetVersionTcIoFunctions                                     n-�X  �    ����           F_SPLITDPV1READRESPKG           stDpv1ResHeader                  ST_Dpv1Header    ��              stDpv1ValueHeader                ST_Dpv1ValueHeader    ��              iPIndex            ��              iVIndex            ��              iSize            ��           
   eDpv1Error               E_PD_Dpv1Error    ��                 pDpv1ResData    	  �                           ��           DPV1 read response       F_SplitDpv1ReadResPkg                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          ��           list of parameters    stDpv1ValueHeaderEx    	  '                      ST_Dpv1ValueHeaderEx          ��                   n-�X  �   ����           F_SPLITDPV1READRESPKGPNET           stDpv1ResHeader                  ST_Dpv1Header    ��              stDpv1ValueHeader                ST_Dpv1ValueHeader    ��              iPIndex            ��              iVIndex            ��              iSize            ��           
   eDpv1Error               E_PD_Dpv1Error    ��                 pDpv1ResData    	  �                           ��           DPV1 read response       F_SplitDpv1ReadResPkgPNET                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          ��           list of parameters    stDpv1ValueHeaderEx    	  '                      ST_Dpv1ValueHeaderEx          ��                   n-�X  �   ����           F_SPLITDPV1WRITERESPKG           stDpv1ResHeader                  ST_Dpv1Header    ��              stDpv1ValueHeader                ST_Dpv1ValueHeader    ��              iPIndex            ��              iVIndex            ��              iSize            ��           
   eDpv1Error               E_PD_Dpv1Error    ��              stDpv1ValueHeaderExInt   	  '                      ST_Dpv1ValueHeaderEx            ��            	   Index7001                            pDpv1ResData    	  �                           ��           DPV1 write response       F_SplitDpv1WriteResPkg                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          ��           list of parameters    stDpv1ValueHeaderEx    	  '                      ST_Dpv1ValueHeaderEx          ��                   n-�X  �   ����           F_SPLITDPV1WRITERESPKGPNET           stDpv1ResHeader                  ST_Dpv1Header    ��              stDpv1ValueHeader                ST_Dpv1ValueHeader    ��              iPIndex            ��              iVIndex            ��              iSize            ��           
   eDpv1Error               E_PD_Dpv1Error    ��              stDpv1ValueHeaderExInt   	  '                      ST_Dpv1ValueHeaderEx            ��           	   Index7001                            pDpv1ResData    	  �                           ��           DPV1 write response       F_SplitDpv1WriteResPkgPNET                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          ��           list of parameters    stDpv1ValueHeaderEx    	  '                      ST_Dpv1ValueHeaderEx          ��                   n-�X  �   ����           FB_ASI_ADDRESSING           iaddressState            ��              iParametervalue            ��            	   TrigStart                 R_TRIG    ��!              fbParameterinterface                                 FB_ASI_Parameterinterface    ��"                 iOldAddress           ��              iNewAddress           ��              bStart            ��                 bBusy            ��              bErr            ��              iErrornumber           ��                 stParameterBuffer                     ST_ParameterBuffer  ��                   n-�X  �    ����           FB_ASI_PARAMETERCONTROL           bstatemashine             ��              iBuffercounter            ��              iBufferstate            ��              bcheck             ��              iParameterstate_old            ��              iBuffercounterOld            ��                         stParameter_IN                 ST_Parameter_IN  ��              stParameter_OUT                 ST_Parameter_OUT  ��              stParameterBuffer                     ST_ParameterBuffer  ��                   n-�X  �    ����           FB_ASI_PARAMETERINTERFACE           iParameterStep            ��%              iParameterstate_intern            ��&              iBufferNumber            ��'              TimerBuffer                    TON    ��(           
      iParameternumber           ��              iParametervalue           ��              bHiWord            ��          0:LoWord, 1:HiWord   bmaskAccess            ��          0:usual access, 1:mask access   iParametermask           ��       "   Parametermask if bmaskAccess:=true   bParametermode            ��          0: Read, 1: Write 
   bCycleMode            ��       -   0: Acyclic , 1:Cyclic (permanent Read/Write) 	   bCommMode            ��          0: Parameteraccess, 1: ADS   bRegComm            ��       D   Registercommunication: 0: Parameteraccess, 1: Registercommunication    bStart            ��                 bBusy            ��              bErr            ��              iErrornumber           ��              iParameterReadvalue           ��                 stParameterBuffer                     ST_ParameterBuffer  ��"                   n-�X  �    ����           FB_ASI_PROCESSDATA_ANALOG           fbParameterinterface                                 FB_ASI_Parameterinterface    ��#           	   TrigStart                 R_TRIG    ��$              iParametermask            ��%              bHiWord             ��&              iParametervalue            ��'              iParameterReadValue            ��(              istate            ��)                 iSlaveaddress           ��              iSlavevalue           ��              bParametermode            ��          0: Read, 1: Write 
   bCycleMode            ��       -   0: Cyclic (permanent Read/Write), 1: Acyclic 	   bCommMode            ��          0: Parameterzugriff, 1: ADS   bRegComm            ��       E   Registerkommunikation: 0: Parameterzugriff, 1: Registerkommunikation    bmaskAccess            ��          0:usual access, 1:mask access   bStart            ��                 bBusy            ��              bErr            ��              iErrornumber           ��           
   iReadValue           ��              iParametergroup           ��                 stParameterBuffer                     ST_ParameterBuffer  ��                    n-�X  �    ����           FB_ASI_PROCESSDATA_DIGITAL           fbParameterinterface                                 FB_ASI_Parameterinterface    ��#           	   TrigStart                 R_TRIG    ��$              iParametermask            ��%              bHiWord             ��&              iParametervalue            ��'              iParameterReadValue            ��(              istate            ��)                 iSlaveaddress           ��              iSlavevalue           ��              bParametermode            ��          0: Read, 1: Write 
   bCycleMode            ��       -   0: Acyclic , 1:Cyclic (permanent Read/Write) 	   bCommMode            ��          0: Parameterzugriff, 1: ADS   bRegComm            ��       E   Registerkommunikation: 0: Parameterzugriff, 1: Registerkommunikation    bmaskAccess            ��          0:usual access, 1:mask access   bStart            ��                 bBusy            ��              bErr            ��              iErrornumber           ��           
   iReadValue           ��              iParametergroup           ��                 stParameterBuffer                     ST_ParameterBuffer  ��                    n-�X  �    ����           FB_ASI_PROJECTING           iProjectingStep            ��"           	   TrigStart                 R_TRIG    ��#              iAddressFactor            ��$              iParameternumber            ��%           
   iReadValue            ��&              fbParameterinterface                                 FB_ASI_Parameterinterface    ��'                 iSlaveaddress           ��              iParametervalue           ��              bIOValue            ��          Read/Write IO-value of a slave   bIDCode            ��          Read/Write	ID-code of a slave
   bReadWrite            ��          0: Read, 1: Write   bReadLPS            ��       !   Read List of all projected Slaves   bStart            ��                 bBusy            ��              bErr            ��              iErrornumber           ��              iParameterReadvalue           ��          IO-value or ID-code of a slave   iLPS           ��                 stParameterBuffer                     ST_ParameterBuffer  ��                   n-�X  �    ����           FB_ASI_READPARAMETER        	   iReadStep            ��           	   TrigStart                 R_TRIG    ��              fbParameterinterface                                 FB_ASI_Parameterinterface    ��                 iParameternumber           ��           
   bCycleMode            ��       -   0: Acyclic , 1:Cyclic (permanent Read/Write)    bStart            ��                 bBusy            ��              bErr            ��              iErrornumber           ��              iParameterReadvalue           ��                 stParameterBuffer                     ST_ParameterBuffer  ��                   n-�X  �    ����           FB_ASI_SLAVEDIAG        	   iDiagStep            ��#           	   TrigStart                 R_TRIG    ��$              iAddressFactor            ��%              iParameternumber            ��&           
   iReadValue            ��'              fbParameterinterface                                 FB_ASI_Parameterinterface    ��(              TimerResetCounter                    TON    ��*                 iSlaveaddress           ��              iCounter           ��       s   1:PhysicalFaultCounter,  2:TimeoutCounter,  3:ResponseCounter,  4:Leave-DataExchCounter,  5:DataExch-FailedCounter    bCounterReset            ��              bReadLES            ��           Read List of all detected Slaves   bReadLAS            ��       !   Read List of all activated Slaves
   bCycleMode            ��       -   0: Acyclic , 1:Cyclic (permanent Read/Write)    bStart            ��                 bBusy            ��              bErr            ��              iErrornumber           ��              iCounterValue           ��          Counter of a slave
   iSlaveList           ��          LES or LAS of all Slaves      stParameterBuffer                     ST_ParameterBuffer  ��                    n-�X  �    ����           FB_ASI_WRITEPARAMETER        
   iWriteStep            ��           	   TrigStart                 R_TRIG    ��              fbParameterinterface                                 FB_ASI_Parameterinterface    ��                 iParameternumber           ��              iParametervalue           ��              bStart            ��                 bBusy            ��              bErr            ��              iErrornumber           ��                 stParameterBuffer                     ST_ParameterBuffer  ��                   n-�X  �    ����           FB_ASI_WRITEREADPARAMETER        
   iWriteStep            ��           	   TrigStart                 R_TRIG    ��              fbParameterinterface                                 FB_ASI_Parameterinterface    ��                 iParameternumber           ��              iParametervalue           ��              bStart            ��                 bBusy            ��              bErr            ��              iParameterReadValue           ��              iErrornumber           ��                 stParameterBuffer                     ST_ParameterBuffer  ��                   n-�X  �    ����           FB_AX2000_AXACT           i16State            ��              icheckStatus            ��              icheckControlWord            ��          ControlWord for Servo   bServoReady             ��          readyFlag for HSW	   TrigStart                 R_TRIG    ��              TrigTimeOut                 R_TRIG    ��              bResetServo             ��       '   first move of Servo after Start/Restart   TimerTimeOut                    TON    ��               bTimeOutStart             ��!           	   iHighByte            ��#              iLowByte            ��$              icheckByteSwaping            ��%              bMapInOutputs             ��&              bShortStop_check             ��'          virtual Input/Output   stPZD_IN                 	   ST_PZD_IN    ��*           	   stPZD_OUT                 
   ST_PZD_OUT    ��+                 bMode_DigitalSpeed            ��       ,   OP-Mode digital speed instead of Positioning   iDigitalSpeed           ��       (   digital speed if OP-Mode = digital speed	   iVelocity           ��          Velocity	   iPosition           ��          Position   imotion_tasknumber           ��       "   number of EEPROM-saved motion-task   imotion_blocktype           ��       #   optional Parameters of motion tasks   bStart            ��	          START   bStop            ��
          STOP
   bShortStop            ��       5   1: break of motion task, 0: continue same motion task   bErrorResume            ��          Error resume   tTimeOut    �     ��                 bBusy            ��              bError            ��          Errorstatus of Servo   bTimeOutErr            ��                 stPZDIN                  	   ST_PZD_IN  ��.          Data from NC   stPZDOUT                  
   ST_PZD_OUT  ��/       
   Data to NC        n-�X  �    ����           FB_AX2000_JOGMODE           i16state            ��              icheckStatus            ��              TrigTimeOut                 R_TRIG    ��              bTimeOutStart             ��              TimerTimeOut                    TON    ��              bMapInOutputs             ��          virtual Input/Output   stPZD_IN                 	   ST_PZD_IN    ��           	   stPZD_OUT                 
   ST_PZD_OUT    ��                 bStart            ��              bStop            ��           
   iBasicVelo           ��          BasicVelocity   tTimeOut    �     ��                 bBusy            ��
              bErr            ��              bTimeOutErr            ��                 stPZDIN                  	   ST_PZD_IN  ��          Data from NC   stPZDOUT                  
   ST_PZD_OUT  ��       
   Data to NC        n-�X  �    ����           FB_AX2000_PARAMETER           iError            ��           	   fbReadPkw                                  FB_FCxxxxDpv0PkwRead    ��           
   fbWritePkw                                  FB_FCxxxxDpv0PkwWrite    ��           
      iSlaveAddress           ��           Station Address of the Slave    iPnu    �     ��           Parameter-Number    nAxis          ��           Number of Axis    iLength          ��       "    Length of the parameter (2 or 4) 	   iSubindex          ��          Subindex   iParameterValue          ��           Parameter value    iFC310xDeviceId          ��	           Device-ID of the FCxxxx 
   bStartRead            ��
       !    StartFlag to start the PKW-Read    bStartWrite            ��       "    StartFlag to start the PKW-Write    tTimeOut    �     ��                 bBusy            ��              iErrorId           ��           
   iReadValue           ��                       n-�X  �   ����           FB_AX2000_REFERENCE           icheckStatus            ��              i16State            ��              bMapInOutputs             ��          virtual Input/Output   stPZD_IN                 	   ST_PZD_IN    ��          Data from NC	   stPZD_OUT                 
   ST_PZD_OUT    ��       
   Data to NC      bSetRefPoint            ��           set Reference Point   bCalibrStart            ��           start home running   bCalibrStop            ��           stop home running   iCalVelo           ��           basic velocity of Calibration      bBusy            ��
              bErr            ��                 stPZDIN                  	   ST_PZD_IN  ��          Data from NC   stPZDOUT                  
   ST_PZD_OUT  ��       
   Data to NC        n-�X  �    ����           FB_AX200X_PROFIBUS           istate            ��$              TimerPosition                    TON    ��%              fbAX2000_AXACT                                               FB_AX2000_AXACT    ��&              fbAX2000_Parameter                              FB_AX2000_Parameter    ��'              fbAX2000_JogMode                               FB_AX2000_JogMode    ��(              fbAX2000_Reference                           FB_AX2000_Reference    ��)              iOPMode            ��+           
   ERR_OPMODE          ��/                 bInit            ��          Initialization   bMode_DigitalSpeed            ��       ,   OP-Mode digital speed instead of Positioning   iDigitalSpeed           ��       (   digital speed if OP-Mode = digital speed	   iVelocity           ��          Velocity	   iPosition           ��          Position   iRunningMode           ��       :   0:digital speed, 1: motiontask, 2: JogMode, 3: Calibration   imotion_tasknumber           ��	       "   number of EEPROM-saved motion-task   imotion_blocktype           ��
       6   optional Parameters of motion tasks, default:SI-values   iJogModeBasicValue           ��          BasicVelocity for JogMode   iCalVelo           ��           basic velocity of Calibration   bSetRefPoint            ��           set Reference Point   bStart            ��          START   bStop            ��          STOP
   bShortStop            ��           break of motion task   iSlaveAddress           ��           Station Address of the Slave    iFC310xDeviceId           ��           Device-ID of the FCxxxx    bErrorResume            ��          Error resume   tTimeOut    �     ��                 bBusy            ��              bError            ��          Errorstatus of Servo   iErrID           ��              bTimeOutErr            ��              bInitOK            ��          Initialization OK   iactPosition           ��          actual Position SI-value      stPZD_IN                  	   ST_PZD_IN  ��           Data from NC	   stPZD_OUT                  
   ST_PZD_OUT  ��!       
   Data to NC        n-�X  �   ����           FB_DPV1READ           fbWriteAccessData                          ADSWRITE    ��*           
   fbReadData                          ADSREAD    ��+              iState            ��,           	   bExecute_             ��-              stDpv1ReqHeader                  ST_Dpv1Header    ��/              stDpv1ResHeader                  ST_Dpv1Header    ��0           	   WaitTimer           (PT := T#100ms)       d        TON    ��2           
   TmOutTimer                    TON    ��3           	      bExecute            ��           drive access info    aNetId            
   T_AmsNetId   ��       (    NetID of Profibus Master FC310x/EL6731    iProfibusSlaveAdr           ��           DP address of ProfiDrive    iDriveId           ��           0..255 possible    pDpv1ReqData    	  �                           ��              iDpv1ReqDataLen           ��              pDpv1ResData    	  �                           ��              iDpv1ResDataLen           ��              tTmOut    �     ��                 bBusy            ��              bError            ��               bErrorValues            ��!              iErrId           ��"              iErrorClass           ��#           
   iErrorCode           ��$                 iRequestRef           ��'           1..127;    0: reserved         n-�X  �   ����           FB_DPV1READPNET     	      fbRWData                            ADSRDWRT    ��%              iState            ��&           	   bExecute_             ��'              iIGrp    #�      ��(              stDpv1ReqHeader                  ST_Dpv1Header    ��)              stDpv1ResHeader                  ST_Dpv1Header    ��*              stPNETFrameHeader                    ST_PNIOConfigRecord    ��+           	   WaitTimer           (PT := T#100ms)       d        TON    ��-           
   TmOutTimer                    TON    ��.           	      bExecute            ��           drive access info    aNetId            
   T_AmsNetId   ��       !    NetID of Profibus Master EL6631    iProfinetPort           ��           Port of ProfiDrive    iDriveId           ��           0..255 possible    pDpv1ReqData    	                            ��              iDpv1ReqDataLen           ��              pDpv1ResData    	  �                           ��              iDpv1ResDataLen           ��              tTmOut           ��                 bBusy            ��              bError            ��              bErrorValues            ��              iErrId           ��              iErrorClass           ��           
   iErrorCode           ��                 iRequestRef           ��"           1..127;    0: reserved         n-�X  �   ����           FB_DPV1WRITE           fbWriteAccessData                          ADSWRITE    ��*           
   fbReadData                          ADSREAD    ��+              iState            ��,           	   bExecute_             ��-              stDpv1ReqHeader                  ST_Dpv1Header    ��/              stDpv1ResHeader                  ST_Dpv1Header    ��0           	   WaitTimer           (PT := T#100ms)       d        TON    ��2           
   TmOutTimer                    TON    ��3           	      bExecute            ��           drive access info    aNetId            
   T_AmsNetId   ��       (    NetID of Profibus Master FC310x/EL6731    iProfibusSlaveAdr           ��           DP address of ProfiDrive    iDriveId           ��           0..255 possible    pDpv1ReqData    	  �                           ��              iDpv1ReqDataLen           ��              pDpv1ResData    	  �                           ��              iDpv1ResDataLen           ��              tTmOut    �     ��                 bBusy            ��              bError            ��               bErrorValues            ��!              iErrId           ��"              iErrorClass           ��#           
   iErrorCode           ��$                 iRequestRef           ��'           1..127;    0: reserved         n-�X  �   ����           FB_DPV1WRITEPNET     	      fbRWData                            ADSRDWRT    ��%              iState            ��&           	   bExecute_             ��'              iIGrp    #�      ��(              stDpv1ReqHeader                  ST_Dpv1Header    ��)              stDpv1ResHeader                  ST_Dpv1Header    ��*              stPNETFrameHeader                    ST_PNIOConfigRecord    ��+           	   WaitTimer           (PT := T#100ms)       d        TON    ��-           
   TmOutTimer                    TON    ��.           	      bExecute            ��           drive access info    aNetId            
   T_AmsNetId   ��       !    NetID of Profinet Master EL6631    iProfinetPort           ��           Port of ProfiDrive    iDriveId           ��           0..255 possible    pDpv1ReqData    	                            ��              iDpv1ReqDataLen           ��              pDpv1ResData    	  �                           ��              iDpv1ResDataLen           ��              tTmOut           ��                 bBusy            ��              bError            ��              bErrorValues            ��              iErrId           ��              iErrorClass           ��           
   iErrorCode           ��                 iRequestRef           ��"           1..127;    0: reserved         n-�X  �   ����           FB_FCXXXXDPV0PKWREAD           fbRead                          ADSREAD    ��           
   fbDevNetId                          IOF_GetDeviceNetId    ��              istate            ��           	   sDevNetId                ��              iIdxGrp            ��              iport            ��              iParameterValue            ��           
   
   bStartFlag            ��       !    StartFlag to start the PKW-Read    iStationAdd           ��           Station Address of the Slave 	   iDeviceId           ��           Device-ID of the FCxxxx    nAxis           ��           Number of Axis    iPnu           ��           Parameter-Number 	   iSubindex           ��           Subindex     iLength           ��	       "    Length of the parameter (2 or 4)    bArrayCodesNotSupported            ��
       }    if the drive does not support the ARRAY-AKs 6,7 and 8, this flag should be set (then the AKs 1,2,3 will be used for Arrays)    bSubindexInOctet3            ��       V    if the drive needs the subindex in Octet 3 (ProfiDrive 2.0), this flag should be set    tTimeOut           ��                 bBusy            ��           Reading is busy    iErrorId           ��           
   iReadValue           ��           Parameter value             n-�X  �    ����           FB_FCXXXXDPV0PKWWRITE           fbWrite                          ADSWRITE    ��           
   fbDevNetId                          IOF_GetDeviceNetId    ��              istate            ��           	   sDevNetId                ��              iIdxGrp            ��              iport            ��              iParameterValue            ��              
   bStartFlag            ��       !    StartFlag to start the PKW-REad    iStationAdd           ��           Station Address of the Slave 	   iDeviceId           ��           Device-ID of the FCxxxx    nAxis           ��           Number of Axis    iPnu           ��           Parameter-Number 	   iSubindex           ��           Subindex     iLength           ��	       "    Length of the parameter (2 or 4)    iWriteValue           ��
           Parameter value    bArrayCodesNotSupported            ��       }    if the drive does not support the ARRAY-AKs 6,7 and 8, this flag should be set (then the AKs 1,2,3 will be used for Arrays)    bSubindexInOctet3            ��       V    if the drive needs the subindex in Octet 3 (ProfiDrive 2.0), this flag should be set    tTimeOut    '     ��                 bBusy            ��           Writing is busy    iErrorId           ��                       n-�X  �    ����           FB_GETDPRAMINFO           FallingEdge                 F_TRIG    ��           
   RisingRead                 R_TRIG    ��              fbAdsReadEx                        	   ADSREADEX    ��                 nDevId           ��       v    Device id of the FCxxxx or other DPRAM card ( Map the FC card as generic DPRAM/NOVRAM card im System Manager first )    bExecute            ��       ,    Rising edge starts function block execution   tTimeOut    �     ��           Max timeout for this command       bBusy            ��              bError            ��	              nErrid           ��
              stInfo                ST_NovRamAddrInfo   ��                       n-�X  �   ����           FB_GETDPRAMINFOEX           FallingEdge                 F_TRIG    ��           
   RisingRead                 R_TRIG    ��              fbAdsReadEx                        	   ADSREADEX    ��                 nDevId           ��       v    Device id of the FCxxxx or other DPRAM card ( Map the FC card as generic DPRAM/NOVRAM card im System Manager first )    bExecute            ��       ,    Rising edge starts function block execution   tTimeOut    �     ��           Max timeout for this command       bBusy            ��              bError            ��	              nErrid           ��
              stInfo                 ST_NovRamAddrInfoEx   ��                       n-�X  �   ����           FB_GETUPSSTATUS           fbRegQueryValue                                 FB_RegQueryValue ` ��              step         ` ��              i         ` ��           
   risingEdge                 R_TRIG ` ��              regNames   	                       
(*  Config REG_SZ's *)					'Model', 'Vendor',
(*  Status REG_SZ's *)					'FirmwareRev', 'SerialNumber',
(*  Status REG_DWORD's *)				'CommStatus','BatteryCapacity','BatteryStatus','TotalUPSRuntime','TcPowerFailCnt', 'TcChargeFlags','UtilityPowerStatus'            Model         Vendor         FirmwareRev         SerialNumber      
   CommStatus         BatteryCapacity         BatteryStatus         TotalUPSRuntime         TcPowerFailCnt         TcChargeFlags         UtilityPowerStatus ` ��           	   regSZData    Q       Q  ` ��           	   regDWData         ` ��              delay           ( PT := T#300ms)       ,       TON ` ��              tTimeOut    �   ` ��           	   tmpStatus                         ST_UPSStatus ` ��              sPort    Q       Q  ` ��              sKey    Q       Q  ` ��                 sNetId            
   T_AmsNetId   ��              nPort           0    	   T_AmsPort   ��           0 = Windows UPS service    bEnable            ��                 bValid            ��              bError            ��	              nErrId           ��
              stStatus                         ST_UPSStatus   ��                       n-�X  �    ����           FB_KL1501CONFIG           rtRead                 R_TRIG    ��              rtSet                 R_TRIG    ��              bSetReq             ��           
   tonTimeout                    TON    ��              iStep            ��              bSetConfigError             ��              wReg32            ��           	   wSetReg32            ��            	   wFirmware            ��!           	   pFirmware                  ��"           	   sFirmware                ��#              iDataIn0Saved            ��$              iDataIn1Saved            ��%                 bConfigurate            ��       H   Rising edge starts configuration including read-configuration afterwards   bReadConfig            ��       *   Rising edge reads the actual configuration   iSetCounterType           ��       !   Counter-type to be set, see table   bSetBackwardCounting            ��          Select backward-counting   tTimeout    �     ��       =   Time-out-time for Reading/Configuration - initially set to 5s      bBusy            ��
       '   Reading or configuration is in progress   bError            ��       !   Error while reading/configuration   iErrorId           ��          Id of the last upcoming error   iState           ��       j   As long as the funcion-block is not busy, this variable shows the state of the terminal, otherwise it is 0   iDataIn0           ��       �   As long as the funcion-block is not busy, this variable shows the dataIn0 of the terminal, otherwise it keeps the value previous to reding/configuration   iDataIn1           ��       �   As long as the funcion-block is not busy, this variable shows the dataIn1 of the terminal, otherwise it keeps the value previous to reding/configuration   iDataIn           ��       M   iDataIn1 and IDataIn0 put together as an UDINT, with iDataIn1 as High-Integer   iTerminalType           ��       '   Terminal-type-number, in this case 3228   iSpecialType           ��          Sub-type-number   iFirmwareVersion           ��          Firmware in ASCII-code   sDescription    Q       Q    ��       A   Terminal-type, special-type and firmware-version as readable text   sCounterType    Q       Q    ��       (   Text-description of entered counter-type   bBackwardCounting            ��       $   TRUE: Backward-counting was selected      stInData                 ST_KL1501InData  ��(           Process image of the inputs. 	   stOutData                 ST_KL1501OutData  ��)           Process image of the outputs.         n-�X  �    ����           FB_KL27X1CONFIG           rtRead                 R_TRIG    ��%              rtSet                 R_TRIG    ��&              bSetReq             ��'           
   tonTimeout                    TON    ��(              iStep            ��)              bSetConfigError             ��*              wReg32            ��+           	   wSetReg32            ��,              wReg35            ��-           	   wSetReg35            ��.              wReg36            ��/           	   wSetReg36            ��0              wReg37            ��1           	   wSetReg37            ��2              wReg38            ��3           	   wSetReg38            ��4              wReg39            ��5           	   wSetReg39            ��6              wReg40            ��7           	   wSetReg40            ��8              wReg41            ��9           	   wSetReg41            ��:           	   wFirmware            ��;           	   pFirmware                  ��<           	   sFirmware                ��=                 bConfigurate            ��       H   Rising edge starts configuration including read-configuration afterwards   bReadConfig            ��       *   Rising edge reads the actual configuration   bSetDimRampAbsolute            ��       b   FALSE: ramp-time refers to a step from 0..100%, TRUE: ramp-time refers to a step to the next value   iSetRampTime           ��          Ramp-time to be set, see table   bSetWatchdogDisable            ��       5   TRUE disables the watchdog for fieldbus-communication   iSetWatchdogTimeout           ��          Watchdog-time in 10ms-units   iSetTimeoutOnValue           ��	       D   Value to be set, if timeout occurs and lamp was previously turned on   iSetTimeoutOffValue           ��
       E   Value to be set, if timeout occurs and lamp was previously turned off   iSetDimmerMode           ��           Dimmer-mode to be set, see table   bSetOnAfterShortCircuit            ��       <   Selects, if the lamp has to be turned on after short-circuit   bSetLineFrequency60Hz            ��       3   FALSE sets the line-frequency to 50Hz, TRUE to 60Hz   tTimeout    �     ��       =   Time-out-time for Reading/Configuration - initially set to 5s      bBusy            ��       '   Reading or configuration is in progress   bError            ��       !   Error while reading/configuration   iErrorId           ��          Id of the last upcoming error   iState           ��       j   As long as the funcion-block is not busy, this variable shows the state of the terminal, otherwise it is 0   iTerminalType           ��          Terminal-type-number, e.g. 2751   iSpecialType           ��          Sub-type-number   iFirmwareVersion           ��          Firmware in ASCII-code   sDescription    Q       Q    ��       A   Terminal-type, special-type and firmware-version as readable text   bDimRampAbsolute            ��       E   TRUE: Dimramp was set to absolute - FALSE Dimramp was set to relative	   sRampTime    Q       Q    ��       0   Ramp-time, which was set, according to the table   bWatchdogDisable            ��          TRUE: Watchdog was disabled   tWatchdogTimeout           ��          Entered Watchdog-time   iTimeoutOnValue           ��          Timeout on-value, which was set   iTimeoutOffValue           ��           Timeout off-value, which was set   sDimmerMode    Q       Q    ��           Dimmer-mode, which was selected   sAfterShortCircuit    Q       Q    ��!       2   Selected behaviour after short-circuit - on or off   sLineFrequency    Q       Q    ��"       %   Selected line-frequency - 50 or 60 Hz      stInData                 ST_KL27x1InData  ��@           Process image of the inputs. 	   stOutData                 ST_KL27x1OutData  ��A           Process image of the outputs.         n-�X  �    ����           FB_KL3208CONFIG           rtRead                 R_TRIG    ��              rtSet                 R_TRIG    ��              bSetReq             ��           
   tonTimeout                    TON    ��              iStep            ��              bSetConfigError             ��              wReg32            ��           	   wSetReg32            ��              wReg39            ��           	   wSetReg39            ��           	   wFirmware            ��           	   pFirmware                  ��            	   sFirmware                ��!              iDataInSaved            ��"                 bConfigurate            ��       H   Rising edge starts configuration including read-configuration afterwards   bReadConfig            ��       *   Rising edge reads the actual configuration   iSetSensorType           ��           Sensor-type to be set, see table   tTimeout    �     ��       =   Time-out-time for Reading/Configuration - initially set to 5s
      bBusy            ��	       '   Reading or configuration is in progress   bError            ��
       !   Error while reading/configuration   iErrorId           ��          Id of the last upcoming error   iState           ��       j   As long as the funcion-block is not busy, this variable shows the state of the terminal, otherwise it is 0   iDataIn           ��       �   As long as the funcion-block is not busy, this variable shows the dataIn of the terminal, otherwise it keeps the value previous to reding/configuration   iTerminalType           ��       '   Terminal-type-number, in this case 3208   iSpecialType           ��          Sub-type-number   iFirmwareVersion           ��          Firmware in ASCII-code   sDescription    Q       Q    ��       A   Terminal-type, special-type and firmware-version as readable text   sSensorType    Q       Q    ��       '   Text-description of entered sensor-type      stInData                 ST_KL3208InData  ��%           Process image of the inputs. 	   stOutData                 ST_KL3208OutData  ��&           Process image of the outputs.         n-�X  �    ����           FB_KL320XCONFIG           rtRead                 R_TRIG    ��              rtSet                 R_TRIG    ��              bSetReq             ��           
   tonTimeout                    TON    ��              iStep            ��              bSetConfigError             ��              wReg32            ��           	   wSetReg32            ��           	   wFirmware            ��           	   pFirmware                  ��           	   sFirmware                ��               iDataInSaved            ��!                 bConfigurate            ��       H   Rising edge starts configuration including read-configuration afterwards   bReadConfig            ��       *   Rising edge reads the actual configuration   iSetSensorType           ��           Sensor-type to be set, see table   tTimeout    �     ��       =   Time-out-time for Reading/Configuration - initially set to 5s      bBusy            ��	       '   Reading or configuration is in progress   bError            ��
       !   Error while reading/configuration   iErrorId           ��          Id of the last upcoming error   iState           ��       j   As long as the funcion-block is not busy, this variable shows the state of the terminal, otherwise it is 0   iDataIn           ��       �   As long as the funcion-block is not busy, this variable shows the dataIn of the terminal, otherwise it keeps the value previous to reding/configuration   iTerminalType           ��          Terminal-type-number, e.g. 3204   iSpecialType           ��          Sub-type-number   iFirmwareVersion           ��          Firmware in ASCII-code   sDescription    Q       Q    ��       A   Terminal-type, special-type and firmware-version as readable text   sSensorType    Q       Q    ��       '   Text-description of entered sensor-type   bTwoWiredConnection            ��       *   Shows, if two-wired connection is selected      stInData                 ST_KL320xInData  ��$           Process image of the inputs. 	   stOutData                 ST_KL320xOutData  ��%           Process image of the outputs.         n-�X  �    ����           FB_KL3228CONFIG           rtRead                 R_TRIG    ��              rtSet                 R_TRIG    ��              bSetReq             ��           
   tonTimeout                    TON    ��              iStep            ��              bSetConfigError             ��              wReg32            ��           	   wSetReg32            ��           	   wFirmware            ��           	   pFirmware                  ��           	   sFirmware                ��              iDataInSaved            ��                  bConfigurate            ��       H   Rising edge starts configuration including read-configuration afterwards   bReadConfig            ��       *   Rising edge reads the actual configuration   iSetSensorType           ��           Sensor-type to be set, see table   tTimeout    �     ��       =   Time-out-time for Reading/Configuration - initially set to 5s
      bBusy            ��	       '   Reading or configuration is in progress   bError            ��
       !   Error while reading/configuration   iErrorId           ��          Id of the last upcoming error   iState           ��       j   As long as the funcion-block is not busy, this variable shows the state of the terminal, otherwise it is 0   iDataIn           ��       �   As long as the funcion-block is not busy, this variable shows the dataIn of the terminal, otherwise it keeps the value previous to reding/configuration   iTerminalType           ��       '   Terminal-type-number, in this case 3228   iSpecialType           ��          Sub-type-number   iFirmwareVersion           ��          Firmware in ASCII-code   sDescription    Q       Q    ��       A   Terminal-type, special-type and firmware-version as readable text   sSensorType    Q       Q    ��       '   Text-description of entered sensor-type      stInData                 ST_KL3228InData  ��#           Process image of the inputs. 	   stOutData                 ST_KL3228OutData  ��$           Process image of the outputs.         n-�X  �    ����           FB_NOVRAMREADWRITE     	      bInit             ��           
   nInitDevId            ��           	   bWantRead             ��           
   bWantWrite             ��              iStep            ��           
   RisingRead                 R_TRIG    ��              RisingWrite                 R_TRIG    ��              stNovRamAddrInfo                ST_NovRamAddrInfo    ��              fbAdsReadEx                        	   ADSREADEX    ��                 nDevId           ��       ^    Device id of the FCxxxx card. Map the FC card as generic DPRAM/NOVRAM card im System Manager    bRead            ��       /    Rising edge starts read data block from NovRam   bWrite            ��       .    Rising edge starts write data block to NovRam   cbSrcLen           ��           Number of data bytes to write 	   cbDestLen           ��           Number of data bytes to read   pSrcAddr           ��       "    Address of the write data buffer 	   pDestAddr           ��	       !    Address of the read data buffer    tTimeOut    �     ��
           Max timeout for this command       bBusy            ��           The fb is working    bError            ��           The fb returns an error    nErrId           ��           Error code    cbRead           ��       '    Number of succesfully read data bytes    cbWrite           ��       (    Number of succesfully write data bytes             n-�X  �   ����           FB_NOVRAMREADWRITEEX           bInit             ��           
   nInitDevId            ��           	   bWantRead             ��           
   bWantWrite             ��              bCopy             ��              i            ��              iStep            ��           
   RisingRead                 R_TRIG    ��              RisingWrite                 R_TRIG    ��              stNovRamAddrInfo                 ST_NovRamAddrInfoEx    ��!              fbAdsReadEx                        	   ADSREADEX    ��"              pByte                  ��$              pCard                  ��%           
      nDevId           ��       ^    Device id of the FCxxxx card. Map the FC card as generic DPRAM/NOVRAM card im System Manager    bRead            ��       /    Rising edge starts read data block from NovRam   bWrite            ��       .    Rising edge starts write data block to NovRam   cbSrcLen           ��           Number of data bytes to write 	   cbDestLen           ��           Number of data bytes to read   pSrcAddr           ��       "    Address of the write data buffer 	   pDestAddr           ��	       !    Address of the read data buffer 	   nReadOffs           ��
       *    Offset in the DPRAM to start reading from
   nWriteOffs           ��       (    Offset in the DPRAM to start writing to   tTimeOut           ��           Max timeout for this command       bBusy            ��           The fb is working    bError            ��           The fb returns an error    nErrId           ��           Error code    cbRead           ��       '    Number of succesfully read data bytes    cbWrite           ��       (    Number of succesfully write data bytes             n-�X  �    ����           FB_READADSTECSYSDATA           dwTemp            ��              ptr    	                               ��              delay                    TON    ��              wPort    @      ��           
   risingEdge                 R_TRIG    ��              step            ��              fbAdsRdWrtEx                          
   ADSRDWRTEX    ��                 sNetId            
   T_AmsNetId   ��              bEnable            ��           
   tCycleTime    d      ��                 bValid            ��              bError            ��	              nErrId           ��
           	   stSysData                                 ST_AdsTecSysData   ��                       n-�X  �    ����           FB_READINPUT_ANALOG           fbParameterinterface                                 FB_ASI_Parameterinterface    ��!              bHiWord             ��"              iParametervalue            ��#              iParameterReadValue            ��$              iParametergroup            ��%              iErrCounter            ��&              istate            ��'                 iSlaveaddress           ��              iChannel           ��           
   bCycleMode            ��       -   0: Acyclic , 1:Cyclic (permanent Read/Write)    bStart            ��                 bBusy            ��              bErr            ��              iErrornumber           ��              bValid            ��           	   bOverflow            ��           
   iReadValue           ��                 stParameterBuffer                     ST_ParameterBuffer  ��                   n-�X  �    ����           FB_WRITEOUTPUT_ANALOG           fbParameterinterface                                 FB_ASI_Parameterinterface    ��              bHiWord             ��               iParametervalue            ��!              iParameterReadValue            ��"              iParametergroup            ��#              iErrCounter            ��$              istate            ��%           
   iReadValue            ��'                 iSlaveaddress           ��              iChannel           ��              iSlavevalue           ��           
   bCycleMode            ��       -   0: Acyclic , 1:Cyclic (permanent Read/Write)    bStart            ��                 bBusy            ��              bErr            ��              iErrornumber           ��                 stParameterBuffer                     ST_ParameterBuffer  ��                   n-�X  �    ����           IOF_CAN_LAYER2COMMAND        	   ADSWRITE1                          ADSWRITE    ��           
   RisingEdge                 R_TRIG    ��              FallingEdge                 F_TRIG    ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              LEN           ��              SRCADDR           ��              START            ��              TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��                       n-�X  �   ����           IOF_DEVICERESET        
   ADSWRTCTL1       E    ( PORT := AMSPORT_R0_IO, ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0 )              	   T_AmsPort                        	   ADSWRTCTL ` ��           
   RisingEdge                 R_TRIG ` ��              state         ` ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              RESET            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��                       n-�X  �   ����           IOF_GETBOXADDRBYNAME           ADSRDWRTEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000004 )              	   T_AmsPort                       
   ADSRDWRTEX ` ��           
   RisingEdge                 R_TRIG ` ��              state         ` ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              BOXNAME               T_MaxString   ��              START            ��              TMOUT    �     ��                 BUSY            ��
              ERR            ��              ERRID           ��              BOXADDR           ��                       n-�X  �   ����           IOF_GETBOXADDRBYNAMEEX           ADSRDWRTEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000004 )              	   T_AmsPort                       
   ADSRDWRTEX ` ��           
   RisingEdge                 R_TRIG ` ��              state         ` ��              StrBuff           ` ��                 NETID            
   T_AmsNetId   ��           
   DEVICENAME               T_MaxString   ��              BOXNAME               T_MaxString   ��              START            ��              TMOUT    �     ��                 BUSY            ��
              ERR            ��              ERRID           ��              BOXADDR           ��                       n-�X  �   ����           IOF_GETBOXCOUNT        
   ADSREADEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000002 )              	   T_AmsPort                     	   ADSREADEX ` ��           
   RisingEdge                 R_TRIG ` ��              state         ` ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              START            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              BOXCOUNT           ��                       n-�X  �   ����           IOF_GETBOXNAMEBYADDR           ADSRDWRTEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000003 )              	   T_AmsPort                       
   ADSRDWRTEX ` ��           
   RisingEdge                 R_TRIG ` ��              state         ` ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              BOXADDR           ��              START            ��              TMOUT    �     ��                 BUSY            ��
              ERR            ��              ERRID           ��              BOXNAME               T_MaxString   ��                       n-�X  �   ����           IOF_GETBOXNETID           ADSRDWRTEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000006 )              	   T_AmsPort                       
   ADSRDWRTEX ` ��           
   RisingEdge                 R_TRIG ` ��              state         ` ��              tmpNetId   	                       ` ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              BOXADDR           ��              START            ��              TMOUT    �     ��                 BUSY            ��
              ERR            ��              ERRID           ��              BoxNetId            
   T_AmsNetId   ��                       n-�X  �   ����           IOF_GETDEVICECOUNT        
   ADSREADEX1       F    ( PORT:= AMSPORT_R0_IO, IDXGRP:= 16#00005000, IDXOFFS:= 16#00000002 )              	   T_AmsPort          P              	   ADSREADEX ` ��           
   RisingEdge                 R_TRIG ` ��              state         ` ��                 NETID            
   T_AmsNetId   ��              START            ��              TMOUT    �     ��                 BUSY            ��              ERR            ��	              ERRID           ��
              DEVICECOUNT           ��                       n-�X  �   ����           IOF_GETDEVICEIDBYNAME           ADSRDWRTEX1       F    ( PORT:= AMSPORT_R0_IO, IDXGRP:= 16#00005000, IDXOFFS:= 16#00000003 )              	   T_AmsPort          P                
   ADSRDWRTEX ` ��           
   RisingEdge                 R_TRIG ` ��              state         ` ��                 NETID            
   T_AmsNetId   ��           
   DEVICENAME               T_MaxString   ��              START            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              DEVICEID           ��                       n-�X  �   ����           IOF_GETDEVICEIDS        
   ADSREADEX1       F    ( PORT:= AMSPORT_R0_IO, IDXGRP:= 16#00005000, IDXOFFS:= 16#00000001 )              	   T_AmsPort          P              	   ADSREADEX ` ��           
   RisingEdge                 R_TRIG ` ��              state         ` ��                 NETID            
   T_AmsNetId   ��              LEN           ��              DESTADDR           ��              START            ��              TMOUT    �     ��                 BUSY            ��
              ERR            ��              ERRID           ��                       n-�X  �   ����           IOF_GETDEVICEINFOBYNAME           ADSRDWRTEX1       F    ( PORT:= AMSPORT_R0_IO, IDXGRP:= 16#00005000, IDXOFFS:= 16#00000003 )              	   T_AmsPort          P                
   ADSRDWRTEX ` ��           
   ADSREADEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000005 )              	   T_AmsPort                     	   ADSREADEX ` ��              tmpNetId   	                       ` ��              state         ` ��           
   RisingEdge                 R_TRIG ` ��                 NETID            
   T_AmsNetId   ��           
   DEVICENAME               T_MaxString   ��              START            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              DEVICEID           ��              DEVICENETID            
   T_AmsNetId   ��                       n-�X  �   ����           IOF_GETDEVICENAME        
   ADSREADEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000001 )              	   T_AmsPort                     	   ADSREADEX ` ��           
   RisingEdge                 R_TRIG ` ��              state         ` ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              START            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��           
   DEVICENAME               T_MaxString   ��                       n-�X  �   ����           IOF_GETDEVICENETID        
   ADSREADEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000005 )              	   T_AmsPort                     	   ADSREADEX ` ��           
   RisingEdge                 R_TRIG ` ��              state         ` ��              tmpNetId   	                       ` ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              START            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              DeviceNetId            
   T_AmsNetId   ��                       n-�X  �   ����           IOF_GETDEVICETYPE        
   ADSREADEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000007 )              	   T_AmsPort                     	   ADSREADEX ` ��           
   RisingEdge                 R_TRIG ` ��              state         ` ��              tmpDeviceType         ` ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              START            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              IODeviceType               IODEVICETYPES   ��                       n-�X  �   ����           IOF_LB_BREAKLOCATIONTEST        
   ADSREADEX1                        	   ADSREADEX    ��           
   RisingEdge                 R_TRIG    ��              FallingEdge                 F_TRIG    ��              TestData   	                          ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              START            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              BREAK            ��              BOXNO           ��                       n-�X  �   ����           IOF_LB_PARITYCHECK        
   ADSREADEX1                        	   ADSREADEX    ��           
   RisingEdge                 R_TRIG    ��              FallingEdge                 F_TRIG    ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              LEN           ��              DESTADDR           ��              START            ��              TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��                       n-�X  �   ����           IOF_LB_PARITYCHECKWITHRESET        
   ADSREADEX1                        	   ADSREADEX    ��           
   RisingEdge                 R_TRIG    ��              FallingEdge                 F_TRIG    ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              LEN           ��              DESTADDR           ��              START            ��              TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��                       n-�X  �   ����           IOF_SER_DRIVE_BACKUP     2      iVALUE           ��              ReadSercosParam                                            IOF_SER_IDN_Read    ��              WriteSercosParam                                       IOF_SER_IDN_Write    ��              OpenBackupFile                             FB_FileOpen    ��!              CloseBackupFile                      FB_FileClose    ��"              ReadBackupFile                            FB_FileRead    ��#              WriteBackupFile                           FB_FileWrite    ��$              eState               E_SercosBackupState    ��&           
   sCheckData                 ST_SercosString    ��(              wCRC16_CCITT            ��)           	   wCheckSum            ��*              bCheck_I             ��,           	   bBackup_I             ��-           
   bRestore_I             ��.              bCheck_L             ��/           	   bBackup_L             ��0           
   bRestore_L             ��1           
   bUpdateCRC             ��2              bBackupDone             ��4              bRestoreDone             ��5              arrList   	  ��                       ��7              nListArrIdx            ��8              sListAttrib        
                ST_SercosParamAttrib    ��9              cbLen            ��;              arrData   	  ��                       ��<              nIDN            ��>              nCRCIDN    �       ��?              bCRCIDNExist             ��@              bCRCIDNTest            ��A              iIdx            ��B              sParamHeader                 ST_SercosParamHeader    ��D              cbSize            ��E              sFileHeader                  ST_SercosFileHeader    ��F           
   sParamData        
                ST_SercosParamData    ��G              iActListItem            ��I              iLastListItem            ��J           
   bEndOfList             ��K           	   bFileOpen             ��M              hFile            ��N              nVersion           ��O              nRetVal            ��P              bWrongListType             ��R           
   bFileError             ��S           
   nFileErrId            ��T           	   bIdnError             ��U           	   nIdnErrId            ��V              nIdnAccessId            ��W              wSavedCRC16_CCITT           ��Z              wSavedCheckSum           ��[              sSavedCheckData                 ST_SercosString   ��\                 bCheck            ��              bBackup            ��              bRestore            ��           
   bCRCEnable           ��              bStdBackupList           ��              sNetId            
   T_AmsNetId   ��              nPort           ��	              sComment               T_MaxString   ��
              ePath           PATH_BOOTPATH    
   E_OpenPath   ��           	   sPathName           'DRIVEPAR.BIN'       T_MaxString   ��              tTimeout    �     ��                 bBusy            ��              bError            ��              nErrId           ��              bCheckOK            ��       z   	Function block specific error codes:
	16#1005 = false backup parameter type 
	16#1006 = backup list was not IDN 192

            n-�X  �   ����           IOF_SER_DRIVE_BACKUPEX     2      iVALUE           ��"              ReadSercosParam                                            IOF_SER_IDN_Read    ��%              WriteSercosParam                                       IOF_SER_IDN_Write    ��&              OpenBackupFile                             FB_FileOpen    ��(              CloseBackupFile                      FB_FileClose    ��)              ReadBackupFile                            FB_FileRead    ��*              WriteBackupFile                           FB_FileWrite    ��+              eState               E_SercosBackupState    ��-           
   sCheckData                 ST_SercosString    ��/              wCRC16_CCITT            ��0           	   wCheckSum            ��1              bCheck_I             ��3           	   bBackup_I             ��4           
   bRestore_I             ��5              bCheck_L             ��6           	   bBackup_L             ��7           
   bRestore_L             ��8           
   bUpdateCRC             ��9              bBackupDone             ��;              bRestoreDone             ��<              nListArrIdx            ��>              sListAttrib        
                ST_SercosParamAttrib    ��?              cbLen            ��A              arrData   	  ��                       ��B              nIDN            ��D              nCRCIDN    �       ��E              bCRCIDNExist             ��F              bCRCIDNTest            ��G              iIdx            ��H              sParamHeader                 ST_SercosParamHeader    ��J              cbSize            ��K              sFileHeader                  ST_SercosFileHeader    ��L           
   sParamData        
                ST_SercosParamData    ��M              iActListItem            ��O              iLastListItem            ��P           
   bEndOfList             ��Q           	   bFileOpen             ��S              hFile            ��T              nVersion           ��U              nRetVal            ��V              bWrongListType             ��X           
   bFileError             ��Y           
   nFileErrId            ��Z           	   bIdnError             ��[           	   nIdnErrId            ��\              nIdnAccessId            ��]              iLargeParam            ��^              wSavedCRC16_CCITT           ��a              wSavedCheckSum           ��b              sSavedCheckData                 ST_SercosString   ��c                 bCheck            ��              bBackup            ��              bRestore            ��           
   bCRCEnable            ��              bStdBackupList           ��              bUserBackupList            ��              sNetId            
   T_AmsNetId   ��	              nPort           ��
              sComment               T_MaxString   ��              ePath           PATH_BOOTPATH    
   E_OpenPath   ��           	   sPathName           'DRIVEPAR.BIN'       T_MaxString   ��              tTimeout    �     ��              bIgnoreParamErr            ��                 bBusy            ��              bError            ��              nErrId           ��              bCheckOK            ��              iSkippedParams           ��              iHandledParams           ��       �   	Function block specific error codes:
	16#1005 = false backup parameter type 
	16#1006 = backup list was not IDN 192 (standard backup) or 0 (userdefined)
      arrList                  ST_SercosParamList  ��              arrSkippedList                   ST_SercosParamErrList  ��                   n-�X  �   ����           IOF_SER_DRIVE_RESET        
   WriteBlock                          ADSWRITE    ��              iState            ��              iRepeats            ��              nRetVal            ��              bReset_I             ��              Timeout           (PT := T#100ms)       d        TON    ��              nAttrib            ��              iValue            ��                 sNetId            
   T_AmsNetId   ��           net id of PC ('' = local PC)    nPort           ��       a    see System Manager 'IO-Configuration | IO Devices | Sercos Mastert | Sercos Drive | ADS | Port'    bReset            ��              tTimeout    �     ��                 bBusy            ��	              bError            ��
              nErrId           ��                       n-�X  �   ����           IOF_SER_GETPHASE        
   ADSREADEX1                        	   ADSREADEX    ��           
   RisingEdge                 R_TRIG    ��              FallingEdge                 F_TRIG    ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              GET            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              PHASE           ��                       n-�X  �   ����           IOF_SER_IDN_READ        	   ReadBlock                          ADSREAD    ��              iState            ��              iRepeats            ��              nRetVal            ��              dwDestAddr_I            ��           
   bExecute_I             ��              nMode_I            ��               Timeout           (PT := T#100ms)       d        TON    ��!              iVALUE           ��$           Parameter Value 	   iFCNSTATE          ��%           Function State    iNAME          ��&           Parameter Name    iATTRIB          ��'           Parameter Attribute    iUNIT          ��(           Parameter Unit    iMIN          ��)           Parameter Minimum    iMAX          ��*           Parameter Maximum 	      sNetId            
   T_AmsNetId   ��           ams net id    nIDN           ��       ,    S: 0******* ********, P: 1******* ********    bExecute            ��           starts read with rising edge    nPort           ��           sercos axis ads port number    nMode           ��       H    read: 0= Value, 2= Name, 3= Attribute, 4= Unit, 5= Minimum, 6= Maximum    nAttrib           ��       +    parameter attribute if known, otherwise 0    cbLen           ��	           max lenght of data buffer 
   dwDestAddr           ��
           address of data buffer    tTimeout    �     ��       >    timeout for complete parameter access (e.g. incl. attribute)       cbRead           ��           	   nAttribRd           ��              sAttrib        
                ST_SercosParamAttrib   ��              bBusy            ��              bError            ��              nErrId           ��       u   	Function block specific error codes:
	16#1003 =  Wrong parameter mode
	16#1004 = Data parameter wrong value size
            n-�X  �   ����           IOF_SER_IDN_WRITE        
   WriteBlock                          ADSWRITE    ��           	   ReadBlock                          ADSREAD    ��              iState            ��              iRepeats            ��              cbRead            ��              cbWrite            ��           
   dwDestAddr            ��              nRetVal            ��           
   bExecute_I             ��              Timeout           (PT := T#100ms)       d        TON    ��              iVALUE           ��            Parameter Value    iATTRIB          ��!           Parameter Attribute       sNetId            
   T_AmsNetId   ��              nIDN           ��       :    S: binary 0******* ********, P: binary 1******* ********    bExecute            ��           starts write with rising edge    nPort           ��           sercos axis ads port number    nAttrib           ��           write: 0= Value    cbLen           ��           max lenght of data buffer 	   dwSrcAddr           ��	           address of data buffer    tTimeout    �     ��
       >    timeout for complete parameter access (e.g. incl. attribute)    	   nAttribRd           ��              sAttrib        
                ST_SercosParamAttrib   ��              bBusy            ��              bError            ��              nErrId           ��                       n-�X  �   ����           IOF_SER_RESETERR        	   ADSWRITE1                          ADSWRITE    ��           
   RisingEdge                 R_TRIG    ��              FallingEdge                 F_TRIG    ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              RESET            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��                       n-�X  �   ����           IOF_SER_SAVEFLASH        	   ADSWRITE1                          ADSWRITE    ��           
   RisingEdge                 R_TRIG    ��              FallingEdge                 F_TRIG    ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              SAVE            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��                       n-�X  �   ����           IOF_SER_SETPHASE        	   ADSWRITE1                          ADSWRITE    ��           
   RisingEdge                 R_TRIG    ��              FallingEdge                 F_TRIG    ��                 NETID            
   T_AmsNetId   ��              DEVICEID           ��              PHASE           ��              SET            ��              TMOUT    �     ��                 BUSY            ��
              ERR            ��              ERRID           ��                       n-�X  �   ����           SCIT_ACTIVATECONFIGURATION        	   ADSRDWRT1                            ADSRDWRT    ��           
   BusyFlanke                 F_TRIG    ��              StartFlanke                 R_TRIG    ��           
   ReadResult                  ReadResult_t    ��           	   WriteData                HLword_t    ��                 NETID            
   T_AmsNetId   ��              PORT           ��              WRTRD            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              RESULT           ��              ADDERRORINFO           ��                       n-�X  �   ����           SCIT_ALARMSTOP        	   ADSRDWRT1                            ADSRDWRT    ��           
   BusyFlanke                 F_TRIG    ��              StartFlanke                 R_TRIG    ��           
   ReadResult                  ReadResult_t    ��                 NETID            
   T_AmsNetId   ��              PORT           ��              WRTRD            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              RESULT           ��              ADDERRORINFO           ��                       n-�X  �   ����           SCIT_CONFDEVERRALL        	   ADSRDWRT1                            ADSRDWRT    ��           
   BusyFlanke                 F_TRIG    ��              StartFlanke                 R_TRIG    ��           
   ReadResult                  ReadResult_t    ��           	   WriteData            ��                 NETID            
   T_AmsNetId   ��              PORT           ��              WRTRD            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              RESULT           ��              ADDERRORINFO           ��                       n-�X  �   ����           SCIT_CONTROLACTIVECONFIGURATION        	   ADSRDWRT1                            ADSRDWRT    ��           
   BusyFlanke                 F_TRIG    ��              StartFlanke                 R_TRIG    ��           
   ReadResult                  ReadResult_t    ��           	   WriteData                    ControlActiveConfiguration_t    ��                 NETID            
   T_AmsNetId   ��              PORT           ��              WRTRD            ��              TMOUT    �     ��              SWITCH_CODE           ��           	   DEVICE_NO           ��                 BUSY            ��              ERR            ��              ERRID           ��              RESULT           ��              ADDERRORINFO           ��                       n-�X  �   ����           SCIT_DEACTIVATECONFIGURATION        	   ADSRDWRT1                            ADSRDWRT    ��           
   BusyFlanke                 F_TRIG    ��              StartFlanke                 R_TRIG    ��           
   ReadResult                  ReadResult_t    ��           	   WriteData                HLword_t    ��                 NETID            
   T_AmsNetId   ��              PORT           ��              WRTRD            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              RESULT           ��              ADDERRORINFO           ��                       n-�X  �   ����           SCIT_GETERRORINFO        	   ADSRDWRT1                            ADSRDWRT    ��           
   BusyFlanke                 F_TRIG    ��              StartFlanke                 R_TRIG    ��           	   WriteData                HLword_t    ��           
   ReadResult                      GetErrorInfo_t    ��                 NETID            
   T_AmsNetId   ��              PORT           ��              WRTRD            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              RESULT           ��           	   ERRORCODE           ��              ADDERRORINFO           ��                       n-�X  �   ����           SCIT_STARTDATATRANSFER        	   ADSRDWRT1                            ADSRDWRT    ��           
   BusyFlanke                 F_TRIG    ��              StartFlanke                 R_TRIG    ��           
   ReadResult                  ReadResult_t    ��                 NETID            
   T_AmsNetId   ��              PORT           ��              WRTRD            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              RESULT           ��              ADDERRORINFO           ��                       n-�X  �   ����           SCIT_STOPDATATRANSFER        	   ADSRDWRT1                            ADSRDWRT    ��           
   BusyFlanke                 F_TRIG    ��              StartFlanke                 R_TRIG    ��           
   ReadResult                  ReadResult_t    ��           	   WriteData            ��                 NETID            
   T_AmsNetId   ��              PORT           ��              WRTRD            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              RESULT           ��              ADDERRORINFO           ��                       n-�X  �   ����    t   C:\TwinCAT\PLC\LIB\TcUtilities.lib @                                                                                         ARG_TO_CSVFIELD           pSrc               ` ��           Pointer to the source buffer    pDest               ` ��       #    Pointer to the destination buffer    cbMax         ` ��           Max. number of input bytes    cbScan         ` ��           Input stream data byte number    cbReturn         ` ��           Number of result data bytes       in                 T_Arg   ��       T    Input data in PLC format (any data type, string, integer, floating point value...)    bQM            ��	       h    TRUE => Enclose result data in quotation marks, FALSE => Don't enclose result data in quotation marks.    pOutput           ��
       /    Address of output buffer (destination buffer)    cbOutput           ��       !    Max. byte size of output buffer       ARG_TO_CSVFIELD                                     �ѱV  �    ����        
   BCD_TO_DEC        
   RisingEdge                 R_TRIG ` ��                 START            ��              BIN           ��                 BUSY            ��              ERR            ��              ERRID           ��	              DOUT           ��
       �   
	Error codes:
		0x00		: No Errors
		0x0F	: Parameter value NOT correct. Wrong BCD input value in Low Nibble.
		0xF0	: Parameter value NOT correct. Wrong BCD input value in High Nibble.
            �ѱV  �    ����           BE128_TO_HOST               in                T_UHUGE_INTEGER   ��                 BE128_TO_HOST                T_UHUGE_INTEGER                             �ѱV  �    ����           BE16_TO_HOST               in           ��                 BE16_TO_HOST                                     �ѱV  �    ����           BE32_TO_HOST           parr    	                            ` ��                 in           ��                 BE32_TO_HOST                                     �ѱV  �    ����           BE64_TO_HOST               in                T_ULARGE_INTEGER   ��                 BE64_TO_HOST                T_ULARGE_INTEGER                             �ѱV  �    ����           BYTE_TO_BINSTR           bits   	                          ��       6    Array of ASCII characters (inclusive null delimiter)    iSig            ��           Number of significant bits    iPad            ��           Number of padding zeros    i            ��           	   Index7001                            in           ��           BYTE input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       BYTE_TO_BINSTR               T_MaxString                             �ѱV  �    ����           BYTE_TO_DECSTR           dec   	                          ��       6    Array of ASCII characters (inclusive null delimiter)    iSig            ��           Number of significant decades    iPad            ��           Number of padding zeros    i            ��              digit            ��           	   Index7001                            in           ��           BYTE input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       BYTE_TO_DECSTR               T_MaxString                             �ѱV  �    ����           BYTE_TO_HEXSTR           hex   	                          ��       6    array of ASCII characters (inclusive null delimiter)    iSig            ��           number of significant nibbles    iPad            ��           number of padding zeros    i            ��           	   Index7001                            in           ��           BYTE input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.    bLoCase            ��	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       BYTE_TO_HEXSTR               T_MaxString                             �ѱV  �    ����           BYTE_TO_LREALEX               in           ��                 BYTE_TO_LREALEX                                                  �ѱV  �    ����           BYTE_TO_OCTSTR           oct   	                          ��       6    Array of ASCII characters (inclusive null delimiter)    iSig            ��           Number of significant nibbles    iPad            ��           Number of padding zeros    i            ��           	   Index7001                            in           ��           BYTE input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       BYTE_TO_OCTSTR               T_MaxString                             �ѱV  �    ����           BYTEARR_TO_MAXSTRING               in   	  �                       ��                 BYTEARR_TO_MAXSTRING               T_MaxString                             �ѱV  �   ����           CSVFIELD_TO_ARG           pSrc               ` ��           Pointer to the source buffer    pDest               ` ��       $     Pointer to the destination buffer    cbMax         ` ��           Max. number of output bytes    cbScan         ` ��           Input stream data byte number    cbReturn         ` ��           Number of result data bytes    bQMPrior          ` ��       c    TRUE => Previous character was quotation mark. FALSE => Previous character was not quotation mark       pInput           ��       G    Address of input buffer with data in CSV field format (source buffer )   cbInput           ��	           Byte size of input data    bQM            ��
       \    TRUE => Remove enclosing quotation marks. FALSE => Don't remove enclosing quotation marks.    out                 T_Arg   ��       U    Output data in PLC format (any data type, string, integer, floating point value...)       CSVFIELD_TO_ARG                                     �ѱV  �    ����           CSVFIELD_TO_STRING           cbField         ` ��                 in               T_MaxString   ��       "    Input string in CSV field format    bQM            ��	       \    TRUE => Remove enclosing quotation marks. FALSE => Don't remove enclosing quotation marks.       CSVFIELD_TO_STRING               T_MaxString                             �ѱV  �    ����           DATA_TO_HEXSTR           iCase         ` ��              pCells    	  �                          ` ��              idx         ` ��                 pData           ��           Pointer to data buffer    cbData             U              ��           Byte size of data buffer    bLoCase            ��       9    Default: use "ABCDEF", if TRUE use "abcdef" characters.       DATA_TO_HEXSTR               T_MaxString                             �ѱV  �   ����        
   DCF77_TIME     "      DataBits   	  <                         ��              BitNo            ��              dtCurr            ��              dtNext            ��              tziCurr               E_TimeZoneID    ��       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID    ��       8    Time zone information extracted from previous telegram    tDiff            ��           Two telegram time difference    bCheck             ��              Step         ` ��!           	   StartEdge                 R_TRIG ` ��"              RisingPulse                 R_TRIG ` ��$              FallingPulse                 F_TRIG ` ��%           	   LongPulse                    TON ` ��&           
   ShortPulse                    TON ` ��'           
   DetectSync                    TOF ` ��(              NoDCFSignal                    TON ` ��)              DCFCycleLen                    TON ` ��*           	   bIsRising          ` ��,           
   bIsFalling          ` ��-              bIsLong          ` ��.              bIsShort          ` ��/              Working          ` ��0           	   DataValid          ` ��2           
   ParitySum1         ` ��3           
   ParitySum2         ` ��4           
   ParitySum3         ` ��5              i         ` ��7           	   DummyByte         ` ��8              DummyString    Q       Q  ` ��9              Hour         ` ��;              Minute         ` ��<              Year         ` ��=              Month         ` ��>              Day         ` ��?              	   DCF_PULSE            ��           DCF77 pulse: 101010101...    RUN            ��       *    Enable/disable function block execution.       BUSY            ��           TRUE = Decoding in progress    ERR            ��	       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           ��
           Error code    ERRCNT           ��           Error counter    READY            ��       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           ��           date and time information             �ѱV  �    ����           DCF77_TIME_EX     #      DataBits   	  <                         ��           Decoded data bits    BitNo            ��           Decoded bit number    dtCurr            ��       %    Time extracted from latest telegram    dtNext            ��            Supposed next time    tziCurr               E_TimeZoneID    ��!       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID    ��"       8    Time zone information extracted from previous telegram    tDiff            ��#       )    Time difference of two latest telegrams    bCheck             ��$       H    TRUE = Plausibility check over two telegrams enabled, FALSE = disabled    Step         ` ��&           	   StartEdge                 R_TRIG ` ��'              RisingPulse                 R_TRIG ` ��)              FallingPulse                 F_TRIG ` ��*           	   LongPulse                    TON ` ��+           
   ShortPulse                    TON ` ��,           
   DetectSync                    TOF ` ��-              NoDCFSignal                    TON ` ��.              DCFCycleLen                    TON ` ��/           	   bIsRising          ` ��1           
   bIsFalling          ` ��2              bIsLong          ` ��3              bIsShort          ` ��4              Working          ` ��5           	   DataValid          ` ��7           
   ParitySum1         ` ��8           
   ParitySum2         ` ��9           
   ParitySum3         ` ��:              i         ` ��<           	   DummyByte         ` ��=              DummyString    Q       Q  ` ��>              Hour         ` ��@              Minute         ` ��A              Year         ` ��B              Month         ` ��C              Day         ` ��D           	   DayOfWeek         ` ��E              	   DCF_PULSE            ��           DCF77 pulse: 101010101...    RUN            ��       *    Enable/disable function block execution.    TLP    �      ��           Short/long pulse split point       BUSY            ��	           TRUE = Decoding in progress    ERR            ��
       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           ��           Error code    ERRCNT           ��           Error counter    READY            ��       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           ��           date and time information    DOW                         ��       0     ISO 8601 day of week: 1 = Monday.. 7 = Sunday    TZI               E_TimeZoneID   ��           time zone information    ADVTZI            ��       1    MEZ->MESZ or MESZ->MEZ time change notification    LEAPSEC            ��           TRUE = Leap second    RAWDT   	  <                        ��           Raw decoded data bits             �ѱV  �    ����        
   DEC_TO_BCD        
   RisingEdge                 R_TRIG ` ��                 START            ��              DIN           ��                 BUSY            ��              ERR            ��              ERRID           ��	              BOUT           ��
       h   
	Error codes:
		0x00		: No errors
		0xFF	: Parameter value NOT correct. Wrong DECIMAL input value.
            �ѱV  �    ����        
   DEG_TO_RAD               ANGLE                        ��              
   DEG_TO_RAD                                                  �ѱV  �    ����           DINT_TO_DECSTR               in           ��           
   iPrecision           ��	                 DINT_TO_DECSTR               T_MaxString                             �ѱV  �    ����           DT_TO_FILETIME           ui64                T_ULARGE_INTEGER ` ��                 DTIN           ��                 DT_TO_FILETIME             
   T_FILETIME                             �ѱV  �    ����           DT_TO_SYSTEMTIME           sDT             ` ��              nDay         ` ��              b   	                 
    24(16#30)      0    ` ��              TS                   
   TIMESTRUCT ` ��           	   Index7001                            DTIN           ��                 DT_TO_SYSTEMTIME                   
   TIMESTRUCT                             �ѱV  �    ����           DWORD_TO_BINSTR           bits   	                        ` ��       6    array of ASCII characters (inclusive null delimiter)    iSig         ` ��           number of significant bits    iPad         ` ��           number of padding zeros    i         ` ��           	   Index7001                            in           ��           
   iPrecision           ��                 DWORD_TO_BINSTR               T_MaxString                             �ѱV  �    ����           DWORD_TO_DECSTR           dec   	                       ` ��       6    array of ASCII characters (inclusive null delimiter)    iSig         ` ��           number of significant nibbles    iPad         ` ��           number of padding zeros    i         ` ��              divider     ʚ; ` ��              number         ` ��           	   Index7001                            in           ��           
   iPrecision           ��                 DWORD_TO_DECSTR               T_MaxString                             �ѱV  �    ����           DWORD_TO_HEXSTR           hex   	                       ` ��       6    array of ASCII characters (inclusive null delimiter)    iSig         ` ��           number of significant nibbles    iPad         ` ��           number of padding zeros    i         ` ��           	   Index7001                            in           ��           
   iPrecision           ��              bLoCase            ��	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       DWORD_TO_HEXSTR               T_MaxString                             �ѱV  �    ����           DWORD_TO_LREALEX               in           ��                 DWORD_TO_LREALEX                                                  �ѱV  �    ����           DWORD_TO_OCTSTR           oct   	                       ` ��       6    array of ASCII characters (inclusive null delimiter)    iSig         ` ��           number of significant nibbles    iPad         ` ��           number of padding zeros    i         ` ��           	   Index7001                            in           ��           
   iPrecision           ��                 DWORD_TO_OCTSTR               T_MaxString                             �ѱV  �    ����           F_ARGCMP               typeSafe            ��              arg1                 T_Arg   ��              arg2                 T_Arg   ��                 F_ARGCMP                                     �ѱV  �    ����           F_ARGCPY               typeSafe            ��                 F_ARGCPY                               dest                  T_Arg  ��
              src                  T_Arg  ��                   �ѱV  �    ����           F_ARGISZERO               arg                 T_Arg   ��                 F_ARGIsZero                                      �ѱV  �    ����        	   F_BIGTYPE               pData           ��            Address pointer of data buffer    cbLen           ��           Byte length of data buffer    	   F_BIGTYPE                 T_Arg                             �ѱV  �    ����           F_BOOL                   F_BOOL                 T_Arg                       in            ��                   �ѱV  �    ����           F_BYTE                   F_BYTE                 T_Arg                       in           ��                   �ѱV  �    ����           F_BYTE_TO_CRC16_CCITT               value           ��           Data value    crc           ��       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_BYTE_TO_CRC16_CCITT                                     �ѱV  �    ����           F_CHECKSUM16        	   wChkSum_I         ` ��	       %    internal ChkSum                        dataWord         ` ��
       %    current data byte                      iIdx         ` ��       %    current data buffer index              ptrData               ` ��       %    pointer to current data byte           	   dwSrcAddr           ��       %    address of data buffer                 cbLen           ��       %    length of data buffer                  wChkSum           ��       %    init value (16#0000) or last ChkSum       F_CheckSum16                                     �ѱV  �    ����           F_CRC16_CCITT           wCRC_I         ` ��
       $    internal CRC                          dataWord         ` ��       $    current data byte                     iIdx         ` ��       $    current data buffer index             ptrData               ` ��       $    pointer to current data byte          	   dwSrcAddr           ��       $    address of data buffer                cbLen           ��       $    length of data buffer                 wLastCRC           ��       $    init value (16#FFFF) or last CRC16       F_CRC16_CCITT                                     �ѱV  �    ����           F_CREATEHASHTABLEHND           p                     T_HashTableEntry      ` ��              i         ` ��                 pEntries                     T_HashTableEntry        ��       C    Pointer to the first entry of hash table database (element array) 	   cbEntries           ��       ;    Byte size (length) of hash table database (element array)       F_CreateHashTableHnd                                hTable         	               T_HHASHTABLE  ��           Hash table handle         �ѱV  �    ����           F_CREATELINKEDLISTHND           p                   T_LinkedListEntry      ` ��           Temp. previous node    n                   T_LinkedListEntry      ` ��           Temp. next node    i         ` ��           loop iterator       pEntries                   T_LinkedListEntry        ��       @    Pointer to the first linked list node database (element array) 	   cbEntries           ��       <    Byte size (length) of linked list database (element array)       F_CreateLinkedListHnd                                hList         	               T_HLINKEDLIST  ��           Linked list handle         �ѱV  �    ����           F_DATA_TO_CRC16_CCITT           i         ` ��                 pData           ��           Pointer to data    cbData           ��           Length of data    crc           ��       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_DATA_TO_CRC16_CCITT                                     �ѱV  �    ����           F_DINT                   F_DINT                 T_Arg                       in           ��                   �ѱV  �    ����           F_DWORD                   F_DWORD                 T_Arg                       in           ��                   �ѱV  �    ����           F_FORMATARGTOSTR     	      pOut               ` ��              longword         ` ��              double                      ` ��              single          ` ��              short         ` ��              small         ` ��              longint         ` ��              iPaddingLen         ` ��              iCurrLen         ` ��           
      bSign            ��           Sign prefix flag    bBlank            ��           Blank prefix flag    bNull            ��           Null prefix flag    bHash            ��           Hash prefix flag    bLAlign            ��       4    FALSE => Right align (default), TRUE => Left align    bWidth            ��       C    FALSE => no width padding, TRUE => blank or zeros padding enabled    iWidth           ��	           Width length parameter 
   iPrecision           ��
           Precision length parameter    eFmtType               E_TypeFieldParam   ��           Format type field parameter    arg                 T_Arg   ��           Format argument       F_FormatArgToStr                               sOut                T_MaxString  ��                   �ѱV  �    ����           F_GETDAYOFMONTHEX           dom         ` ��           Day of month    dow         ` ��           Day of week    n         ` ��              dwYears         ` ��              dwDays         ` ��                 wYear     A  A  kx             ��           Year: 1601..30827    wMonth                         ��           Month: 1..12    wWOM                         ��       �     Week of month. Occurrence of the day of the week within the month (1..5, where 5 indicates the final occurrence during the month if that day of the week does not occur 5 times).   wDOW                           ��       4    Day of week (0 = Sunday, 1 = Monday.. 6 = Saturday       F_GetDayOfMonthEx                                     �ѱV  �    ����           F_GETDAYOFWEEK           sysTime                   
   TIMESTRUCT ` ��	                 in           ��                 F_GetDayOfWeek                                     �ѱV  �    ����           F_GETDOYOFYEARMONTHDAY           bLY          ` ��
                 wYear           ��           Year: 0..2xxx    wMonth           ��           Month 1..12    wDay           ��           Day: 1..31       F_GetDOYOfYearMonthDay                                     �ѱV  �    ����           F_GETFLOATREC     
   	   ptrDouble    	                               ��              fValue                         ��
              fBegin                         ��              nBegin            ��              fDiv                         ��              nDig            ��              nDigit            ��              fMaxPrecision                         ��              i            ��              nLastDecDigit            ��                 fVal                        ��           
   iPrecision           ��              bRound            ��                 F_GetFloatRec              
   T_FloatRec                             �ѱV  �    ����           F_GETMAXMONTHDAYS               wYear           ��	              wMonth           ��
                 F_GetMaxMonthDays                                     �ѱV  �    ����           F_GETMONTHOFDOY           bLY          ` ��	              wMonth         ` ��
                 wYear           ��           Year: 0..2xxx    wDOY           ��           Year's day number: 1..366       F_GetMonthOfDOY                                     �ѱV  �    ����           F_GETVERSIONTCUTILITIES               nVersionElement           ��       d   
	Possible nVersionElement parameter:
	1	:	major number
	2	:	minor number
	3	:	revision number
      F_GetVersionTcUtilities                                     �ѱV  �    ����           F_GETWEEKOFTHEYEAR           date_sec         ` ��           date seconds    dow         ` ��	           day of week    year         ` ��
              KWStart         ` ��              first    ��yG ` ��              ff                      ` ��                 in           ��                 F_GetWeekOfTheYear                                     �ѱV  �    ����           F_HUGE                   F_HUGE                 T_Arg                       in                 T_HUGE_INTEGER  ��                   �ѱV  �    ����           F_INT                   F_INT                 T_Arg                       in           ��                   �ѱV  �    ����           F_LARGE                   F_LARGE                 T_Arg                       in                 T_LARGE_INTEGER  ��                   �ѱV  �    ����           F_LREAL                   F_LREAL                 T_Arg                       in                        ��                   �ѱV  �    ����           F_LTRIM           pChar               ` ��              pStr                T_MaxString      ` ��	                 in               T_MaxString   ��                 F_LTrim               T_MaxString                             �ѱV  �    ����           F_PVOID                   F_PVOID                 T_Arg                       in                PVOID  ��                   �ѱV  �    ����           F_REAL                   F_REAL                 T_Arg                       in            ��                   �ѱV  �    ����           F_RTRIM           n         ` ��              pChar               ` ��	                 in               T_MaxString   ��                 F_RTrim               T_MaxString                             �ѱV  �    ����           F_SINT                   F_SINT                 T_Arg                       in           ��                   �ѱV  �    ����           F_STRING                   F_STRING                 T_Arg                       in                T_MaxString  ��                   �ѱV  �    ����        
   F_SWAPREAL           pReal    	                               ��              pResult    	                               ��                 fVal            ��              
   F_SwapReal                                      �ѱV  �    ����           F_SWAPREALEX           pIN    	                            ` ��              wSave         ` ��	                     F_SwapRealEx                                fVal            ��                   �ѱV  �    ����        	   F_TOLCASE           pDest               ` ��              idx                 MIN_SBCS_TABLE   MAX_SBCS_TABLE ` ��	                 in               T_MaxString   ��              	   F_ToLCase               T_MaxString                             �ѱV  �   ����        	   F_TOUCASE           pDest               ` ��              idx                 MIN_SBCS_TABLE   MAX_SBCS_TABLE ` ��	                 in               T_MaxString   ��              	   F_ToUCase               T_MaxString                             �ѱV  �   ����           F_TRANSLATEFILETIMEBIAS           ui64In                T_ULARGE_INTEGER ` ��       E    Input file time as 64 bit unsigned integer (number of 100ns ticks)     ui64Bias                T_ULARGE_INTEGER ` ��       ?    Bias value as 64 bit unsigned integer (number of 100ns ticks)    ui64Out                T_ULARGE_INTEGER ` ��       @    Local time as 64 bit unsigned integer (number of 100ns ticks)        in             
   T_FILETIME   ��       1    Input time in file time format to be translated    bias           ��       y    Bias value in minutes. The bias is the difference, in minutes, between Coordinated Universal Time (UTC) and local time.    toUTC            ��       U    TRUE => Translate from local time to UTC, FALSE => Translate from UTC to local Time       F_TranslateFileTimeBias             
   T_FILETIME                             �ѱV  �    ����           F_UDINT                   F_UDINT                 T_Arg                       in           ��                   �ѱV  �    ����           F_UHUGE                   F_UHUGE                 T_Arg                       in                 T_UHUGE_INTEGER  ��                   �ѱV  �    ����           F_UINT                   F_UINT                 T_Arg                       in           ��                   �ѱV  �    ����           F_ULARGE                   F_ULARGE                 T_Arg                       in                 T_ULARGE_INTEGER  ��                   �ѱV  �    ����           F_USINT                   F_USINT                 T_Arg                       in           ��                   �ѱV  �    ����           F_WORD                   F_WORD                 T_Arg                       in           ��                   �ѱV  �    ����           F_YEARISLEAPYEAR               wYear           ��                 F_YearIsLeapYear                                      �ѱV  �    ����           FB_ADDROUTEENTRY        
   fbAdsWrite       P    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_ADDREMOTE, IDXOFFS := 0 )              	   T_AmsPort         !                 ADSWRITE ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��           	   dataEntry                ST_AmsRouteSystemEntry ` ��                 sNetID            
   T_AmsNetID   ��       &    TwinCAT network address (ams net id)    stRoute                    ST_AmsRouteEntry   ��       !    Structure with route parameters    bExecute            ��       -    Rising edge starts function block execution    tTimeout    �     ��           Max fb execution time       bBusy            ��
              bError            ��              nErrID           ��                       �ѱV  �   ����           FB_AMSLOGGER        
   fbAdsWrite       [    ( PORT:= AMSPORT_AMSLOGGER, IDXGRP:= AMSLOGGER_IGR_GENERAL, IDXOFFS:= AMSLOGGER_IOF_MODE )              	   T_AmsPort                          ADSWRITE ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              stReq                ST_AmsLoggerReq ` ��                 sNetId           ''    
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    eMode           AMSLOGGER_RUN       E_AmsLoggerMode   ��              sCfgFilePath           ''       T_MaxString   ��              bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��
              bError            ��              nErrId           ��                       �ѱV  �   ����           FB_BASICPID           nERR_NOERROR           ��           no error						   nERR_INVALIDPARAM          ��           invalid parameter				   nERR_INVALIDCYCLETIME          ��           invalid cycle time				   fE               0.0            ��            error input					   fE_1               0.0            ��!           error input z^(-1)				   fY               0.0            ��"           control output				   fY_1               0.0            ��#           control output  z^(-1)			   fYP               0.0            ��$           P-part						   fYI               0.0            ��%           I-part						   fYI_1               0.0            ��&           I-part  z^(-1)					   fYD               0.0            ��'           D-T1-part					   fYD_1               0.0            ��(           D-T1-part  z^(-1)				   bInit            ��*       %    initialization flag for first cycle	   bIsIPart             ��+           I-part active ?				   bIsDPart             ��,           D-part active ?				   fDi               0.0            ��.           internal I param				   fDd               0.0            ��/           internal D param				   fCd               0.0            ��0           internal D param				   fCtrlCycleTimeOld               0.0            ��2              fKpOld               0.0            ��3              fTnOld               0.0            ��4              fTvOld               0.0            ��5              fTdOld               0.0            ��6                 fSetpointValue                        ��           setpoint value							   fActualValue                        ��           actual value							   bReset            ��           controller values    fCtrlCycleTime                        ��	       (    controller cycle time in seconds [s]			   fKp                        ��           proportional gain Kp	(P)					   fTn                        ��           integral gain Tn (I) [s]						   fTv                        ��       "    derivative gain Tv (D-T1) [s]				   fTd                        ��       (    derivative damping time Td (D-T1) [s]		      fCtrlOutput                        ��           controller output command				   nErrorStatus           ��       1    controller error output (0: no error; >0:error)	            �ѱV  �    ����           FB_BUFFEREDTEXTFILEWRITER           fbFile                               FB_TextFileRingBuffer ` ��           
   closeTimer                    TON ` ��           auto close timer    bRemove          ` ��              nStep         ` ��                 sNetId           ''    
   T_AmsNetId ` ��           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString ` ��	       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath ` ��
           default: Open generic file    bAppend         ` ��       )    TRUE = append lines, FALSE = not append 
   tAutoClose    �   ` ��              tTimeout    �   ` ��                 bBusy          ` ��              bError          ` ��              nErrID         ` ��                 fbBuffer                 FB_StringRingBuffer` ��           string ring buffer         �ѱV  �   ����           FB_CONNECTSCOPESERVER           stRecordDesc       d    (nRunMode:=0, nSopMode:=0, bStoreOnDisk:=FALSE, bUseLocalServer:=FALSE, bStartServerFromFile:=TRUE)                                #   ST_ScopeServerRecordModeDescription    ��              nState            ��              nErrorState            ��           
   fbAdsWrite                          ADSWRITE    ��              fbQueryRegistry                                 FB_RegQueryValue    ��              sScopeServerDir                ��              sScopeServerPath                ��              fbStartServer                              NT_StartProcess    ��              fbWait                    TON    ��               bTriggerServerStart            ��!              nDwellTimeCounter            ��"              nPort           27110    	   T_AmsPort   ��%              Connect_IdxGrp     u     ��&          0x7500      sNetId           ''    
   T_AmsNetId   ��              bExecute            ��              sConfigFile    Q       Q    ��              tTimeout    �     ��                 bBusy            ��              bDone            ��              bError            ��              nErrorId           ��                       �ѱV  �   ����           FB_CSVMEMBUFFERREADER           state         ` ��              getBufferIndex         ` ��              scanPtr               ` ��              scanSize         ` ��              bField          ` ��              cbCopied         ` ��           
   bFirstChar          ` ��              bDQField          ` ��           	   bDQBefore          ` ��              pField         ` ��       U    If successfull then this variable returns the address of the first/next field value    cbField         ` ��       W    If successfull then this variable returns the byte size of the first/next field value    bEOF          ` ��           TRUE => End of field found    bBreak          ` ��                 eCmd           eEnumCmd_First       E_EnumCmdType   ��       )    Command type: read first or next field ?   pBuffer           ��       #    Address ( pointer) of data buffer    cbBuffer           ��           Max. byte size of data buffer       bOk            ��	       &    TRUE => Successfull, FALSE => Failed    getValue           ''       T_MaxString   ��
       N    If successfull then this output returns the first/next field value as string    pValue           ��       s    Pointer to the first value byte (HINT: String values are not null terminated. Empty string returns Null pointer )    cbValue           ��           Field value byte size    bCRLF            ��       .    TRUE => End of record separator found (CRLF)    cbRead           ��       )    Number of successfully parse data bytes             �ѱV  �    ����           FB_CSVMEMBUFFERWRITER           fbReader                                    FB_CSVMemBufferReader ` ��              temp   	  ,                    ` ��           Temp buffer    cbTemp         ` ��       %    Number of data bytes in temp buffer    cbCopied         ` ��       9    Number of data bytes copied to the external data buffer    bNewLine         ` ��           TRUE => start with new line       eCmd           eEnumCmd_First       E_EnumCmdType   ��       *    Command type: write first or next field ?   putValue           ''       T_MaxString   ��       &    New first/next field value as string    pValue           ��       C    OPTIONAL: Pointer to external buffer containing field value data.    cbValue           ��       F    OPTIONAL: Byte size of external buffer containing field value data.     bCRLF            ��       0    TRUE = > Append end of record separator (CRLF)    pBuffer           ��	       #    Address ( pointer) of data buffer    cbBuffer           ��
           Max. byte size of data buffer       bOk            ��       &    TRUE => Successfull, FALSE => Failed    cbSize           ��           Number fo used data bytes    cbFree           ��           Number of free data bytes    nFields           ��           Number of fields    nRecords           ��           Number of records    cbWrite           ��       +    Number of successfully written data bytes             �ѱV  �    ����           FB_DBGOUTPUTCTRL           fbFormat                                     FB_FormatString ` ��              fbBuffer        	               FB_StringRingBuffer ` ��              fbFile       +    (ePath := PATH_BOOTPATH, bAppend := TRUE )                 PATH_GENERIC    
   E_OpenPath                      FB_BufferedTextFileWriter ` ��              buffer   	  '                   ` ��              state         ` ��              nItems         ` ��              k         ` ��               bInit         ` ��!           Hex logging    i         ` ��$              cells   	                               ` ��%              pCells                T_MaxString      ` ��&              cbL1         ` ��'              cbL2         ` ��'              idx         ` ��'              pSrc1               ` ��(              pSrc2               ` ��(                 dwCtrl         ` ��       &    Debug message target: DBG_OUTPUT_LOG    sFormat           ''       T_MaxString ` ��           Debug message format string    arg1                 T_Arg ` ��           Format string argument    arg2                 T_Arg ` ��              arg3                 T_Arg ` ��	              arg4                 T_Arg ` ��
              arg5                 T_Arg ` ��              arg6                 T_Arg ` ��              arg7                 T_Arg ` ��              arg8                 T_Arg ` ��              arg9                 T_Arg ` ��              arg10                 T_Arg ` ��              sFilter           ''       T_MaxString ` ��                 bError          ` ��              nError         ` ��           	   nOverflow         ` ��                       �ѱV  �   ����           FB_DISCONNECTSCOPESERVER        
   fbAdsWrite                          ADSWRITE    ��              nState            ��                 sNetId            
   T_AmsNetId   ��              bExecute            ��              tTimeout    �     ��                 bBusy            ��              bDone            ��	              bError            ��
              nErrorId           ��                       �ѱV  �   ����           FB_ENUMFINDFILEENTRY        
   fbAdsRdWrt       B    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_FFILEFIND )              	   T_AmsPort         �                ADSRDWRT ` ��           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_CLOSEHANDLE )              	   T_AmsPort         o              ADSWRITE ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��           	   dataEntry                            ST_AmsFindFileSystemEntry ` ��              eFindCmd               E_EnumCmdType ` ��                 sNetId            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id) 	   sPathName               T_MaxString   ��       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType   ��           Enumerator navigation command    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��              bError            ��              nErrID           ��              bEOE            ��           End of enumeration 
   stFindFile                     ST_FindFileEntry   ��           Find file entry             �ѱV  �   ����           FB_ENUMFINDFILELIST           fbEnum                              FB_EnumFindFileEntry ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              cbEntry         ` ��              nEntries         ` ��              pEntry                      ST_FindFileEntry      ` ��                 sNetId            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id) 	   sPathName               T_MaxString   ��       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType   ��           Enumerator navigation command 	   pFindList           ��       &    POINTER TO ARRAY OF ST_FindFileEntry 
   cbFindList           ��       (    Byte size of ARRAY OF ST_FindFileEntry    bExecute            ��	       6    Rising edge on this input activates the fb execution    tTimeout    �     ��
           Max fb execution time       bBusy            ��              bError            ��              nErrID           ��              bEOE            ��           End of enumeration 
   nFindFiles           ��           Number of find files             �ѱV  �   ����           FB_ENUMROUTEENTRY        	   fbAdsRead       Z    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_ENUMREMOTE (*, IDXGRP := index *) )              	   T_AmsPort         #             ADSREAD ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              index    ���� ` ��           	   dataEntry                ST_AmsRouteSystemEntry ` ��                 sNetID            
   T_AmsNetID   ��       '    TwinCAT network address (ams net id )    eCmd           eEnumCmd_First       E_EnumCmdType   ��           Enumerator navigation command    bExecute            ��       -    Rising edge starts function block execution    tTimeout    �     ��           Max fb execution time       bBusy            ��
              bError            ��              nErrID           ��              bEOE            ��       l    End of enumeration. This value is TRUE after the first read that attempts to read next non existing entry.    stRoute                    ST_AmsRouteEntry   ��       !    Structure with route parameters             �ѱV  �   ����           FB_ENUMSTRINGNUMBERS           pSrc               ` ��              pDest               ` ��              pNext               ` ��              char         ` ��              state         ` ��              bEat          ` ��                 sSearch               T_MaxString   ��           Source string    eCmd           eEnumCmd_First       E_EnumCmdType   ��           Enumerator navigation command    eType           eNumGroup_Float       E_NumGroupTypes   ��           String number format type       sNumber               T_MaxString   ��           Found string number    nPos           ��	       )    <> 0 => Next scan/search start position    bEOS            ��
           TRUE = End of string             �ѱV  �    ����           FB_FILERINGBUFFER           fbOpen                             FB_FileOpen ` ��              fbClose                      FB_FileClose ` ��              fbWrite                           FB_FileWrite ` ��              fbRead                            FB_FileRead ` ��               fbSeek                         FB_FileSeek ` ��!              nStep         ` ��"       X    0=idle, 1=init, 10,11=open, 20,21=seek, 30,31=read, 40,41=write, 50,51=close, 100=exit    bInit          ` ��#       5    TRUE=reading length chunk, FALSE=reading data chunk    bExit          ` ��$       O    FALSE=repeat reading/writing, TRUE=abort reading/writing, go to the exit step    bReopen          ` ��%       t    Open mode: TRUE=try to open existing file, FALSE=create new file, if open fails => try to create and open new file    bOpen          ` ��&       %    TRUE=file opened, FALSE=file closed    bGet          ` ��'       $    TRUE=get entry, FALSE=remove entry    bOW          ` ��(       b    TRUE=removing oldest entry (bOverwrite=TRUE), FALSE=don't remove oldest entry (bOverwrite=FALSE)    cbOW         ` ��)       /    Temp length of ovwerwritten length/data chunk    cbMoved         ` ��*       =    Number of successfully read/written length/data chunk bytes    ptrSaved         ` ��+       M    Seek pointer previous position (used by A_GetHead or read buffer underflow)    ptrMax         ` ��,       D    Seek pointer max. position = SIZEOF(ring buffer header) + cbBuffer    eCmd           eFileRBuffer_None       E_FileRBufferCmd ` ��-              eOldCmd           eFileRBuffer_None       E_FileRBufferCmd ` ��.                 sNetId           ''    
   T_AmsNetId   ��           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString   ��       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath   ��           default: Open generic file    nID           ��           user defined version ID    cbBuffer          ��           max. file buffer byte size 
   bOverwrite            ��	       :    FALSE = don't overwrite, TRUE = overwrite oldest entries 
   pWriteBuff           ��
       "    pointer to external write buffer 
   cbWriteLen           ��       $    byte size of external write buffer 	   pReadBuff           ��       !    pointer to external read buffer 	   cbReadLen           ��       #    byte size of external read buffer    tTimeout    �     ��                 bBusy            ��              bError            ��              nErrID           ��       �    ADS or function specific error codes:
	16#8000	= (File) buffer empty or overflow 
	16#8001 = (Application) buffer underflow (cbReadLen to small),  	
	16#8002	= Buffer is not opened  
	16#8003	= Invalid input parameter value    cbReturn           ��       !    number of recend read data bytes   stHeader                          ST_FileRBufferHead   ��           buffer status             �ѱV  �   ����            FB_FILETIMETOTZSPECIFICLOCALTIME           fbBase       !    ( wStdYear := 0, wDldYear := 0 )                                   "   FB_TranslateUtcToLocalTimeByZoneID ` ��           Underlaid base function block       in             
   T_FILETIME   ��       �    Time to be converted (UTC, file time format), 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601   tzInfo                     ST_TimeZoneInformation   ��           Time zone settings       out             
   T_FILETIME   ��       *    Converted time in local file time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   ��	       "    Daylight saving time information    bB            ��
            FALSE => A time, TRUE => B time            �ѱV  �    ����           FB_FORMATSTRING     	      pFormat               ` ��           pointer to the format string    pOut               ` ��           pointer to the result string 
   iRemOutLen         ` ��       $    Max remaining length of sOut buffer   bValid          ` ��       8    if set, the string character is valid format parameter    stFmt                              ST_FormatParameters ` ��           
   nArrayElem         ` ��           	   nArgument         ` ��              parArgs   	  
                     T_Arg              ` ��              sArgStr               T_MaxString ` ��                 sFormat               T_MaxString   ��              arg1                 T_Arg   ��              arg2                 T_Arg   ��              arg3                 T_Arg   ��              arg4                 T_Arg   ��              arg5                 T_Arg   ��              arg6                 T_Arg   ��	              arg7                 T_Arg   ��
              arg8                 T_Arg   ��              arg9                 T_Arg   ��              arg10                 T_Arg   ��                 bError            ��              nErrId           ��              sOut               T_MaxString   ��                       �ѱV  �   ����           FB_GETADAPTERSINFO     
   	   fbAdsRead       f    ( PORT:=AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_IPHELPERAPI, IDXOFFS:= IPHELPERAPI_ADAPTERSINFO )              	   T_AmsPort         �                ADSREAD ` ��           
   fbRegQuery       P    ( sSubKey:= '\Software\Beckhoff\TwinCAT\Remote', sValName := 'DefaultAdapter' )                        T_MaxString                    T_MaxString                   FB_RegQueryValue ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              cbInfo         ` ��              idx         ` ��              info   	                                      ST_IP_ADAPTER_INFO         ` ��           buffer for 12 entries    pInfo                                 ST_IP_ADAPTER_INFO      ` ��           
   nRealCount         ` ��           	   sDefaultA               T_MaxString ` ��                 sNetID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��	              bError            ��
              nErrID           ��              arrAdapters   	                                    ST_IpAdapterInfo           ��              nCount           ��           Max. number of found adapters    nGet           ��       %    Number of read adapter info entries             �ѱV  �   ����           FB_GETDEVICEIDENTIFICATION        	   iDataSize       @` ��           
   byTagStart    <    ` ��           '<'    byTagEnd    >    ` ��           '>' 
   byTagSlash    /    ` ��           '/' 	   fbAdsRead                          ADSREAD ` ��              bExecutePrev          ` ��              iState         ` ��              iData   	                      ` ��           
   strActPath             ` ��              iLoopEndIdx         ` ��              iStructSize         ` ��              strHardwareCPU             ` ��              strTags   	  	        )       )          ` ��           	   iTagsSize   	  	                     ` ��              iCurrTag   	  (                     ` ��               iCurrTagData   	  P                     ` ��!           	   iPathSize         ` ��"              iTagIdx         ` ��$              iCurrTagIdx         ` ��%              iDataIdx         ` ��&              iCurrTagDataIdx         ` ��'              k         ` ��(              iMinCurrData         ` ��)           	   iFirstIdx         ` ��*              iLastIdx         ` ��+           	   bTagStart          ` ��-              bTagEnd          ` ��.           	   bTagSlash          ` ��/              bTagOpen          ` ��0                 bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��              sNetId            
   T_AmsNetId   ��           ams net id of target system       bBusy            ��              bError            ��	              nErrorID           ��
           
   stDevIdent                              ST_DeviceIdentification   ��       5    structure with available device identification data             �ѱV  �   ����           FB_GETDEVICEIDENTIFICATIONEX        	   iDataSize       @` ��           
   byTagStart    <    ` ��           '<'    byTagEnd    >    ` ��           '>' 
   byTagSlash    /    ` ��           '/' 	   fbAdsRead                          ADSREAD ` ��              bExecutePrev          ` ��              iState         ` ��              iData   	                      ` ��           
   strActPath             ` ��              iLoopEndIdx         ` ��              iStructSize         ` ��              strHardwareCPU             ` ��              strTags   	  	        )       )          ` ��           	   iTagsSize   	  	                     ` ��              iCurrTag   	  (                     ` ��               iCurrTagData   	  P                     ` ��!           	   iPathSize         ` ��"              iTagIdx         ` ��$              iCurrTagIdx         ` ��%              iDataIdx         ` ��&              iCurrTagDataIdx         ` ��'              k         ` ��(              iMinCurrData         ` ��)           	   iFirstIdx         ` ��*              iLastIdx         ` ��+           	   bTagStart          ` ��-              bTagEnd          ` ��.           	   bTagSlash          ` ��/              bTagOpen          ` ��0                 bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��              sNetId            
   T_AmsNetId   ��           Ams net id of target system       bBusy            ��              bError            ��	              nErrorID           ��
           
   stDevIdent                              ST_DeviceIdentificationEx   ��       5    structure with available device identification data             �ѱV  �   ����           FB_GETHOSTADDRBYNAME           fbAdsRW       j    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP:= SYSTEMSERVICE_IPHELPERAPI, IDXOFFS:= IPHELPERAPI_IPADDRBYHOSTNAME )              	   T_AmsPort         �                
   ADSRDWRTEX ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��                 sNetID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id) 	   sHostName           ''       T_MaxString   ��       1    String containing host name. E.g. 'DataServer1'    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    ȯ     ��           Max fb execution time       bBusy            ��
              bError            ��              nErrID           ��              sAddr           ''    
   T_IPv4Addr   ��       S    String containing an (Ipv4) Internet Protocol dotted address. E.g. '172.16.7.199'    arrAddr           0, 0, 0, 0       T_IPv4AddrArr   ��       C    Byte array containing an (Ipv4) Internet Protocol dotted address.             �ѱV  �   ����           FB_GETHOSTNAME        	   fbAdsRead       R    ( PORT :=  AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_IPHOSTNAME, IDXOFFS := 0 )              	   T_AmsPort         �                 ADSREAD ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��                 sNetID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��	              bError            ��
              nErrID           ��           	   sHostName               T_MaxString   ��           The local host name             �ѱV  �   ����           FB_GETLOCALAMSNETID           fbRegQueryValue       W    ( sNetId:= '', sSubKey := 'SOFTWARE\Beckhoff\TwinCAT\System', sValName := 'AmsNetId' )                    
   T_AmsNetId                    T_MaxString                    T_MaxString                   FB_RegQueryValue ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              tmpBytes               T_AmsNetIdArr ` ��                 bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeOut    �     ��           Max fb execution time       bBusy            ��              bError            ��	              nErrId           ��
           
   AddrString           '0.0.0.0.0.0'    
   T_AmsNetId   ��       -    TwinCAT -specific network address as string 	   AddrBytes           0,0,0,0,0,0       T_AmsNetIdArr   ��       3    TwinCAT-specific network address as array of byte             �ѱV  �   ����           FB_GETROUTERSTATUSINFO        	   fbAdsRead       &    ( PORT:= 1, IDXGRP:= 1, IDXOFFS:= 1 )              	   T_AmsPort                          ADSREAD ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              adsRes   	                       ` ��                 sNetId           ''    
   T_AmsNetID   ��           Ams net id    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��	              bError            ��
              nErrID           ��              info                   ST_TcRouterStatusInfo   ��       #    TwinCAT Router status information             �ѱV  �   ����           FB_GETTIMEZONEINFORMATION        	   fbAdsRead       p    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS := TIMESERVICE_TIMEZONINFORMATION )              	   T_AmsPort         �                ADSREAD ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              res                ST_AmsGetTimeZoneInformation ` ��                 sNetID            
   T_AmsNetID   ��       &    TwinCAT network address (ams net id)    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��              bError            ��	              nErrID           ��
              tzID               E_TimeZoneID   ��              tzInfo                     ST_TimeZoneInformation   ��                       �ѱV  �   ����           FB_HASHTABLECTRL           p                     T_HashTableEntry      ` ��              n                     T_HashTableEntry      ` ��              nHash         ` ��                 key           ��       d    Entry key: used by A_Lookup, A_Remove method, the key.lookup variable is also used by A_Add method    putValue           ��           Entry value 	   putPosPtr                     T_HashTableEntry        ��	                 bOk            ��           TRUE = success, FALSE = error    getValue           ��           	   getPosPtr                     T_HashTableEntry        ��       R    returned by A_GetFirstEntry, A_GetNextEntry, A_Add, A_Lookup and A_Remove method       hTable         	               T_HHASHTABLE  ��           Hash table handle variable         �ѱV  �    ����           FB_LINKEDLISTCTRL           p                   T_LinkedListEntry      ` ��           Temp. previous node    n                   T_LinkedListEntry      ` ��           Temp. next node       putValue           ��           Linked list node value 	   putPosPtr                   T_LinkedListEntry        ��           Linked list node pointer       bOk            ��           TRUE = success, FALSE = error    getValue           ��           Linked list node value 	   getPosPtr                   T_LinkedListEntry        ��           Linked list node pointer       hList         	               T_HLINKEDLIST  ��           Linked list table handle         �ѱV  �    ����           FB_LOCALSYSTEMTIME     	      rtrig                 R_TRIG ` ��              state         ` ��              fbNT                   
   NT_GetTime ` ��              fbTZ                          FB_GetTimeZoneInformation ` ��              fbSET                           NT_SetTimeToRTCTime ` ��              fbRTC                             RTC_EX2 ` ��              timer                    TON ` ��              nSync         ` ��              bNotSup          ` ��                 sNetID           ''    
   T_AmsNetID   ��       +    The target TwinCAT system network address    bEnable            ��       `    Enable/start cyclic time synchronisation (output is synchronized to Local Windows System Time)    dwCycle           �Q            ��       &    Time synchronisation cycle (seconds)    dwOpt          ��       R    Additional option flags: If bit 0 is set => Synchronize Windows Time to RTC time    tTimeout    �     ��       J    Max. ADS function block execution time (internal communication timeout).       bValid            ��       \    TRUE => The systemTime and tzID output is valid, FALSE => systemTime and tzID is not valid 
   systemTime                   
   TIMESTRUCT   ��       "    Local Windows System Time struct    tzID           eTimeZoneID_Invalid       E_TimeZoneID   ��       )    Daylight/standard time zone information             �ѱV  �   ����           FB_MEMBUFFERMERGE           pDest         ` ��              cbDest         ` ��                 eCmd           eEnumCmd_First       E_EnumCmdType   ��              pBuffer           ��           Pointer to destination buffer    cbBuffer           ��       &    Max. byte size of destination buffer    pSegment           ��       .    Pointer to data segment (optional, may be 0) 	   cbSegment           ��       -    Number of data segments (optional, may be 0)      bOk            ��       M    TRUE => Successfull, FALSE => End of enumeration or invalid input parameter    cbSize           ��           Data buffer fill state             �ѱV  �    ����           FB_MEMBUFFERSPLIT           pSrc         ` ��              cbSrc         ` ��                 eCmd           eEnumCmd_First       E_EnumCmdType   ��              pBuffer           ��           Pointer to source data buffer    cbBuffer           ��       !    Byte size of source data buffer    cbSize           ��           Max. segment byte size       bOk            ��
       N    TRUE => Successfull, FALSE => End of segmentation or invalid input parameter    pSegment           ��           Pointer to data segment 	   cbSegment           ��           Byte size of data segment    bEOS            ��       7    TRUE = End/last segment, FALSE = Next segment follows             �ѱV  �    ����           FB_MEMRINGBUFFER           idxLast         ` ��            byte index of last buffer byte    idxFirst         ` ��       "    byte buffer of first buffer byte    idxGet         ` ��              pTmp         ` ��              cbTmp         ` ��              cbCopied         ` ��                 pWrite           ��           pointer to write data    cbWrite           ��           byte size of write data    pRead           ��	           pointer to read data buffer    cbRead           ��
           byte size of read data buffer    pBuffer           ��       #    pointer to ring buffer data bytes    cbBuffer           ��           max. ring buffer byte size       bOk            ��       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    nCount           ��           number of fifo entries    cbSize           ��       "    current byte length of fifo data    cbReturn           ��       �    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             �ѱV  �    ����           FB_MEMRINGBUFFEREX           idxLast         ` ��       *    byte index of last (newest) buffer entry    idxFirst         ` ��       +    byte index of first (oldest) buffer entry    idxGet         ` ��           temporary index    idxEnd         ` ��       "    index of unused/free end segment    cbEnd         ` ��       &    byte size of unused/free end segment    cbAdd         ` ��!                 pWrite           ��           pointer to write data    cbWrite           ��           byte size of write data    pBuffer           ��       #    pointer to ring buffer data bytes    cbBuffer           ��           max. ring buffer byte size       bOk            ��       W    TRUE = new entry added or get, freed succesfully, FALSE = fifo overflow or fifo empty    pRead           ��       (    A_GetHead returns pointer to read data    cbRead           ��       *    A_GetHead returns byte size of read data    nCount           ��           number of fifo entries    cbSize           ��       "    current byte length of fifo data    cbFree           ��            biggest available free segment             �ѱV  �    ����           FB_MEMSTACKBUFFER               pWrite           ��           pointer to write data    cbWrite           ��           byte size of write data    pRead           ��	           pointer to read data buffer    cbRead           ��
           byte size of read data buffer    pBuffer           ��       #    pointer to LIFO buffer data bytes    cbBuffer           ��           max. LIFO buffer byte size       bOk            ��       T    TRUE = new entry added or removed succesfully, FALSE = LIFO overflow or LIFO empty    nCount           ��           number of LIFO entries    cbSize           ��       "    current byte length of LIFO data    cbReturn           ��       �    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             �ѱV  �    ����           FB_REGQUERYVALUE           fbAdsRdWrtEx       [    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_REG_HKEYLOCALMACHINE, IDXOFFS := 0 )              	   T_AmsPort         �                  
   ADSRDWRTEX ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              s1Len         ` ��              s2Len         ` ��              ptr         ` ��              cbBuff         ` ��              tmpBuff                ST_HKeySrvRead ` ��                 sNetId            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    sSubKey               T_MaxString   ��       #    HKEY_LOCAL_MACHINE \ sub key name    sValName               T_MaxString   ��           Value name    cbData           ��           Number of data bytes to read    pData           ��       $    Points to registry key data buffer    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeOut    �     ��	           Max fb execution time       bBusy            ��              bError            ��              nErrId           ��              cbRead           ��       '    Number of succesfully read data bytes             �ѱV  �   ����           FB_REGSETVALUE        
   fbAdsWrite       [    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_REG_HKEYLOCALMACHINE, IDXOFFS := 0 )              	   T_AmsPort         �                  ADSWRITE ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              s1Len         ` ��              s2Len         ` ��              s3Len         ` ��              ptr         ` ��              nType         ` ��              cbBuff         ` ��              cbRealWrite         ` ��              tmpBuff                  ST_HKeySrvWrite ` ��                 sNetId            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    sSubKey               T_MaxString   ��       #    HKEY_LOCAL_MACHINE \ sub key name    sValName               T_MaxString   ��           Value name    eValType               E_RegValueType   ��           Value type    cbData           ��           Size of value data in bytes    pData           ��           Pointer to value data buffer   bExecute            ��	       6    Rising edge on this input activates the fb execution    tTimeOut    �     ��
           Max fb execution time       bBusy            ��              bError            ��              nErrId           ��              cbWrite           ��       +    Number of successfully written data bytes             �ѱV  �   ����           FB_REMOVEROUTEENTRY        
   fbAdsWrite       P    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_DELREMOTE, IDXOFFS := 0 )              	   T_AmsPort         "                 ADSWRITE ` ��                 sNetID            
   T_AmsNetID   ��       '    TwinCAT network address (ams net id )    sName                 ��           Route name as string    bExecute            ��       -    Rising edge starts function block execution    tTimeout    �     ��           Max fb execution time       bBusy            ��
              bError            ��              nErrID           ��                       �ѱV  �   ����           FB_RESETSCOPESERVERCONTROL        
   fbAdsWrite                          ADSWRITE    ��              nState            ��                 sNetId            
   T_AmsNetId   ��              bExecute            ��              tTimeout    �     ��                 bBusy            ��              bDone            ��	              bError            ��
              nErrorId           ��                       �ѱV  �   ����           FB_SAVESCOPESERVERDATA           nState            ��           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SCOPESERVER, IDXGRP := 16#750E, IDXOFFS := 0 )              	   T_AmsPort         u                 ADSWRITE    ��                 sNetId            
   T_AmsNetId   ��              bExecute            ��           	   sSaveFile    Q       Q    ��              tTimeout    �     ��                 bBusy            ��	              bDone            ��
              bError            ��              nErrorId           ��                       �ѱV  �   ����           FB_SCOPESERVERCONTROL           eCurrentState           SCOPE_SERVER_IDLE       E_ScopeServerState    ��           	   fbConnect                                   FB_ConnectScopeServer    ��              fbStart        
                FB_StartScopeServer    ��              fbStop        
                FB_StopScopeServer    ��              fbSave        
                FB_SaveScopeServerData    ��              fbDisconnect        	               FB_DisconnectScopeServer    ��              fbReset        	               FB_ResetScopeServerControl    ��                  sNetId            
   T_AmsNetId   ��           	   eReqState               E_ScopeServerState   ��              sConfigFile    Q       Q    ��           	   sSaveFile    Q       Q    ��              tTimeout    �     ��                 bBusy            ��              bDone            ��              bError            ��              nErrorId           ��                       �ѱV  �   ����           FB_SETTIMEZONEINFORMATION        
   fbAdsWrite       o    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS	:= TIMESERVICE_TIMEZONINFORMATION )              	   T_AmsPort         �                ADSWRITE ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              req                ST_AmsGetTimeZoneInformation ` ��                 sNetID           ''    
   T_AmsNetID   ��       &    TwinCAT network address (ams net id)    tzInfo       ]   ( (*West Euoropa Standard Time *)
					bias:=-60,
					standardName:='W. Europe Standard Time',
					standardDate:=(wYear:=0, wMonth:=10, wDayOfWeek:=0, wDay:=5, wHour:=3),
					standardBias:=0,
					daylightName:='W. Europe Daylight Time',
					daylightDate:=(wYear:=0, wMonth:=3, wDayOfWeek:=0, wDay:=5, wHour:=2),
					daylightBias:=-60 )    ����        W. Europe Standard Time                
   TIMESTRUCT             
                                W. Europe Daylight Time                
   TIMESTRUCT                                 ����   ST_TimeZoneInformation   ��              bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��              bError            ��              nErrID           ��                       �ѱV  �   ����           FB_STARTSCOPESERVER           nState            ��           
   fbAdsWrite                          ADSWRITE    ��              nDummy   	                    0,0                     ��                 sNetId            
   T_AmsNetId   ��              bExecute            ��              tTimeout    �     ��                 bBusy            ��              bDone            ��	              bError            ��
              nErrorId           ��                       �ѱV  �   ����           FB_STOPSCOPESERVER           nState            ��           
   fbAdsWrite                          ADSWRITE    ��              nDummy   	                    0,0                     ��                 sNetId            
   T_AmsNetId   ��              bExecute            ��              tTimeout    �     ��                 bBusy            ��              bDone            ��	              bError            ��
              nErrorId           ��                       �ѱV  �   ����           FB_STRINGRINGBUFFER           fbBuffer                              FB_MemRingBuffer ` ��       4    Internal (low level) buffer control function block    
   bOverwrite            ��       8    TRUE = overwrite oldest entry, FALSE = don't overwrite    putValue           ''       T_MaxString   ��       %    String to add (write) to the buffer    pBuffer           ��	       #    Pointer to ring buffer data bytes    cbBuffer           ��
           Max. ring buffer byte size       bOk            ��       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    getValue           ''       T_MaxString   ��       #    String removed (read) from buffer    nCount           ��           Number of fifo entries    cbSize           ��       "    Current byte length of fifo data             �ѱV  �    ����        "   FB_SYSTEMTIMETOTZSPECIFICLOCALTIME           fbBase                                   "   FB_TranslateUtcToLocalTimeByZoneID ` ��           Underlaid base function block       in                   
   TIMESTRUCT   ��       p    Time to be converted (UTC, system time format). Structure that specifies the system time since January 1, 1601    tzInfo                     ST_TimeZoneInformation   ��           Time zone settings       out                   
   TIMESTRUCT   ��       ,    Converted time in local system time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   ��	       "    Daylight saving time information    bB            ��
            FALSE => A time, TRUE => B time            �ѱV  �    ����           FB_TEXTFILERINGBUFFER           fbOpen                             FB_FileOpen ` ��              fbClose                      FB_FileClose ` ��              fbPuts        	               FB_FilePuts ` ��              nStep         ` ��       @    0=idle, 1=init, 10,11=open, 40,41=write, 50,51=close, 100=exit    eCmd           eFileRBuffer_None       E_FileRBufferCmd ` ��                 sNetId           ''    
   T_AmsNetId ` ��           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString ` ��       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath ` ��           default: Open generic file    bAppend         ` ��       #    TRUE = append, FALSE = not append    putLine           ''       T_MaxString ` ��	              cbBuffer        ` ��
       5    max. file buffer byte size(RESERVED for future use)    tTimeout    �   ` ��                 bBusy          ` ��              bError          ` ��              nErrID         ` ��              bOpened          ` ��       )    TRUE = file opened, FALSE = file closed    getLine           ''       T_MaxString ` ��                       �ѱV  �   ����        "   FB_TRANSLATELOCALTIMETOUTCBYZONEID           inLocal                   
   TIMESTRUCT ` ��       9    Input time in local system time format (time structure) 	   tziSommer                   
   TIMESTRUCT ` ��       A    tzInfo.daylightDate transition time in local system time format 	   tziWinter                   
   TIMESTRUCT ` ��       A    tzInfo.standardDate transition time in local system time Format    tziLocalSommer             
   T_FILETIME ` ��       ?    tzInfo.daylightDate transition time in local file time format    tziLocalWinter             
   T_FILETIME ` ��       ?    tzInfo.standardDate transition time in local file time Format    tziLocalSommerJump             
   T_FILETIME ` ��              tziLocalWinterJump             
   T_FILETIME ` ��              ui64LocalIn                T_ULARGE_INTEGER ` ��       (    Local input time as unsigned 64 number    ui64LocalSommer                T_ULARGE_INTEGER ` ��       5    Local tzInfo.daylightDate as unsigned 64 bit number    ui64LocalWinter                T_ULARGE_INTEGER ` ��       5    Local tzInfo.standardDate as unsigned 64 bit number    in_to_s         ` ��       <    Input time[Local] to tzInfo.daylightDate[Local] cmp result    in_to_w         ` ��       <    Input time[Local] to tzInfo.standardDate[Local] cmp result    s_to_w         ` ��       E    tzInfo.daylightDate[Local] to tzInfo.standardDate[Local] cmp result    in_to_s_jump         ` ��        2    Input time[Local] to tzInfo jump time cmp result    in_to_w_jump         ` ��!       2    Input time[Local] to tzInfo jump time cmp result    iStandardBias         ` ��#              iDaylightBias         ` ��$              ui64PreviousIn                T_ULARGE_INTEGER ` ��&              ui64FallDiff                T_ULARGE_INTEGER ` ��'           	   bFallDiff          ` ��(           Nur zu Testzwecken    dtSommerJump         ` ��*              dtWinterJump         ` ��+                 in             
   T_FILETIME   ��       /    Time to be converted (Local file time format)    tzInfo                     ST_TimeZoneInformation   ��           Time zone information    wDldYear           ��       p    Optional daylightDate.wYear value. If 0 => not used (default) else used only if tzInfo.daylightDate.wYear = 0.    wStdYear           ��       p    Optional standardDate.wYear value. If 0 => not used (default) else used only if tzInfo.standardDate.wYear = 0.       out             
   T_FILETIME   ��
       '    Converted time (UTC file time format)    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   ��       +    Detected daylight saving time information    bB            ��            FALSE => A time, TRUE => B time   bias           ��           Bias value in minutes             �ѱV  �    ����        "   FB_TRANSLATEUTCTOLOCALTIMEBYZONEID           inUtc                   
   TIMESTRUCT ` ��       7    Input time in UTC system time format (time structure)    bInAsStruct          ` ��       k    TRUE => inUtc is valid/converted to UTC system time format, FALSE => inUtc is not valid/not converted yet 	   tziSommer                   
   TIMESTRUCT ` ��       A    tzInfo.daylightDate transition time in local system time format 	   tziWinter                   
   TIMESTRUCT ` ��       A    tzInfo.standardDate transition time in local system time Format    tziLocalSommer             
   T_FILETIME ` ��       ?    tzInfo.daylightDate transition time in local file time format    tziLocalWinter             
   T_FILETIME ` ��       ?    tzInfo.standardDate transition time in local file time Format    tziUtcSommer             
   T_FILETIME ` ��       =    tzInfo.daylightDate transition time in UTC file time format    tziUtcWinter             
   T_FILETIME ` ��       =    tzinfo.standardDate transition time in UTC file time format 	   ui64UtcIn                T_ULARGE_INTEGER ` ��       &    UTC input time as unsigned 64 number    ui64UtcSommer                T_ULARGE_INTEGER ` ��       3    UTC tzInfo.daylightDate as unsigned 64 bit number    ui64UtcWinter                T_ULARGE_INTEGER ` ��       3    UTC tzInfo.standardDate as unsigned 64 bit number    in_to_s         ` ��       8    Input time[UTC] to tzInfo.daylightDate[UTC] cmp result    in_to_w         ` ��       8    Input time[UTC] to tzInfo.standardDate[UTC] cmp result    s_to_w         ` ��        A    tzInfo.daylightDate[UTC] to tzInfo.standardDate[UTC] cmp result    out_to_s         ` ��!       =    Output time[local] to tzInfo.daylightDate[local] cmp result    out_to_w         ` ��"       =    Output time[local] to tzInfo.standardDate[local] cmp result       in             
   T_FILETIME   ��       .    Time to be converted (UTC, file time format)    tzInfo                     ST_TimeZoneInformation   ��           Time zone information    wDldYear           ��       p    Optional daylightDate.wYear value. If 0 => not used (default) else used only if tzInfo.daylightDate.wYear = 0.    wStdYear           ��       p    Optional standardDate.wYear value. If 0 => not used (default) else used only if tzInfo.standardDate.wYear = 0.       out             
   T_FILETIME   ��
       (    Converted time (local file time format)   eTzID           eTimeZoneID_Unknown       E_TimeZoneID   ��       0    Detected daylight saving time/zone information    bB            ��            FALSE => A time, TRUE => B time   bias           ��           Bias value in minutes             �ѱV  �    ����            FB_TZSPECIFICLOCALTIMETOFILETIME           fbBase       !    ( wStdYear := 0, wDldYear := 0 )                                         "   FB_TranslateLocalTimeToUtcByZoneID ` ��           Underlaid base function block       in             
   T_FILETIME   ��       }    Time zone's specific local file time. 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601   tzInfo                     ST_TimeZoneInformation   ��           Time zone settings       out             
   T_FILETIME   ��       E    Converted time in Coordinated Universal Time (UTC) file time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   ��	       "    Daylight saving time information    bB            ��
            FALSE => A time, TRUE => B time            �ѱV  �    ����        "   FB_TZSPECIFICLOCALTIMETOSYSTEMTIME           fbBase                                         "   FB_TranslateLocalTimeToUtcByZoneID ` ��           Underlaid base function block       in                   
   TIMESTRUCT   ��       g    Time zone's specific local system time. Structure that specifies the system time since January 1, 1601   tzInfo                     ST_TimeZoneInformation   ��           Time zone settings       out                   
   TIMESTRUCT   ��       8    Coordinated Universal Time (UTC) in system time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   ��	       "    Daylight saving time information    bB            ��
            FALSE => A time, TRUE => B time            �ѱV  �    ����           FB_WRITEPERSISTENTDATA           fbAdsWrtCtl       9    ( ADSSTATE := ADSSTATE_SAVECFG, LEN := 0, SRCADDR := 0 )                          	   ADSWRTCTL ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��       l    Contains the ADS port number of the PLC run-time system whose persistent data is to be stored (801, 811...)   START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time    MODE           SPDM_2PASS       E_PersistentMode   ��       D    =SPDM_2PASS: optimized boost; =SPDM_VAR_BOOST: boost per variable;       BUSY            ��              ERR            ��              ERRID           ��                       �ѱV  �   ����           FILETIME_TO_DT           ui64                T_ULARGE_INTEGER ` ��	                 fileTime             
   T_FILETIME   ��           Windows file time.       FILETIME_TO_DT                                     �ѱV  �    ����           FILETIME_TO_SYSTEMTIME     	      D         ` ��              M         ` ��              Y         ` ��           
   uiPastDays                T_ULARGE_INTEGER ` ��	              uiPastYears                T_ULARGE_INTEGER ` ��
              uiRemainder                T_ULARGE_INTEGER ` ��           
   dwPastDays         ` ��              dwPastYears         ` ��           
   dwYearDays         ` ��                 fileTime             
   T_FILETIME   ��                 FILETIME_TO_SYSTEMTIME                   
   TIMESTRUCT                             �ѱV  �    ����           FIX16_TO_LREAL               in                 T_FIX16   ��                 FIX16_TO_LREAL                                                  �ѱV  �    ����           FIX16_TO_WORD               in                 T_FIX16   ��           16 bit fixed point number       FIX16_TO_WORD                                     �ѱV  �    ����           FIX16ADD               augend                 T_FIX16   ��              addend                 T_FIX16   ��                 FIX16Add                 T_FIX16                             �ѱV  �    ����        
   FIX16ALIGN               in                 T_FIX16   ��       #    16 bit signed fixed point number.    n                           ��       ,    Number of fractional bits (decimal places)    
   FIX16Align                 T_FIX16                             �ѱV  �    ����           FIX16DIV           tmpA         ` ��	                 dividend                 T_FIX16   ��              divisor                 T_FIX16   ��                 FIX16Div                 T_FIX16                             �ѱV  �    ����           FIX16MUL           tmp         ` ��	                 multiA                 T_FIX16   ��              multiB                 T_FIX16   ��                 FIX16Mul                 T_FIX16                             �ѱV  �    ����           FIX16SUB               minuend                 T_FIX16   ��           
   subtrahend                 T_FIX16   ��                 FIX16Sub                 T_FIX16                             �ѱV  �    ����           GETREMOTEPCINFO        	   fbAdsRead       #    ( PORT:=1, IDXGRP:=3, IDXOFFS:=1 )              	   T_AmsPort                          ADSREAD ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��           
   RouterInfo   	  c            
                ST_AmsRouterInfoEntry         ` ��              iIndex         ` ��                 NETID            
   T_AmsNetId   ��       D    Target NetID, usually left as empty string for reading local infos    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��       
    Ads busy    ERR            ��	           Ads error    ERRID           ��
           Ads Error    RemotePCInfo               REMOTEPCINFOSTRUCT   ��       N    field with all NetID�s and PC names found in router, ordered as router gives             �ѱV  �   ����           GUID_TO_REGSTRING           sGuid    Q       Q     ��                 in                  GUID   ��           Structure with GUID       GUID_TO_REGSTRING    '       '                              �ѱV  �    ����           GUID_TO_STRING           sRetVal    Q       Q     ��              nDummyW            ��	              nDummyDW            ��
              sHex               T_MaxString    ��                 stIn                  GUID   ��           Structure with a GUID       GUID_TO_STRING    Q       Q                              �ѱV  �    ����           GUIDSEQUALBYVAL               guidA                  GUID   ��              guidB                  GUID   ��                 GuidsEqualByVal                                      �ѱV  �    ����           HEXASCNIBBLE_TO_BYTE               asc           ��       R   Ascii code of hexadecimal nibble character, ASC('0'..'9' or 'a'..'f' or 'A'..'F')       HEXASCNIBBLE_TO_BYTE                                     �ѱV  �    ����           HEXCHRNIBBLE_TO_BYTE               chr               ��       8    One string character: '0'..'9' or 'a'..'f' or 'A'..'F'       HEXCHRNIBBLE_TO_BYTE                                     �ѱV  �    ����           HEXSTR_TO_DATA           pSrc               ` ��
              pDest               ` ��              ascii         ` ��              nibble         ` ��              bAdd          ` ��              bLN          ` ��           hi/lo nibble       sHex               T_MaxString   ��           Hex string to convert    pData           ��           Pointer to destination buffer    cbData           ��       !    Byte size of destination buffer       HEXSTR_TO_DATA                                     �ѱV  �    ����           HOST_TO_BE128               in                T_UHUGE_INTEGER   ��                 HOST_TO_BE128                T_UHUGE_INTEGER                             �ѱV  �    ����           HOST_TO_BE16               in           ��                 HOST_TO_BE16                                     �ѱV  �    ����           HOST_TO_BE32           parr    	                            ` ��                 in           ��                 HOST_TO_BE32                                     �ѱV  �    ����           HOST_TO_BE64               in                T_ULARGE_INTEGER   ��                 HOST_TO_BE64                T_ULARGE_INTEGER                             �ѱV  �    ����           INT64_TO_LREAL               in                T_LARGE_INTEGER   ��                 INT64_TO_LREAL                                                  �ѱV  �    ����        
   INT64ADD64           bOV          ` ��	                 i64a                T_LARGE_INTEGER   ��              i64b                T_LARGE_INTEGER   ��              
   Int64Add64                T_LARGE_INTEGER                             �ѱV  �    ����           INT64ADD64EX               augend                T_LARGE_INTEGER   ��              addend                T_LARGE_INTEGER   ��                 Int64Add64Ex                T_LARGE_INTEGER                       bOV            ��       3    TRUE => arithmetic overflow, FALSE => no overflow         �ѱV  �    ����        
   INT64CMP64               i64a                T_LARGE_INTEGER   ��              i64b                T_LARGE_INTEGER   ��	              
   Int64Cmp64                                     �ѱV  �    ����           INT64DIV64EX           bIsNegative          ` ��           
   sRemainder                T_ULARGE_INTEGER ` ��                 dividend                T_LARGE_INTEGER   ��              divisor                T_LARGE_INTEGER   ��                 Int64Div64Ex                T_LARGE_INTEGER                    	   remainder                 T_LARGE_INTEGER  ��                   �ѱV  �    ����           INT64ISZERO               i64                T_LARGE_INTEGER   ��                 Int64IsZero                                      �ѱV  �    ����           INT64NEGATE               i64                T_LARGE_INTEGER   ��                 Int64Negate                T_LARGE_INTEGER                             �ѱV  �    ����           INT64NOT               i64                T_LARGE_INTEGER   ��                 Int64Not                T_LARGE_INTEGER                             �ѱV  �    ����        
   INT64SUB64               i64a                T_LARGE_INTEGER   ��       	    minuend    i64b                T_LARGE_INTEGER   ��           substrahend    
   Int64Sub64                T_LARGE_INTEGER                             �ѱV  �    ����           ISFINITE        	   ptrDouble    	                            ` ��           	   ptrSingle               ` ��	                 x                 T_ARG   ��                 IsFinite                                      �ѱV  �    ����           LARGE_INTEGER            
   dwHighPart           ��           	   dwLowPart           ��                 LARGE_INTEGER                T_LARGE_INTEGER                             �ѱV  �    ����           LARGE_TO_ULARGE               in                T_LARGE_INTEGER   ��                 LARGE_TO_ULARGE                T_ULARGE_INTEGER                             �ѱV  �    ����           LREAL_TO_FIX16               in                        ��           LREAL number to convert    n                          ��       ,    Number of fractional bits (decimal places)       LREAL_TO_FIX16                 T_FIX16                             �ѱV  �    ����           LREAL_TO_FMTSTR           rec              
   T_FloatRec ` ��              pOut               ` ��              iStart         ` ��              iEnd         ` ��              i         ` ��                 in                        ��
           
   iPrecision           ��              bRound            ��                 LREAL_TO_FMTSTR    �      �                             �ѱV  �    ����           LREAL_TO_INT64               in                        ��                 LREAL_TO_INT64                T_LARGE_INTEGER                             �ѱV  �    ����           LREAL_TO_UINT64           f64                      ` ��                 in                        ��                 LREAL_TO_UINT64                T_ULARGE_INTEGER                             �ѱV  �    ����           MAXSTRING_TO_BYTEARR           cbCopy         ` ��           	   Index7001                            in               T_MaxString   ��                 MAXSTRING_TO_BYTEARR   	  �                                                 �ѱV  �   ����           NT_ABORTSHUTDOWN           fbAdsWrtCtl       N    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_POWERGOOD, DEVSTATE := 0 )              	   T_AmsPort         
               	   ADSWRTCTL ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��              ERR            ��	              ERRID           ��
                       �ѱV  �   ����        
   NT_GETTIME        	   fbAdsRead       i    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS := TIMESERVICE_DATEANDTIME )              	   T_AmsPort         �                ADSREAD ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��              ERR            ��	              ERRID           ��
              TIMESTR                   
   TIMESTRUCT   ��           Local windows system time             �ѱV  �   ����        	   NT_REBOOT           fbAdsWrtCtl       M    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_SHUTDOWN, DEVSTATE := 1 )              	   T_AmsPort                       	   ADSWRTCTL ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    DELAY           ��           Reboot delay time [seconds]    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       �ѱV  �   ����           NT_SETLOCALTIME        
   fbAdsWrite       d    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP:= SYSTEMSERVICE_TIMESERVICES, IDXOFFS:=TIMESERVICE_DATEANDTIME)              	   T_AmsPort         �                ADSWRITE ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    TIMESTR                   
   TIMESTRUCT   ��           New local system time    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       �ѱV  �   ����           NT_SETTIMETORTCTIME        
   fbAdsWrite       :    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := 4, IDXOFFS := 0 )              	   T_AmsPort                           ADSWRITE ` ��           
   fbRegQuery       K    ( sSubKey := 'Software\Beckhoff\TwinCAT\System', sValName := 'NumOfCPUs' )                        T_MaxString                    T_MaxString                   FB_RegQueryValue ` ��           	   fbTrigger                 R_TRIG ` ��              bTmp         ` ��              state         ` ��              bInit         ` ��           	   numOfCPUs         ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    SET            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��              ERR            ��	              ERRID           ��
                       �ѱV  �   ����           NT_SHUTDOWN           fbAdsWrtCtl       M    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_SHUTDOWN, DEVSTATE := 0 )              	   T_AmsPort                        	   ADSWRTCTL ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    DELAY           ��           Shutdown delay time [seconds]    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       �ѱV  �   ����           NT_STARTPROCESS        
   fbAdsWrite       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP:=SYSTEMSERVICE_STARTPROCESS, IDXOFFS:=0 )              	   T_AmsPort         �                 ADSWRITE ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              LenPath         ` ��              LenDir         ` ��           
   LenComLine         ` ��              req                  ST_AmsStartProcessReq ` ��           data buffer       NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PATHSTR               T_MaxString   ��              DIRNAME               T_MaxString   ��           	   COMNDLINE               T_MaxString   ��              START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��              ERR            ��              ERRID           ��                       �ѱV  �   ����           OTSTRUCT_TO_TIME           tmpMilli         ` ��                 OTIN                    OTSTRUCT   ��                 OTSTRUCT_TO_TIME                                     �ѱV  �    ����           PBOOL_TO_BOOL               in                  ��                 PBOOL_TO_BOOL                                      �ѱV  �    ����           PBYTE_TO_BYTE               in                 ��                 PBYTE_TO_BYTE                                     �ѱV  �    ����           PDATE_TO_DATE               in                 ��                 PDATE_TO_DATE                                     �ѱV  �    ����           PDINT_TO_DINT               in                 ��                 PDINT_TO_DINT                                     �ѱV  �    ����        	   PDT_TO_DT               in                 ��              	   PDT_TO_DT                                     �ѱV  �    ����           PDWORD_TO_DWORD               in                 ��                 PDWORD_TO_DWORD                                     �ѱV  �    ����           PHUGE_TO_HUGE               in                 T_HUGE_INTEGER        ��                 PHUGE_TO_HUGE                T_HUGE_INTEGER                             �ѱV  �    ����           PINT_TO_INT               in                 ��                 PINT_TO_INT                                     �ѱV  �    ����           PLARGE_TO_LARGE               in                 T_LARGE_INTEGER        ��                 PLARGE_TO_LARGE                T_LARGE_INTEGER                             �ѱV  �    ����           PLC_READSYMINFO        	   fbAdsRead       3    ( IDXGRP := ADSIGRP_SYM_UPLOADINFO, IDXOFFS := 0 )       �                 ADSREAD ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              SymInfoStruct   	                       ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��              START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��              SYMCOUNT           ��              SYMSIZE           ��                       �ѱV  �   ����           PLC_READSYMINFOBYNAME           fbReadEx                                       PLC_ReadSymInfoByNameEx ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��              SYMNAME               T_MaxString   ��              START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��	           Max fb execution time       BUSY            ��              ERR            ��              ERRID           ��              SYMINFO                     SYMINFOSTRUCT   ��                       �ѱV  �   ����           PLC_READSYMINFOBYNAMEEX        
   fbAdsRdWrt       5    ( IDXGRP := ADSIGRP_SYM_INFOBYNAMEEX, IDXOFFS := 0 )       	�                   ADSRDWRT ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              symInfoBuffer                            ST_AmsSymbolInfoEntry ` ��           
   nameLength         ` ��           
   typeLength         ` ��              commentLength         ` ��              nameAdrOffset         ` ��              typeAdrOffset         ` ��              commentAdrOffset         ` ��              nameCpyLength         ` ��              typeCpyLength         ` ��               commentCpyLength         ` ��!              endOfBufAdrOffset         ` ��"                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��              SYMNAME               T_MaxString   ��              START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��	           Max fb execution time       BUSY            ��              ERR            ��              ERRID           ��              SYMINFO                     SYMINFOSTRUCT   ��              OVTYPE            ��       @    TRUE => Type name string length overflow, FALSE => no overflow 	   OVCOMMENT            ��       >    TRUE => Comment string length overflow, FALSE => no overflow             �ѱV  �   ����        	   PLC_RESET           fbAdsWrtCtl       F    ( ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��              RESET            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       �ѱV  �   ����        	   PLC_START           fbAdsWrtCtl       D    ( ADSSTATE := ADSSTATE_RUN, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��              START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       �ѱV  �   ����           PLC_STOP           fbAdsWrtCtl       E    ( ADSSTATE := ADSSTATE_STOP, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��              STOP            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       �ѱV  �   ����           PLREAL_TO_LREAL               in                              ��                 PLREAL_TO_LREAL                                                  �ѱV  �    ����           PMAXSTRING_TO_MAXSTRING               in                T_MaxString        ��                 PMAXSTRING_TO_MAXSTRING               T_MaxString                             �ѱV  �    ����           PREAL_TO_REAL               in                  ��                 PREAL_TO_REAL                                      �ѱV  �    ����           PROFILER     
      MAX_DATABUFF_SIZE    d   @  ��              RisingEdgeStart                 R_TRIG ` ��              RisingEdgeReset                 R_TRIG ` ��              FallingEdgeStart                 F_TRIG ` ��              GETCPUACCOUNT1                GETCPUACCOUNT ` ��              OldCpuCntDW         ` ��              MeasureData   	  d                     ` ��              TimeSum         ` ��              MaxData        ` ��              idx         ` ��                 START            ��       0   rising edge starts measurement and falling stops   RESET            ��                 BUSY            ��              DATA                   PROFILERSTRUCT   ��                       �ѱV  �   ����           PSINT_TO_SINT               in                 ��                 PSINT_TO_SINT                                     �ѱV  �    ����           PSTRING_TO_STRING               in     Q       Q         ��                 PSTRING_TO_STRING    Q       Q                              �ѱV  �    ����           PTIME_TO_TIME               in                 ��                 PTIME_TO_TIME                                     �ѱV  �    ����           PTOD_TO_TOD               in                 ��                 PTOD_TO_TOD                                     �ѱV  �    ����           PUDINT_TO_UDINT               in                 ��                 PUDINT_TO_UDINT                                     �ѱV  �    ����           PUHUGE_TO_UHUGE               in                 T_UHUGE_INTEGER        ��                 PUHUGE_TO_UHUGE                T_UHUGE_INTEGER                             �ѱV  �    ����           PUINT64_TO_UINT64               in                 T_ULARGE_INTEGER        ��                 PUINT64_TO_UINT64                T_ULARGE_INTEGER                             �ѱV  �    ����           PUINT_TO_UINT               in                 ��                 PUINT_TO_UINT                                     �ѱV  �    ����           PULARGE_TO_ULARGE               in                 T_ULARGE_INTEGER        ��                 PULARGE_TO_ULARGE                T_ULARGE_INTEGER                             �ѱV  �    ����           PUSINT_TO_USINT               in                 ��                 PUSINT_TO_USINT                                     �ѱV  �    ����           PVOID_TO_BINSTR               in               PVOID   ��       -    PVOID input value (pointer) to be converted 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       PVOID_TO_BINSTR               T_MaxString                             �ѱV  �    ����           PVOID_TO_DECSTR               in               PVOID   ��       -    PVOID input value (pointer) to be converted 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       PVOID_TO_DECSTR               T_MaxString                             �ѱV  �    ����           PVOID_TO_HEXSTR               in               PVOID   ��       -    PVOID input value (pointer) to be converted 
   iPrecision           ��       ,    Precision. Number of digits to be printed.    bLoCase            ��	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       PVOID_TO_HEXSTR               T_MaxString                             �ѱV  �    ����           PVOID_TO_OCTSTR               in               PVOID   ��       -    PVOID input value (pointer) to be converted 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       PVOID_TO_OCTSTR               T_MaxString                             �ѱV  �    ����           PVOID_TO_STRING               in               PVOID   ��                 PVOID_TO_STRING               T_MaxString                             �ѱV  �    ����           PWORD_TO_WORD               in                 ��                 PWORD_TO_WORD                                     �ѱV  �    ����        
   RAD_TO_DEG               ANGLE                        ��              
   RAD_TO_DEG                                                  �ѱV  �    ����           REGSTRING_TO_GUID               in    '       '    ��       A    String containig GUID, '{xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx}'       REGSTRING_TO_GUID                  GUID                             �ѱV  �    ����           ROUTETRANSPORT_TO_STRING               eType               E_RouteTransportType   ��                 ROUTETRANSPORT_TO_STRING    Q       Q                              �ѱV  �    ����           RTC           fbGetCpuCounter                 GETCPUCOUNTER ` ��           
   risingEdge                 R_TRIG ` ��              oldTick         ` ��              currTick         ` ��              nanoDiff         ` ��              nanoRest         ` ��              secDiff         ` ��              init         ` ��                 EN            ��              PDT           ��                 Q            ��              CDT           ��	                       �ѱV  �    ����           RTC_EX           fbGetCpuCounter                 GETCPUCOUNTER ` ��           
   risingEdge                 R_TRIG ` ��              oldTick         ` ��              currTick         ` ��              nanoDiff         ` ��              nanoRest         ` ��              secDiff         ` ��              init         ` ��                 EN            ��              PDT           ��              PMSEK           ��                 Q            ��	              CDT           ��
              CMSEK           ��                       �ѱV  �    ����           RTC_EX2     	      fbGetCpuCounter                 GETCPUCOUNTER ` ��           
   risingEdge                 R_TRIG ` ��              oldTick         ` ��              currTick         ` ��              nanoDiff         ` ��              nanoRest         ` ��              secDiff         ` ��              dateTime         ` ��              init         ` ��                 EN            ��              PDT                   
   TIMESTRUCT   ��              PMICRO           ��                 Q            ��	              CDT       ;    ( wYear := 1970, wMonth := 1, wDay := 1, wDayOfWeek := 4 )    �                  
   TIMESTRUCT   ��
              CMICRO           ��                       �ѱV  �    ����           SCOPEASCIIEXPORT        
   fbAdsWrite                          ADSWRITE    ��                 bExecute            ��           	   sFilePath               T_MaxString   ��              tTimeout    �     ��                 bBusy            ��              bError            ��	              iErrorId           ��
                       �ѱV  �   ����        	   SCOPEEXIT        
   fbAdsWrite                          ADSWRITE    ��           
   RisingEdge                 R_TRIG    ��              step            ��              fbDelay                    TON    ��                 bExecute            ��       -    Rising edge starts function block execution    tTimeOut    �     ��       >    Maximum time allowed for the execution of the function block       bBusy            ��              bError            ��              iErrorId           ��	                       �ѱV  �   ����           SCOPEGETRECORDLEN        	   fbAdsRead                          ADSREAD    ��                 bExecute            ��                 bBusy            ��              bError            ��              iErrorId           ��           
   fRecordLen                        ��	                       �ѱV  �    ����           SCOPEGETSTATE        	   fbAdsRead                          ADSREAD    ��              State            ��                 bExecute            ��                 bBusy            ��              bError            ��              iErrorId           ��              bOnline            ��	                       �ѱV  �    ����           SCOPELOADFILE        
   fbAdsWrite                          ADSWRITE    ��                 bExecute            ��           	   sFilePath               T_MaxString   ��              tTimeout    �     ��                 bBusy            ��              bError            ��	              iErrorId           ��
                       �ѱV  �   ����           SCOPEMANUALTRIGGER        
   fbAdsWrite                          ADSWRITE    ��                 bExecute            ��                 bBusy            ��              bError            ��              iErrorId           ��                       �ѱV  �    ����           SCOPESAVEAS        
   RisingEdge                 R_TRIG ` ��           
   fbAdsWrite       D    ( NETID := '', PORT := 14000, IDXGRP := 16#2000, IDXOFFS := 16#11 )             
   T_AmsNetId                 	   T_AmsPort                           ADSWRITE ` ��              step         ` ��                 bExecute            ��       -    Rising edge starts function block execution 	   sFilePath               T_MaxString   ��           e.g. c:\Axis1.scp   tTimeout    �     ��       >    Maximum time allowed for the execution of the function block       bBusy            ��              bError            ��	              iErrorId           ��
                       �ѱV  �   ����           SCOPESETOFFLINE        
   fbAdsWrite                          ADSWRITE    ��                 bExecute            ��                 bBusy            ��              bError            ��              iErrorId           ��                       �ѱV  �    ����           SCOPESETONLINE        
   fbAdsWrite                          ADSWRITE    ��                 bExecute            ��                 bBusy            ��              bError            ��              iErrorId           ��                       �ѱV  �    ����           SCOPESETRECORDLEN        
   fbAdsWrite                          ADSWRITE    ��                 bExecute            ��           
   fRecordLen                        ��                 bBusy            ��              bError            ��              iErrorId           ��	                       �ѱV  �    ����           SCOPEVIEWEXPORT        
   fbAdsWrite                          ADSWRITE    ��                 bExecute            ��           	   sFilePath               T_MaxString   ��              tTimeout    �     ��                 bBusy            ��              bError            ��	              iErrorId           ��
                       �ѱV  �   ����           STRING_TO_CSVFIELD           cbField         ` ��                 in               T_MaxString   ��       !    Input data in PLC string format    bQM            ��	       l    TRUE => Enclose result string in quotation marks, FALSE => Don't enclose result string in quotation marks.       STRING_TO_CSVFIELD               T_MaxString                             �ѱV  �    ����           STRING_TO_GUID           b   	  #                        ��	              g                  GUID    ��
              n            ��              nibble            ��           	   Index7001                            in    %       %    ��       @    String containing GUID, 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'       STRING_TO_GUID                  GUID                             �ѱV  �    ����           STRING_TO_PVOID           ui32            ��                 in    Q       Q    ��       .    String containing the 32 bit pointer address       STRING_TO_PVOID               PVOID                             �ѱV  �    ����           STRING_TO_SYSTEMTIME           b   	                 �   16#31, 16#36, 16#30, 16#31, 	(* year 1601 *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* month *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* day *)
								16#2D(*-*), 16#30, 16#30(*00*),	(* hour *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* minute *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* second *)
								16#2E(*.*), 16#30, 16#30, 16#30(*000*), (* milliseconds *)
								16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` ��           null delimiter    ts       *    ( wYear := 1601, wMonth := 1, wDay := 1 )    A               
   TIMESTRUCT ` ��              n         ` ��              bFmt          ` ��              dwYears         ` ��              dwDays         ` ��           	   Index7001                            in               ��       1    Input string, format: '2007-03-05-17:35:09.223'       STRING_TO_SYSTEMTIME                   
   TIMESTRUCT                             �ѱV  �    ����           STRING_TO_UINT64           ptr               ` ��              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER ` ��	                 in               ��                 STRING_TO_UINT64                T_ULARGE_INTEGER                             �ѱV  �    ����           SYSTEMTIME_TO_DT           b   	                 �    16#44, 16#54, 16#23(*DT#*),
										16#31, 16#39, 16#37, 16#30(*1970*),
										16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#00      D      T      #      1      9      7      0      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0           ` ��              str             ` ��
              nSeconds         ` ��           	   Index7001                            TIMESTR                   
   TIMESTRUCT   ��                 SYSTEMTIME_TO_DT                                     �ѱV  �    ����           SYSTEMTIME_TO_FILETIME           tmp1                T_ULARGE_INTEGER ` ��	              tmp2                T_ULARGE_INTEGER ` ��
              pastDays         ` ��              i         ` ��              
   systemTime                   
   TIMESTRUCT   ��                 SYSTEMTIME_TO_FILETIME             
   T_FILETIME                             �ѱV  �    ����           SYSTEMTIME_TO_STRING           b   	                 �   16#31, 16#36, 16#30, 16#31(*1601*),		(* year *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* month *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* day *)
										16#2D(*-*), 16#30, 16#30(*00*),				(* hour *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* minute *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* second *)
										16#2E(*.*), 16#30, 16#30, 16#30(*000*),		(* milliseconds *)
										16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` ��           	   Index7001                            in                   
   TIMESTRUCT   ��                 SYSTEMTIME_TO_STRING                                         �ѱV  �    ����        	   TC_CONFIG           fbAdsWrtCtl       e    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_RECONFIG, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )              	   T_AmsPort                                	   ADSWRTCTL ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    SET            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       �ѱV  �   ����           TC_CPUUSAGE        	   fbAdsRead       5    ( PORT:= AMSPORT_R0_RTIME, IDXGRP:= 1, IDXOFFS:= 6 )              	   T_AmsPort                          ADSREAD ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��              USAGE           ��          in %            �ѱV  �   ����        
   TC_RESTART           fbAdsWrtCtl       b    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )              	   T_AmsPort                                	   ADSWRTCTL ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    RESTART            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       �ѱV  �   ����           TC_STOP           fbAdsWrtCtl       a    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_STOP, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )              	   T_AmsPort                                	   ADSWRTCTL ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    STOP            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       �ѱV  �   ����           TC_SYSLATENCY        	   fbAdsRead       8    ( PORT := AMSPORT_R0_RTIME, IDXGRP := 1, IDXOFFS := 2 )              	   T_AmsPort                          ADSREAD ` ��           	   fbTrigger                 R_TRIG ` ��              state         ` ��              tmpData   	                      ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��              ACTUAL           ��           Actual latency in �s    MAXIMUM           ��           Maximum latency in �s             �ѱV  �   ����           TIME_TO_OTSTRUCT           tmpMilli         ` ��                 TIN           ��                 TIME_TO_OTSTRUCT                    OTSTRUCT                             �ѱV  �    ����           UDINT_TO_LREALEX               in           ��                 UDINT_TO_LREALEX                                                  �ѱV  �    ����           UINT32X32TO64           Tmp1         ` ��	              Tmp2         ` ��
              Tmp3         ` ��              Tmp4         ` ��              DW1         ` ��              DW2         ` ��              DW3         ` ��              DW4         ` ��                 ui32a           ��              ui32b           ��                 UInt32x32To64                T_ULARGE_INTEGER                             �ѱV  �    ����           UINT64_TO_LREAL               in                T_ULARGE_INTEGER   ��                 UINT64_TO_LREAL                                                  �ѱV  �    ����           UINT64_TO_STRING        	   remainder                T_ULARGE_INTEGER ` ��              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER ` ��	                 in                T_ULARGE_INTEGER   ��                 UINT64_TO_STRING                                         �ѱV  �    ����           UINT64ADD64           bOV          ` ��	                 ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��                 UInt64Add64                T_ULARGE_INTEGER                             �ѱV  �    ����           UINT64ADD64EX               augend                T_ULARGE_INTEGER   ��              addend                T_ULARGE_INTEGER   ��                 UInt64Add64Ex                T_ULARGE_INTEGER                       bOV            ��       3    TRUE => arithmetic overflow, FALSE => no overflow         �ѱV  �    ����        	   UINT64AND               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��              	   UInt64And                T_ULARGE_INTEGER                             �ѱV  �    ����           UINT64CMP64               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��	                 UInt64Cmp64                                     �ѱV  �    ����           UINT64DIV16EX        	   pDividend    	                            ` ��              pResult    	                            ` ��              rest         ` ��                 dividend                T_ULARGE_INTEGER   ��              divisor           ��                 UInt64Div16Ex                T_ULARGE_INTEGER                    	   remainder                 T_ULARGE_INTEGER  ��                   �ѱV  �    ����           UINT64DIV64        	   remainder                T_ULARGE_INTEGER ` ��	                 dividend                T_ULARGE_INTEGER   ��              divisor                T_ULARGE_INTEGER   ��                 UInt64Div64                T_ULARGE_INTEGER                             �ѱV  �    ����           UINT64DIV64EX           msBit       /    ( dwHighPart := 16#80000000, 	dwLowPart := 0 )            �   T_ULARGE_INTEGER ` ��              bitShift         ` ��              cmp         ` ��              in   	                      T_ULARGE_INTEGER         ` ��              out   	                      T_ULARGE_INTEGER         ` ��           
   cbReturned         ` ��           	   Index7001                            dividend                T_ULARGE_INTEGER   ��              divisor                T_ULARGE_INTEGER   ��                 UInt64Div64Ex                T_ULARGE_INTEGER                    	   remainder                 T_ULARGE_INTEGER  ��                   �ѱV  �    ����           UINT64ISZERO               ui64                T_ULARGE_INTEGER   ��                 UInt64isZero                                      �ѱV  �    ����           UINT64LIMIT               ui64min                T_ULARGE_INTEGER   ��              ui64in                T_ULARGE_INTEGER   ��              ui64max                T_ULARGE_INTEGER   ��                 UInt64Limit                T_ULARGE_INTEGER                             �ѱV  �    ����        	   UINT64MAX               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��              	   UInt64Max                T_ULARGE_INTEGER                             �ѱV  �    ����        	   UINT64MIN               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��              	   UInt64Min                T_ULARGE_INTEGER                             �ѱV  �    ����           UINT64MOD64               dividend                T_ULARGE_INTEGER   ��              divisor                T_ULARGE_INTEGER   ��                 UInt64Mod64                T_ULARGE_INTEGER                             �ѱV  �    ����           UINT64MUL64           bOV          ` ��	                 multiplicand                T_ULARGE_INTEGER   ��           
   multiplier                T_ULARGE_INTEGER   ��                 UInt64Mul64                T_ULARGE_INTEGER                             �ѱV  �    ����           UINT64MUL64EX           bCarry          ` ��           	   bSumCarry          ` ��              n         ` ��              m         ` ��                 multiplicand                T_ULARGE_INTEGER   ��           
   multiplier                T_ULARGE_INTEGER   ��                 UInt64Mul64Ex                T_ULARGE_INTEGER                       bOV            ��       3    TRUE => Arithmetic overflow, FALSE => no overflow         �ѱV  �    ����        	   UINT64NOT               ui64                T_ULARGE_INTEGER   ��              	   UInt64Not                T_ULARGE_INTEGER                             �ѱV  �    ����           UINT64OR               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��                 UInt64Or                T_ULARGE_INTEGER                             �ѱV  �    ����        	   UINT64ROL           bMSB          ` ��	                 ui64                T_ULARGE_INTEGER   ��              n           ��              	   UInt64Rol                T_ULARGE_INTEGER                             �ѱV  �    ����        	   UINT64ROR           bLSB          ` ��	                 ui64                T_ULARGE_INTEGER   ��              n           ��              	   UInt64Ror                T_ULARGE_INTEGER                             �ѱV  �    ����        	   UINT64SHL               ui64                T_ULARGE_INTEGER   ��              n           ��              	   UInt64Shl                T_ULARGE_INTEGER                             �ѱV  �    ����        	   UINT64SHR               ui64                T_ULARGE_INTEGER   ��              n           ��              	   UInt64Shr                T_ULARGE_INTEGER                             �ѱV  �    ����           UINT64SUB64               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��                 UInt64Sub64                T_ULARGE_INTEGER                             �ѱV  �    ����        	   UINT64XOR               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��              	   UInt64Xor                T_ULARGE_INTEGER                             �ѱV  �    ����           UINT_TO_LREALEX               in           ��                 UINT_TO_LREALEX                                                  �ѱV  �    ����           ULARGE_INTEGER            
   dwHighPart           ��           	   dwLowPart           ��                 ULARGE_INTEGER                T_ULARGE_INTEGER                             �ѱV  �    ����           ULARGE_TO_LARGE               in                T_ULARGE_INTEGER   ��                 ULARGE_TO_LARGE                T_LARGE_INTEGER                             �ѱV  �    ����           USINT_TO_LREALEX               in           ��                 USINT_TO_LREALEX                                                  �ѱV  �    ����           WORD_TO_BINSTR           bits   	                          ��       6    Array of ASCII characters (inclusive null delimiter)    iSig            ��           Number of significant bits    iPad            ��           Number of padding zeros    i            ��           	   Index7001                            in           ��           WORD input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       WORD_TO_BINSTR               T_MaxString                             �ѱV  �    ����           WORD_TO_DECSTR           dec   	                          ��       6    Array of ASCII characters (inclusive null delimiter)    iSig            ��           Number of significant decades    iPad            ��           Number of padding zeros    i            ��              digit            ��           	   Index7001                            in           ��           WORD input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       WORD_TO_DECSTR               T_MaxString                             �ѱV  �    ����           WORD_TO_FIX16               in           ��           16 bit fixed point number    n                           ��           number of fractional bits       WORD_TO_FIX16                 T_FIX16                             �ѱV  �    ����           WORD_TO_HEXSTR           hex   	                          ��       6    array of ASCII characters (inclusive null delimiter)    iSig            ��           number of significant nibbles    iPad            ��           number of padding zeros    i            ��           	   Index7001                            in           ��           WORD input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.    bLoCase            ��	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       WORD_TO_HEXSTR               T_MaxString                             �ѱV  �    ����           WORD_TO_LREALEX               in           ��                 WORD_TO_LREALEX                                                  �ѱV  �    ����           WORD_TO_OCTSTR           oct   	                          ��       6    Array of ASCII characters (inclusive null delimiter)    iSig            ��           Number of significant nibbles    iPad            ��           Number of padding zeros    i            ��           	   Index7001                            in           ��           WORD input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       WORD_TO_OCTSTR               T_MaxString                             �ѱV  �    ����           WRITEPERSISTENTDATA           fbAdsWrtCtl       H    ( ADSSTATE := ADSSTATE_SAVECFG, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` ��                 NETID            
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��       l    Contains the ADS port number of the PLC run-time system whose persistent data is to be stored (801, 811...)   START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��
              ERR            ��              ERRID           ��                       �ѱV  �   ����    q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         ��66  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             ��66  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             ��66  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             ��66  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         ��66  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     ��66  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         ��66  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         ��66  �   ����           LEN               STR               ��                 LEN                                     ��66  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         ��66  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         ��66  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         ��66  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       ��66  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       ��66  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       ��66  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             ��66  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             ��66  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             ��66  �   ����    R    @                                                                                          COUNTERS           Trigger_bathroom_water_warm                 F_TRIG    !               Trigger_bathroom_water_cold                 F_TRIG    !               Trigger_kitchen_water_warm                 F_TRIG    !               Trigger_kitchen_water_cold                 F_TRIG    !                                z}]  @    ����           DOOR           Timer1                    TOF    2              tTimerValue            2              Period_light    <       2       7    ����� ������ ����������� �� ������� ��������, �������                     z}]  @    ����           F_CRC16           Cnt            s           ������� �����       pData                 s           ��������� �� ���� ������    Size           s           ������ �����  ������       F_CRC16                                     z}]  @    ����           FB_GET_HIST_MERC200        
   SendBuffer   	                         _              ReceiveBuffer   	                -   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0                                                                                                                                                                        _              Clear               ClearComBuffer    _              state            _              tmcheck                    TON    _              crctest            _              T1_dword            _              T2_dword            _              T3_dword            _              T4_dword            _              CRC_calc            _              CRC_get           _                     E_T1            _              E_T2            _              E_T3            _	              E_T4            _
              done            _                       ��}]  @    ����           FB_GET_RUN_MERC200        
   SendBuffer   	                         `              ReceiveBuffer   	                         `              Clear               ClearComBuffer    `              state            `              tmcheck                    TON    `              crctest            `              Uv_word            `              Ia_word            `              Pw_dword            `              CRC_calc            `              CRC_get           `                     Uv            `              Ia            `              Pw            `	              done            `
                       8}]  @    ����           FB_MQTT_CONTROLLER_V10           iState            �              fbSocketConnect                            FB_SocketConnect    �              fbSocketClose        
                FB_SocketClose    �              fbMqttTelegramConnect                               FB_MqttTelegram_Connect_V10    �               fbMqttTelegramPingReq        	               FB_MqttTelegram_PingReq_V10    �!           
   fbMqttSend        
                FB_Mqtt_Send_V10    �"              fbMqttReceive                                 FB_Mqtt_Receive_V10    �#           	   C_STARTUP           �&           	   C_CONNECT    d      �'              C_CONNECT_WAIT    n      �(              C_CLOSE    �      �)              C_CLOSE_WAIT    �      �*              C_IDLE    �     �+                 bActive            �              sMqttClientId               �              sMqttUserId               �              sMqttPassword               �              sMqttBrokerIP               �              nMqttBrokerPort    [     �                 bBusy            �                 stMqttSettings                                     ST_MqttSettings  �                   z}]  @    ����           FB_MQTT_DECODELENGTH_V10           index            �              diMultiplier            �              dwValue            �                 stMqttTelegram                ST_MqttTelegram   �                 dwLength           �
              bAmount           �                       z}]  @    ����           FB_MQTT_ENCODELENGTH_V10           dwWorkLength            �              dwCopyLength            �                 dwLength           �                 bLength1           �
              bLength2           �              bLength3           �              bLength4           �              bAmount           �                       z}]  @    ����           FB_MQTT_PUBLISH_V10           bFirstPublishDone             �              bMustPublish             �           
   sLastValue                �              iState            �              iLengthTopic            �              iLengthValue            �              wTopicLength            �              stMqttTelegram                ST_MqttTelegram    �              fbMqttEncodeLength                      FB_Mqtt_EncodeLength_V10    �              bLength1            �              bLength2            �              bLength3            �              bLength4            �              bLengthAmount            �           	   C_STARTUP           �"              C_BUILD_TELEGRAM    d      �#              C_SEND_WAIT    n      �$              C_IDLE    �     �%                 sTopic               �              sValue               �              bRetain           �	                 bBusy            �                 stMqttSettings                                     ST_MqttSettings  �                   z}]  @    ����           FB_MQTT_RECEIVE_V10           fbSocketReceive                           FB_SocketReceive    �              fbMqttDecodeLength                    FB_Mqtt_DecodeLength_V10    �              stReceiveBuffer                ST_MqttTelegram    �              iState            �              iLengthPosition            �              index            �              dwDataLength            �              wTopicLength            �              dwValueLength            �           	   C_STARTUP           �              C_RECEIVE_HEADER    d      �              C_RECEIVE_HEADER_WAIT    n      �              C_RECEIVE_LENGTH    x      �              C_RECEIVE_LENGTH_WAIT    �      �              C_RECEIVE_DATA    �      �              C_RECEIVE_DATA_WAIT    �      �              C_IDLE    �     �                      bBusy            �                 stMqttSettings                                     ST_MqttSettings  �
                   z}]  @    ����           FB_MQTT_SEND_V10           fbSocketSend                          FB_SocketSend    �              tPingReq            �              iState            �              stSendTelegram                ST_MqttTelegram    �           	   C_STARTUP           �              C_SEND    d      �              C_SEND_WAIT    n      �              C_IDLE    �     �                     bBusy            �                 stMqttSettings                                     ST_MqttSettings  �
                   z}]  @    ����           FB_MQTT_SUBSCRIBE_V10           iState            �              bSubscribeSent             �              bSubAckReceived             �              iTopicLength            �              wTopicLength            �              stMqttTelegram                ST_MqttTelegram    �              fbMqttEncodeLength                      FB_Mqtt_EncodeLength_V10    �              bLength1            �              bLength2            �              bLength3            �              bLength4            �              bLengthAmount            �              wPackageIdentifier            �               wTelegramPackageIdentifier            �!           	   C_STARTUP           �$              C_BUILD_TELEGRAM    d      �%              C_SEND_WAIT    n      �&              C_CHECK_TELEGRAM    �      �'              C_IDLE    �     �(                 sTopic               �              bAccept            �       7    When false, subscribe but do not set bNewValue output       sValue               �           	   bNewValue            �              bBusy            �                 stMqttSettings                                     ST_MqttSettings  �                   z}]  @    ����           FB_MQTTTELEGRAM_CONNECT_V10           iState            �
              idLength            �              iuLength            �              ipLength            �              ipos            �              stMqttTelegram                ST_MqttTelegram    �              fbMqttEncodeLength                      FB_Mqtt_EncodeLength_V10    �              bLength1            �              bLength2            �              bLength3            �              bLength4            �              bLengthAmount            �           	   C_STARTUP           �              C_BUILD_CONNECT    d      �              C_SEND_WAIT    n      �              C_IDLE    �     �                         stMqttSettings                                     ST_MqttSettings  �                   z}]  @    ����           FB_MQTTTELEGRAM_PINGREQ_V10           iState            �
           	   bMustSend             �              bPingReqSent             �              stMqttTelegram                ST_MqttTelegram    �           	   C_STARTUP           �              C_BUILD_PING    d      �              C_SEND_WAIT    n      �              C_IDLE    �     �                         stMqttSettings                                     ST_MqttSettings  �                   z}]  @    ����           FC_MQTT_CLEARTELEGRAM_V10                   FC_Mqtt_ClearTelegram_V10                                stMqttTelegram                 ST_MqttTelegram  �              stMqttSettings                                     ST_MqttSettings  �                   z}]  @    ����           FC_MQTT_COPYTELEGRAM_V10                   FC_Mqtt_CopyTelegram_V10                                stMqttSrcTelegram                 ST_MqttTelegram  �              stMqttDestTelegram                 ST_MqttTelegram  �              stMqttSettings                                     ST_MqttSettings  �	                   z}]  @    ����           FLUID                             z}]  @    ����        
   FLUID_BATH           BUTTON3                 R_TRIG    �       1    ������ �3 - ������������ ������ ���� � ��������                     z}]  @    ����           FLUID_KITCHEN           BUTTON2                 R_TRIG    �       /    ������ �2 - ������������ ������ ���� � �����                      z}]  @    ����        
   LIGHT_HALL           Timer1                    TOF    6              tTimerValue            6              Period_light    <       6       7    ����� ������ ����������� �� ������� ��������, �������                     z}]  @    ����           MAIN           INITVAR             #               SW_LIGHT                  SM_BUTT    #            ���/����  ����� � ��������    SW_VENT                  SM_BUTT    #            ���/���� ���������� 	   SW_REZERV                  SM_BUTT    #                                z}]  @    ����           MQTT           FB_Mqtt_Controller                                   FB_Mqtt_Controller_V10    9              stMqttSettings                                    ST_MqttSettings    9              bMqttControllerBusy             9              FB_Mqtt_Publish1                                     FB_Mqtt_Publish_V10    9              FB_Mqtt_Publish2                                     FB_Mqtt_Publish_V10    9              FB_Mqtt_Publish3                                     FB_Mqtt_Publish_V10    9              FB_Mqtt_Publish4                                     FB_Mqtt_Publish_V10    9	              bPublishBusy1             9
              bPublishBusy2             9              bPublishBusy3             9              bPublishBusy4             9                               z}]  @    ����        	   RS485READ           timeoutvalue    �      \       9    timeout while waiting for an answer of the modbus slave    delta_sensor_hum           \       :   ������������� ��������� �������, % ������������� ���������   Period_steam    <       \       9    ������� ��������� ������� ��������  �����������, �������   Period_modbus    
       \       )    ������� ������ ��������� modbus, �������   r_Target_hum             \	           
   r_room_hum             \
              i_Steam_level            \              MBdata   	                         \       J    The size of this array can be adapted to the modbus slaves register area 	   FtrigBusy                 F_TRIG    \              state            \              busy             \              LastErrorstate            \              LastModbusError        
                ST_ModbusErrorDiagnostics    \              CounterError            \              CounterSuccess            \              Timer1                    TON    \              Timer1Q             \              Hum_old             \              Steam_response            \              Timer2                    TON    \              Timer2Q             \              tTimerValue            \              tTimerValue_modbus            \              get_run_Merc200_done             \               get_hist_Merc200_done             \!              get_run_Merc200                             FB_GET_RUN_MERC200    \"              get_hist_Merc200                               FB_GET_HIST_MERC200    \#              tmCheck                    TON    \%                               �	�]  @   ����           SENSORS                             z}]  @    ����           SM_BUTT           MEM             %        5    ���������� ���������� ��� �������� ��������� ������       IN            %           ���� �� ������� �� ������    IN1            %           ����� �� ������� ���� ������      Q            %           ��������� ������            z}]  @    ����           VENTCONTROL           Temperature_max_to_heat      �A   17    7       ^    ������������ ����������� ��������� ������� ��� ������� ��������� �������� ������������������    Temperature_min_for_steam      �A   17    7       Q    ����������� ����������� ������� � ���� ������ ��� ���������� ������ ����������� 
   gisterezis    ��L>   0.2    7       F    ����������  ���������� ��������� ������������������, ������� �������                     P�]  @    ����        	   VENTPOWER     	   
   Vent_power      �A   30    '        S    ����� ������������ ��� ����� ��������� �������� ���������� ����� - �������� 30%     Vent_power_out           '        R    ����� ������������ ��� ����� ��������� �������� ��������� ����� - �������� 30%     CO2_old      �C   410    '        d    ����� ������������ ��� ����� ������������� ��������� �������� CO2 = 410 (��������� ������ ������)    Period_vent_switch    <       '        S    ������ ������������ ������� ������ ����������� �� ���������� �������� CO2, �������   Timer1                    TON    '               Timer1Q             '               count            ' 	              CO2_max             ' 
              tTimerValue            '                                u�]  @    ����            
 � * ����(   #      �  %   ����   !   "   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  9  �  6     �����  �  7  8  `  2  s  '   _  \  ( ��     K   ��    K   ��    K   ��    K   ��                ��        +     ��localhost   �pLv   ��        �����ج    �P� ����  �   	   ��    �� ��    ����@ �� *^�w           S��@                         .�uu�  � >]�w��@ >]�w            ��<�       ��@          ��@  � D��   �� D�� ��d���� � �-�     ,   ,                                                        K        @   z}]�� /*BECKCONFI3*/
        !'�n @   @   �   �     3               2   Standard            	�	�]     �               VAR_GLOBAL
END_VAR
                                                                                  "   ,     ~�             Standard2         MAIN����               �	�]                 $����, � �  �                                  Standard 7�\	7�\                                       	b�]     TI :t#ms           VAR_CONFIG
END_VAR
                                                                                   '              , 4 4 �w           Global_Variables z}]	z}]        �            �  
VAR_GLOBAL

	Clear						: ClearComBuffer;
	MB							: ModbusRtuMaster_KL6x22B;
	TxBufferCom1				: ComBuffer;
	RxBufferCom1				: ComBuffer;
	SerialLineControlCom1			: SerialLineControl;
	ReceiveDataCom1			: ReceiveData;
	SendDataCom1				: SendData;

	iobroker	: iobroker_Struct;
	mqtt_set:			ST_MqttSettings;


	HW_trans_power						AT	%QX0.1:BOOL:=FALSE; (*������ ���� �� ������������� � ���� ���-� *)
	HW_vent_in_heat						AT	%QX0.2:BOOL:=FALSE; (* �������� ������� - ��� *)

	HW_vent_in_trans_105_130				AT	%QX0.3:BOOL:=FALSE;  (* ���������� 110 ��� 130 � *)
	HW_vent_in_trans_160_220				AT	%QX0.4:BOOL:=TRUE;  (* ���������� 160 ��� 220 � *)
	HW_vent_in_trans_LO_HI				AT	%QX0.5:BOOL:=FALSE;  (* ���������� 110/130  ��� 160/220 � *)
	HW_steam							AT	%QX0.6:BOOL:=FALSE; (* ���������� ��������� ����������� *)

	HW_vent_out							AT	%QX0.7:BOOL:=FALSE; (* �������� ����������*)
	HW_kitchen_vent_out					AT	%QX1.0:BOOL:=FALSE; (*���������� �������*)
	HW_vent_in_heat_level				AT	%QX1.1:BOOL:=FALSE; (* �������� ������� ������ �����   -5 � ��� *)
	HW_vent_valve						AT	%QX1.2:BOOL:=FALSE; (*������ ��������� ����������"*)

	HW_valve_water_kitchen				AT	%QX1.3:BOOL; (* ���� ��� � ��� �� ����� *)
	HW_valve_water_bathroom				AT	%QX1.4:BOOL; (* ���� ��� � ��� � ������� *)
	HW_LIGHT_ALL						AT	%QX1.5:BOOL; (*���� � �������� *)
	HW_LIGHT_hall						AT	%QX1.6:BOOL:=FALSE; (*������/��������� ���� � �������� *)


	HW_sensor_fld_kitchen				AT %IX0.0:BOOL; (* ������ �������� �� �����*)
	HW_sensor_fld_tlt						AT %IX0.1:BOOL; (* ������ �������� � �������*)
	HW_sensor_fld_post					AT %IX0.2:BOOL; (* ������ �������� � �����������*)
	HW_sensor_fld_van					AT %IX0.3:BOOL; (* ������ �������� � ������*)
	HW_impulse_kitchen_water_warm		AT %IX0.5:BOOL; (* ������� ������� ���� �� �����*)
	HW_impulse_kitchen_water_cold		AT %IX0.4:BOOL; (* ������� �������� ���� �� �����*)
	HW_vent_reay_pressure				AT %IX0.6:BOOL; (*���� ��������*)
	HW_kitchen_button_vent_out			AT %IX0.7:BOOL; (* ������ �������� �������*)

	HW_sensor_vent_valve_opened		AT %IX1.0:BOOL;
	HW_sensor_vent_valve_closed			AT %IX1.1:BOOL;
	HW_impulse_bathroom_water_cold		AT %IX1.2:BOOL; (* ������� ������� ���� ������� NAMUR*)
	HW_impulse_bathroom_water_warm		AT %IX1.3:BOOL; (* ������� �������� ���� ������� NAMUR*)
	HW_IN01							AT %IX1.4:BOOL;(*������ ��� � ���� ����� � ��������*)
	HW_IN02							AT %IX1.5:BOOL;(*������ ��� � ���� ������ ���� �� �����*)
	HW_IN03							AT %IX1.6:BOOL;(*������ ��� � ���� ������ ���� �� �����*)
	HW_IN04							AT %IX1.7:BOOL;(*������ ��� � ���� ����������*)
	HW_IN05							AT %IX2.0:BOOL;(*������ ��� � ���� ������*)

	HW_gerkon							AT %IX2.1:BOOL;(*������ �������� ����� - ������*)
	HW_PIR_door						AT %IX2.2:BOOL;(*������ �������� ����� - pir *)
	HW_PIR_hall							AT %IX2.3:BOOL;(*������ �������� ����� - pir *)



	HW_vent_out_level					AT	%QW4:WORD:=7000;(* ���������� ���������� �������� ������������ (0-32767) *)

	HW_temp_kitchen_box					AT %IW32:WORD; (*����������� �� ����� � ������  *)
	HW_temp_vent_in						AT %IW34:WORD; (*����������� ������� ����� �������� *)
	HW_temp_street						AT %IW36:WORD; (*����������� �� ����� *)
	HW_temp_bedroom					AT %IW38:WORD; (*����������� � ������� *)


END_VAR





                                                                                               '           �  , � � �
           Global_Variables_persistent �	�]	�	�]�    , , , ,         M  VAR_GLOBAL PERSISTENT

	(*USER VARIABLES NEED TO BE ATTACHED TO %Q TO ENABLE SAVE IT IN NOVRAM, FOR CX ONLY *)

	Target_hum_mem		AT %Q*:		INT;
	Target_CO2_mem		AT %Q*:		INT;
	Vent_mem			AT %Q*:		BOOL;
	Vent_out_mem		AT %Q*:		BOOL;
	Vent_heat_mem		AT %Q*:		INT;
	Steam_mem			AT %Q*:		BOOL;
	Vent_heat_level_mem	AT %Q*:		BOOL;
	Light_mem			AT %Q*:		BOOL; (*���� � ��������*)

	Kitchen_stat_cold_water_mem		AT %Q*:		DINT;
	Kitchen_stat_warm_water_mem		AT %Q*:		DINT;
	Bathroom_stat_cold_water_mem		AT %Q*:		DINT;
	Bathroom_stat_warm_water_mem	AT %Q*:		DINT;


END_VAR


                                                                                               '           (   , � � �           TwinCAT_Configurationz}]	�	�](                       (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.Target_hum_mem AT %QB36 : INT;
	.Target_CO2_mem AT %QB38 : INT;
	.Vent_mem AT %QX60.0 : BOOL;
	.Vent_out_mem AT %QX60.1 : BOOL;
	.Vent_heat_mem AT %QB40 : INT;
	.Steam_mem AT %QX60.2 : BOOL;
	.Vent_heat_level_mem AT %QX60.3 : BOOL;
	.Light_mem AT %QX60.4 : BOOL;
	.Kitchen_stat_cold_water_mem AT %QB44 : DINT;
	.Kitchen_stat_warm_water_mem AT %QB48 : DINT;
	.Bathroom_stat_cold_water_mem AT %QB52 : DINT;
	.Bathroom_stat_warm_water_mem AT %QB56 : DINT;
END_VAR                                                                                               '           �  ,   ��           Variable_Configuration z}]	z}]�       �            g   
VAR_CONFIG
	MB.InData AT %IB12 : MB_KL6inData22B;
	MB.OutData AT %QB12 : MB_KL6outData22B;
END_VAR                                                                                                 �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               4     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   �  , 4 4 �w           iobroker_Struct ��]	��]      �                TYPE iobroker_Struct  :
STRUCT
	Vent_status				: 	INT;
	Valve_status				: 	INT;
	Kitchen_room_temp 		:	REAL;
	Kitchen_room_hum 		:	REAL;
	Kitchen_room_CO2		:	REAL;

	Child_small_room_temp 	:	REAL;
	Child_small_room_hum 	:	REAL;
	Child_small_room_CO2 	:	REAL;

	Child_big_room_temp	 	:	REAL;
	Child_big_room_hum	 	:	REAL;
	Child_big_room_CO2	 	:	REAL;

	Bed_room_temp	 		:	REAL;
	Bed_room_temp2	 		:	REAL;
	Bed_room_hum	 		:	REAL;
	Bed_room_hum2	 		:	REAL;
	Bed_room_CO2			:	REAL;

	Kitchen_room_tempout		:	REAL;
	Kitchen_room_tempout_2	:	REAL;

	FLD_valve_kitchen 		:	BOOL; (* ���������  ����� ���� �� �����*)
	FLD_valve_bathroom 		:	BOOL; (*���������  ����� ���� � �������*)
	FLD_PRC				:	BOOL; (*������ � �����������*)
	FLD_TLT				:	BOOL; (*������ � �������*)
	FLD_BATH				:	BOOL;(*������ �  ������*)
	FLD_KUH				:	BOOL;(*������ ��  �����*)
	FLD_ALRM_KITCHEN 		:	BOOL; (*������� ���������� �� �����*)
	FLD_ALRM_BATH 		:	BOOL; (*������� ���������� � �������*)


	Kitchen_stat_cold_water	:	DINT;
	Kitchen_stat_warm_water	:	DINT;
	Bathroom_stat_cold_water	:	DINT;
	Bathroom_stat_warm_water	:	DINT;

	Steam_status				:	INT;
	Steam_real				:	INT;

	Vent_input_level			:	INT;  (*  0-220 V  *)
	Vent_output_level			:	INT; (*0-100%*)
	Soft_kitchen_button_vent_out:	BOOL; (*�����������  ������ �������� �������*)

	Temp_vent_in			:	REAL;
	Vent_pressure_relay		:	BOOL;

	PT_temp_bedroom		:	REAL;
	Vent_valve_status			:	INT;


	(* SETTINGS *)
	Rezerv					:	BOOL;
	Steam_level				:	INT;
	Security_status			:	INT;
	Target_hum				:	INT;
	Target_CO2				:	INT;
	Vent						:	BOOL;
	Vent_out					:	BOOL;
	Vent_heat				:	INT;
	Steam					:	BOOL;
	Vent_heat_level			:	BOOL;
	Light					:	BOOL; (*���� � ��������*)
	Light_hall				:	BOOL; (*���� � ��������*)
	Gerkon					:	BOOL; (*������ �������� ������� ����� (������)*)
	PIR_door				:	BOOL;(*������ �������� ������� ����� PIR-�����*)

	Uv						:	REAL;
	Ia						:	REAL;
	Pw						:	REAL;
	E_T1					:	REAL;
	E_T2					:	REAL;
	E_T4					:	REAL;

END_STRUCT
END_TYPE             �  , 4 4 �f           ST_MqttReceivedPublishTelegram z}]	z}]       "           �   (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '' *)
(* @OBJECTFLAGS := '0, 8' *)
TYPE ST_MqttReceivedPublishTelegram :
STRUCT
	sTopic		: STRING[255];
	sValue		: STRING[255];
	bHasData	: BOOL;
END_STRUCT
END_TYPE
(* @END_DECLARATION := '0' *)             �  , N N ��           ST_MqttSettings z}]	z}]       "           �  (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '' *)
(* @OBJECTFLAGS := '0, 8' *)
TYPE ST_MqttSettings :
STRUCT
	(* informations *)
(*	sMqttClientId	: STRING[23]:='plc';
	sMqttUserId	: STRING[25]:='mqtt';
	sMqttPassword	: STRING[25]:='mqtt';
	sMqttBrokerIP	: STRING[15]:='192.168.3.200';
	nMqttBrokerPort	: UDINT := 1883;

	(* state *)
	bSocketConnection	: BOOL := FALSE;
	bConnected			: BOOL := FALSE;
	bConnectPackageSent	: BOOL := FALSE;
	bDisconnect			: BOOL := FALSE;
	bError				: BOOL := FALSE;
	bValidConnection	: BOOL := FALSE;
	bActive				: BOOL := FALSE;
	wPackageIdentifier	: WORD := 1;
	hSocket				: T_HSOCKET;
	tonSendPingReq		: TON;

	(* send *)
	stMqttSendTelegram			: ST_MqttTelegram;
	stMqttLastSendTelegram		: ST_MqttTelegram;

	(* receive *)
	stMqttReceivedTelegram			: ST_MqttTelegram;
	stMqttLastReceivedTelegram		: ST_MqttTelegram;
	stMqttReceivedPublishTelegram	: ST_MqttReceivedPublishTelegram;

	(* settings internal *)
	iTelegramSize	: INT := 544;
	usKeepAliveTime	: USINT := 60; (* seconds *)

*)



	(* informations *)
	sMqttClientId	: STRING[23];
	sMqttUserId	: STRING[25];
	sMqttPassword	: STRING[25];
	sMqttBrokerIP	: STRING[15];
	nMqttBrokerPort	: UDINT := 1883;

	(* state *)
	bSocketConnection	: BOOL := FALSE;
	bConnected			: BOOL := FALSE;
	bConnectPackageSent	: BOOL := FALSE;
	bDisconnect			: BOOL := FALSE;
	bError				: BOOL := FALSE;
	bValidConnection	: BOOL := FALSE;
	bActive				: BOOL := FALSE;
	wPackageIdentifier	: WORD := 1;
	hSocket				: T_HSOCKET;
	tonSendPingReq		: TON;

	(* send *)
	stMqttSendTelegram			: ST_MqttTelegram;
	stMqttLastSendTelegram		: ST_MqttTelegram;

	(* receive *)
	stMqttReceivedTelegram			: ST_MqttTelegram;
	stMqttLastReceivedTelegram		: ST_MqttTelegram;
	stMqttReceivedPublishTelegram	: ST_MqttReceivedPublishTelegram;

	(* settings internal *)
	iTelegramSize	: INT := 544;
	usKeepAliveTime	: USINT := 60; (* seconds *)










END_STRUCT
END_TYPE
(* @END_DECLARATION := '0' *)             �  , h h ��           ST_MqttTelegram z}]	z}]       "           �   (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '' *)
(* @OBJECTFLAGS := '0, 8' *)
TYPE ST_MqttTelegram :
STRUCT
	arMqttData 	: ARRAY[0..544] OF BYTE;
	nDataLength	: UDINT := 0;
END_STRUCT
END_TYPE
(* @END_DECLARATION := '0' *              !   , N N �8           Counters z}]	z}]      S�            �   PROGRAM Counters
VAR

	Trigger_bathroom_water_warm: F_TRIG;
	Trigger_bathroom_water_cold: F_TRIG;
	Trigger_kitchen_water_warm: F_TRIG;
	Trigger_kitchen_water_cold: F_TRIG;

END_VAR   Trigger_bathroom_water_warm(CLK :=HW_impulse_bathroom_water_warm);
Trigger_bathroom_water_cold(CLK :=HW_impulse_bathroom_water_cold);
Trigger_kitchen_water_warm(CLK :=HW_impulse_kitchen_water_warm);
Trigger_kitchen_water_cold(CLK :=HW_impulse_kitchen_water_cold);

IF (Trigger_bathroom_water_warm.Q) THEN
	iobroker.Bathroom_stat_warm_water:=iobroker.Bathroom_stat_warm_water+1;
	Bathroom_stat_warm_water_mem:=iobroker.Bathroom_stat_warm_water;
END_IF

IF (Trigger_bathroom_water_cold.Q) THEN
	iobroker.Bathroom_stat_cold_water:=iobroker.Bathroom_stat_cold_water+1;
	Bathroom_stat_cold_water_mem:=iobroker.Bathroom_stat_cold_water;
END_IF

IF (Trigger_kitchen_water_warm.Q) THEN
	iobroker.Kitchen_stat_warm_water:=iobroker.Kitchen_stat_warm_water+1;
	Kitchen_stat_warm_water_mem:=iobroker.Kitchen_stat_warm_water;
END_IF

IF (Trigger_kitchen_water_cold.Q) THEN
	iobroker.Kitchen_stat_cold_water:=iobroker.Kitchen_stat_cold_water+1;
	Kitchen_stat_cold_water_mem:=iobroker.Kitchen_stat_cold_water;
END_IF               2  , N N ,�           Doorz}]	z}]       $ '          �   PROGRAM Door
VAR
	Timer1			: TOF;
	tTimerValue		: TIME;
	Period_light		: INT := 60;		(* ����� ������ ����������� �� ������� ��������, ������� *)
END_VAR�   tTimerValue := DINT_TO_TIME(Period_light*1000);

IF HW_PIR_HALL THEN
	Timer1(IN:=(NOT HW_gerkon ), PT:=tTimerValue);
	IF  (NOT Timer1.Q AND HW_gerkon) THEN
		(* OUT *)
	END_IF
END_IF

               s  ,   ��           F_CRC16 z}]	z}]      �  6�_��        �   FUNCTION F_CRC16 : WORD
VAR_INPUT
	pData: POINTER TO BYTE;		(* ��������� �� ���� ������ *)
	Size: WORD;						(* ������ �����  ������ *)
END_VAR
VAR
	Cnt: BYTE;							(* ������� ����� *)
END_VAR  F_CRC16 := 16#FFFF;
WHILE Size > 0 DO
	F_CRC16 := F_CRC16 XOR pData^;
	FOR Cnt := 0 TO 7 DO
		IF F_CRC16.0 = 0 THEN
			F_CRC16 := SHR(F_CRC16, 1);
		ELSE
			F_CRC16 := SHR(F_CRC16, 1) XOR 16#A001;
		END_IF
	END_FOR;
	pData := pData + 1;
	Size := Size - 1;
END_WHILE               _  , z           FB_GET_HIST_MERC200 �}]	��}]       ���            FUNCTION_BLOCK FB_GET_HIST_MERC200
VAR_INPUT

END_VAR

VAR_OUTPUT
	E_T1			: REAL;
	E_T2			: REAL;
	E_T3			: REAL;
	E_T4			: REAL;

	done			: BOOL;
END_VAR

VAR
	SendBuffer		: ARRAY[1..7] OF BYTE;
	ReceiveBuffer	: ARRAY[1..23] OF BYTE:=0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
	Clear			: ClearComBuffer;
	state			: INT:= 0;
	tmcheck			: TON;

	crctest			: WORD;
	T1_dword		: DWORD;
	T2_dword		: DWORD;
	T3_dword		: DWORD;
	T4_dword		: DWORD;

	CRC_calc: WORD;
	CRC_get: WORD := 1;

END_VAR
�	  tmcheck();

CASE state OF

0:
	done:=FALSE;
	Clear(Buffer := RxBufferCom1);
	SendBuffer[1] := 16#00;

	SendBuffer[2] := 16#0B; (* Address  dec 740964 =0B 4E 64    *)
	SendBuffer[3] := 16#4E; (* Address *)
	SendBuffer[4] := 16#64; (* Address *)

	SendBuffer[5] := 16#27; (*Command*)

	crctest:=F_CRC16(ADR(SendBuffer), 5);
	MEMCPY(ADR(SendBuffer)+5,ADR(crctest),2);

	SendDataCom1(pSendData:=ADR(SendBuffer),length:=7,TXbuffer:=TXBufferCom1,Busy=>,Error=>);

	tmCheck(in:=FALSE);
	tmCheck(in:=TRUE,pt:=t#2s);
	state:=1;

1: (*�����*)

	ReceiveDataCom1(pPrefix:=,LenPrefix:=,pSuffix:=,LenSuffix:=,pReceiveData:=ADR(ReceiveBuffer),SizeReceiveData:=23,TImeOut:=t#2s,Reset:=,RXbuffer:=RxBufferCom1,DataReceived=>,busy=>,RxTimeout=>,LenReceiveData=>);

	IF ReceiveDataCom1.Error <> 0 THEN
		state:=9;
	END_IF

	IF ReceiveDataCom1.DataReceived THEN
		state:=2;
	ELSIF tmcheck.Q THEN
		 state:=9;
	END_IF;



2:(*�����������*)
	CRC_calc := F_CRC16(ADR(ReceiveBuffer), 21);
	MEMCPY(ADR(CRC_get),ADR(ReceiveBuffer[22]),1);
	MEMCPY(ADR(CRC_get)+1,ADR(ReceiveBuffer[23]),1);


	IF (  ReceiveBuffer[1] = 16#00  AND ReceiveBuffer[2] = 16#0B AND ReceiveBuffer[3] = 16#4E AND ReceiveBuffer[4] = 16#64  AND ReceiveBuffer[5] = 16#27) THEN

		MEMCPY(ADR(T1_dword),ADR(ReceiveBuffer[9]),1);
		MEMCPY(ADR(T1_dword)+1,ADR(ReceiveBuffer[8]),1);
		MEMCPY(ADR(T1_dword)+2,ADR(ReceiveBuffer[7]),1);
		MEMCPY(ADR(T1_dword)+3,ADR(ReceiveBuffer[6]),1);
		E_T1:=0.01*STRING_TO_REAL(DWORD_TO_HEXSTR(T1_dword,1,FALSE));

		MEMCPY(ADR(T2_dword),ADR(ReceiveBuffer[13]),1);
		MEMCPY(ADR(T2_dword)+1,ADR(ReceiveBuffer[12]),1);
		MEMCPY(ADR(T2_dword)+2,ADR(ReceiveBuffer[11]),1);
		MEMCPY(ADR(T2_dword)+3,ADR(ReceiveBuffer[10]),1);
		E_T2:=0.01*STRING_TO_REAL(DWORD_TO_HEXSTR(T2_dword,1,FALSE));

		MEMCPY(ADR(T3_dword),ADR(ReceiveBuffer[17]),1);
		MEMCPY(ADR(T3_dword)+1,ADR(ReceiveBuffer[16]),1);
		MEMCPY(ADR(T3_dword)+2,ADR(ReceiveBuffer[15]),1);
		MEMCPY(ADR(T3_dword)+3,ADR(ReceiveBuffer[14]),1);
		E_T3:=0.01*STRING_TO_REAL(DWORD_TO_HEXSTR(T3_dword,1,FALSE));

		MEMCPY(ADR(T4_dword),ADR(ReceiveBuffer[21]),1);
		MEMCPY(ADR(T4_dword)+1,ADR(ReceiveBuffer[20]),1);
		MEMCPY(ADR(T4_dword)+2,ADR(ReceiveBuffer[19]),1);
		MEMCPY(ADR(T4_dword)+3,ADR(ReceiveBuffer[18]),1);
		E_T4:=0.01*STRING_TO_REAL(DWORD_TO_HEXSTR(T4_dword,1,FALSE));

		state:=10;
	ELSE
		state:=9;
	END_IF

9:
	E_T1:=0;
	E_T2:=0;

	done := TRUE;
	state:=0;
10:
	done := TRUE;
	state:=0;

END_CASE;
               `  , � � ��           FB_GET_RUN_MERC200 ��]	8}]        ���          �  FUNCTION_BLOCK FB_GET_RUN_MERC200
VAR_INPUT

END_VAR

VAR_OUTPUT
	Uv				: REAL;
	Ia				: REAL;
	Pw				: REAL;
	done			: BOOL;
END_VAR

VAR
	SendBuffer		: ARRAY[1..7] OF BYTE;
	ReceiveBuffer	: ARRAY[1..14] OF BYTE;
	Clear			: ClearComBuffer;
	state			: INT:= 0;
	tmcheck			: TON;

	crctest			: WORD;
	Uv_word			: WORD;
	Ia_word			: WORD;
	Pw_dword		: DWORD;

	CRC_calc: WORD;
	CRC_get: WORD := 1;

END_VAR
H  tmcheck();

CASE state OF

0:
	done:=FALSE;
	Clear(Buffer := RxBufferCom1);
	SendBuffer[1] := 16#00;

	SendBuffer[2] := 16#0B; (* Address  dec 740964 = hex 0B 4E 64  *)
	SendBuffer[3] := 16#4E; (* Address *)
	SendBuffer[4] := 16#64; (* Address *)

	SendBuffer[5] := 16#63; (*Command*)
	crctest:=F_CRC16(ADR(SendBuffer), 5);
	MEMCPY(ADR(SendBuffer)+5,ADR(crctest),2);

	SendDataCom1(pSendData:=ADR(SendBuffer),length:=7,TXbuffer:=TXBufferCom1,Busy=>,Error=>);

	tmCheck(in:=FALSE);
	tmCheck(in:=TRUE,pt:=t#2s);
	state:=1;

1: (*�����*)

	ReceiveDataCom1(pPrefix:=,LenPrefix:=,pSuffix:=,LenSuffix:=,pReceiveData:=ADR(ReceiveBuffer),SizeReceiveData:=14,TImeOut:=t#2s,Reset:=,RXbuffer:=RxBufferCom1,DataReceived=>,busy=>,RxTimeout=>,LenReceiveData=>);

	IF ReceiveDataCom1.Error <> 0 THEN
		state:=9;
	END_IF

	IF ReceiveDataCom1.DataReceived THEN
		state:=2;
	ELSIF tmcheck.Q THEN
		 state:=9;
	END_IF;



2:(*�����������*)
	CRC_calc := F_CRC16(ADR(ReceiveBuffer), 12);
	MEMCPY(ADR(CRC_get),ADR(ReceiveBuffer[13]),1);
	MEMCPY(ADR(CRC_get)+1,ADR(ReceiveBuffer[14]),1);


	IF (  ReceiveBuffer[1] = 16#00  AND CRC_calc = CRC_get ) THEN

		MEMCPY(ADR(Uv_word),ADR(ReceiveBuffer[7]),1);
		MEMCPY(ADR(Uv_word)+1,ADR(ReceiveBuffer[6]),1);
(*		Uv:=10*STRING_TO_REAL(BYTE_TO_HEXSTR(ReceiveBuffer[6],1,FALSE))+0.1*STRING_TO_REAL(BYTE_TO_HEXSTR(ReceiveBuffer[7],1,FALSE)); *)
		Uv:=0.1*STRING_TO_REAL(WORD_TO_HEXSTR(Uv_word,1,FALSE));

		MEMCPY(ADR(Ia_word),ADR(ReceiveBuffer[9]),1);
		MEMCPY(ADR(Ia_word)+1,ADR(ReceiveBuffer[8]),1);
(*		Ia:=STRING_TO_REAL(BYTE_TO_HEXSTR(ReceiveBuffer[8],1,FALSE))+0.01*STRING_TO_REAL(BYTE_TO_HEXSTR(ReceiveBuffer[9],1,FALSE)); *)
		Ia:=0.01*STRING_TO_REAL(WORD_TO_HEXSTR(Ia_word,1,FALSE));

		MEMCPY(ADR(Pw_dword),ADR(ReceiveBuffer[12]),1);
		MEMCPY(ADR(Pw_dword)+1,ADR(ReceiveBuffer[11]),1);
		MEMCPY(ADR(Pw_dword)+2,ADR(ReceiveBuffer[10]),1);
		Pw:=STRING_TO_REAL(DWORD_TO_HEXSTR(Pw_dword,1,FALSE));


		state:=10;
	ELSE
		state:=9;
	END_IF

9:
	Uv:=0;
	done := TRUE;
	state:=0;
10:
	done := TRUE;
	state:=0;

END_CASE;
               �  , � � �n           FB_Mqtt_Controller_V10 z}]	z}]        ��B           �  (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '\/_Generic\/Mqtt' *)
(* @OBJECTFLAGS := '0, 8' *)
(* @SYMFILEFLAGS := '2048' *)
FUNCTION_BLOCK FB_Mqtt_Controller_V10
VAR_INPUT
(*	bActive			: BOOL := FALSE;
	sMqttClientId	: STRING[23]:='plc';
	sMqttUserId	: STRING[25] := 'mqtt';
	sMqttPassword	: STRING[25] := 'mqtt';
	sMqttBrokerIP	: STRING[15]:='192.168.3.200';
	nMqttBrokerPort	: UDINT := 1883;
*)
	bActive			: BOOL := FALSE;
	sMqttClientId	: STRING[23];
	sMqttUserId	: STRING[25] := '';
	sMqttPassword	: STRING[25] := '';
	sMqttBrokerIP	: STRING[15];
	nMqttBrokerPort	: UDINT := 1883;
END_VAR
VAR_OUTPUT
	bBusy	: BOOL := FALSE;
END_VAR
VAR_IN_OUT
	stMqttSettings	: ST_MqttSettings;
END_VAR
VAR
	iState			: INT := 0;
	fbSocketConnect	: FB_SocketConnect;
	fbSocketClose	: FB_SocketClose;

	fbMqttTelegramConnect	: FB_MqttTelegram_Connect_V10;
	fbMqttTelegramPingReq	: FB_MqttTelegram_PingReq_V10;
	fbMqttSend				: FB_Mqtt_Send_V10;
	fbMqttReceive			: FB_Mqtt_Receive_V10;
END_VAR
VAR CONSTANT
	C_STARTUP					: INT := 0;
	C_CONNECT					: INT := 100;
	C_CONNECT_WAIT				: INT := 110;
	C_CLOSE						: INT := 200;
	C_CLOSE_WAIT				: INT := 210;
	C_IDLE						: INT := 500;
END_VAR
(* @END_DECLARATION := '0' *)�  (*
 * Connects to mqtt broker
 * Sends connect message
 * Sends ping(back)
 * Sends disconnect
 *)
CASE iState OF
	C_STARTUP:
		stMqttSettings.bConnected			:= FALSE;
		stMqttSettings.bConnectPackageSent	:= FALSE;
		stMqttSettings.bDisconnect			:= FALSE;
		stMqttSettings.bSocketConnection	:= FALSE;
		stMqttSettings.bError				:= FALSE;
		stMqttSettings.bValidConnection		:= FALSE;
		stMqttSettings.wPackageIdentifier	:= 1;
		stMqttSettings.bActive				:= bActive;
		stMqttSettings.hSocket				:= fbSocketConnect.hSocket;
		stMqttSettings.nMqttBrokerPort		:= nMqttBrokerPort;
		stMqttSettings.sMqttBrokerIP		:= sMqttBrokerIP;
		stMqttSettings.sMqttClientId		:= sMqttClientId;
		stMqttSettings.sMqttUserId		:= sMqttUserId;
		stMqttSettings.sMqttPassword		:= sMqttPassword;

		stMqttSettings.stMqttReceivedTelegram.nDataLength := 0;

		bBusy := FALSE;

		CallMqttBlocks();

		IF bActive THEN
			iState := C_CONNECT;
		END_IF;

	(* Start connection *)
	C_CONNECT:
		bBusy := TRUE;

		fbSocketConnect(
			bExecute	:= FALSE
		);

		fbSocketConnect(
			sSrvNetId	:= '',
			sRemoteHost	:= sMqttBrokerIP,
			nRemotePort	:= nMqttBrokerPort,
			bExecute	:= TRUE,
			tTimeout	:= USINT_TO_TIME(stMqttSettings.usKeepAliveTime) + t#10s
		);

		iState := C_CONNECT_WAIT;

	(* Wait till connected *)
	C_CONNECT_WAIT:
		fbSocketConnect(
			bExecute := FALSE
		);

		IF
			NOT fbSocketConnect.bBusy
			AND NOT fbSocketConnect.bError
		THEN
			iState 								:= C_IDLE;
			stMqttSettings.hSocket				:= fbSocketConnect.hSocket;
			stMqttSettings.bSocketConnection	:= TRUE;
		END_IF;

		IF fbSocketConnect.bError THEN
			iState := C_STARTUP;
		END_IF;

		IF NOT stMqttSettings.bActive THEN
			iState := C_STARTUP;
		END_IF;

	(* Close connection *)
	C_CLOSE:
		bBusy := TRUE;

		fbSocketClose(
			bExecute	:= TRUE,
			hSocket		:= stMqttSettings.hSocket
		);

		iState := C_CLOSE_WAIT;

	(* Wait close connection *)
	C_CLOSE_WAIT:
		fbSocketClose(
			bExecute := FALSE
		);

		IF
			NOT fbSocketClose.bBusy
			AND NOT fbSocketClose.bError
		THEN
			iState := C_STARTUP;
		END_IF;

		IF fbSocketClose.bError THEN
			iState := C_STARTUP;
		END_IF;

		IF NOT stMqttSettings.bActive THEN
			iState := C_STARTUP;
		END_IF;

	(* Idle *)
	C_IDLE:
		bBusy 					:= FALSE;
		stMqttSettings.bActive	:= bActive;

		stMqttSettings.bValidConnection :=
			NOT stMqttSettings.bError
			AND NOT stMqttSettings.bDisconnect
			AND stMqttSettings.bConnected
			AND stMqttSettings.bSocketConnection
			AND stMqttSettings.bActive;

		CallMqttBlocks();

		IF
			stMqttSettings.bDisconnect
			OR stMqttSettings.bError
			OR NOT stMqttSettings.bActive
		THEN
			IF
				stMqttSettings.bConnected
				OR stMqttSettings.bSocketConnection
			THEN
				(* TODO : send disconnect *)
				iState := C_CLOSE;
			ELSE
				iState := C_CLOSE;
			END_IF;
		END_IF;

	ELSE
		iState := C_STARTUP;
END_CASE;
(*	END_FUNCTION_BLOCK	*) �  , � � �           CallMqttBlocks z}]  (*ACTION	CallMqttBlocks: *)
fbMqttReceive(
	stMqttSettings := stMqttSettings
);

fbMqttTelegramConnect(
	stMqttSettings := stMqttSettings
);

fbMqttTelegramPingReq(
	stMqttSettings := stMqttSettings
);

fbMqttSend(
	stMqttSettings := stMqttSettings
);

(* END_ACTION *)             �  , 4 4 �f           FB_Mqtt_DecodeLength_V10 z}]	z}]                      �  (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '\/_Generic\/Mqtt\/Intern' *)
(* @OBJECTFLAGS := '0, 8' *)
(* @SYMFILEFLAGS := '2048' *)
FUNCTION_BLOCK FB_Mqtt_DecodeLength_V10
VAR_INPUT
	stMqttTelegram : ST_MqttTelegram;
END_VAR
VAR_OUTPUT
	dwLength	: DWORD;
	bAmount		: BYTE;
END_VAR
VAR
	index			: INT;
	diMultiplier	: DINT;
	dwValue			: DWORD;
END_VAR
(* @END_DECLARATION := '0' *)�  index			:= 0;
diMultiplier	:= 1;
dwValue			:= 0;

REPEAT
	index := index + 1;

	dwValue := dwValue + (stMqttTelegram.arMqttData[index] AND 127) * diMultiplier;
	diMultiplier := diMultiplier * 128;

	IF diMultiplier > 128*128*128 THEN
		dwLength	:= 0;
		bAmount		:= 0;
		RETURN;
	END_IF;
UNTIL stMqttTelegram.arMqttData[index].7 = 0
END_REPEAT;

dwLength	:= dwValue;
bAmount		:= INT_TO_BYTE(index);

(*
multiplier = 1
value = 0

do
	encodedByte = 'next byte from stream'
	value += (encodedByte AND 127) * multiplier
	multiplier *= 128

	if (multiplier > 128*128*128)
		throw Error(Malformed Remaining Length)
while ((encodedByte AND 128) != 0)

*)

(*	END_FUNCTION_BLOCK	*)               �  , N N ��           FB_Mqtt_EncodeLength_V10 z}]	z}]       $ �          �  (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '\/_Generic\/Mqtt\/Intern' *)
(* @OBJECTFLAGS := '0, 8' *)
(* @SYMFILEFLAGS := '2048' *)
FUNCTION_BLOCK FB_Mqtt_EncodeLength_V10
VAR_INPUT
	dwLength	: DWORD;
END_VAR
VAR_OUTPUT
	bLength1	: BYTE := 0;
	bLength2	: BYTE := 0;
	bLength3	: BYTE := 0;
	bLength4	: BYTE := 0;
	bAmount		: BYTE := 0;
END_VAR
VAR
	dwWorkLength	: DWORD;
	dwCopyLength	: DWORD;
END_VAR
(* @END_DECLARATION := '0' *)k  bAmount 		:= 1;
dwCopyLength	:= dwLength;

WHILE dwCopyLength > 0 DO
	dwWorkLength := dwCopyLength MOD 128;
	dwCopyLength := dwCopyLength / 128;

	IF dwCopyLength > 0 THEN
		dwWorkLength := dwWorkLength OR 128;
	END_IF;

	CASE bAmount OF
		1:
			bLength1 := DWORD_TO_BYTE(dwWorkLength);

		2:
			bLength2 := DWORD_TO_BYTE(dwWorkLength);

		3:
			bLength3 := DWORD_TO_BYTE(dwWorkLength);

		4:
			bLength4 := DWORD_TO_BYTE(dwWorkLength);

		ELSE
			;
	END_CASE;

	IF dwCopyLength > 0 THEN
		bAmount := bAmount + 1;
	END_IF;

	IF bAmount > 4 THEN
		(* hmm *)
		RETURN;
	END_IF;
END_WHILE;
(*
do
	encodedByte = X MOD 128
	X = X DIV 128

	// if there are more data to encode, set the top bit of this byte
	if ( X > 0 )
		encodedByte = encodedByte OR 128
	endif

	'output' encodedByte
while ( X > 0 )
*)

(*	END_FUNCTION_BLOCK	*)               �  , � � �T           FB_Mqtt_Publish_V10 z}]	z}]        ��B           �  (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '\/_Generic\/Mqtt' *)
(* @OBJECTFLAGS := '0, 8' *)
(* @SYMFILEFLAGS := '2048' *)
FUNCTION_BLOCK FB_Mqtt_Publish_V10
VAR_INPUT
	sTopic	: STRING[255];
	sValue	: STRING[255];
	bRetain	: BOOL := TRUE;
END_VAR
VAR_OUTPUT
	bBusy	: BOOL := FALSE;
END_VAR
VAR_IN_OUT
	stMqttSettings	: ST_MqttSettings;
END_VAR
VAR
	bFirstPublishDone	: BOOL := FALSE;
	bMustPublish		: BOOL := FALSE;
	sLastValue			: STRING[255];
	iState 				: INT := 0;
	iLengthTopic		: INT := 0;
	iLengthValue		: INT := 0;
	wTopicLength		: WORD;
	stMqttTelegram		: ST_MqttTelegram;
	fbMqttEncodeLength	: FB_Mqtt_EncodeLength_V10;
	bLength1			: BYTE;
	bLength2			: BYTE;
	bLength3			: BYTE;
	bLength4			: BYTE;
	bLengthAmount		: BYTE;
END_VAR
VAR CONSTANT
	C_STARTUP			: INT := 0;
	C_BUILD_TELEGRAM	: INT := 100;
	C_SEND_WAIT			: INT := 110;
	C_IDLE				: INT := 500;
END_VAR
(* @END_DECLARATION := '0' *)�  CASE iState OF
	C_STARTUP:
		bFirstPublishDone	:= FALSE;
		bBusy				:= FALSE;

		IF stMqttSettings.bValidConnection THEN
			iState := C_IDLE;
		END_IF;

	(* build publish telegram *)
	C_BUILD_TELEGRAM:
		bBusy := TRUE;
		iLengthTopic := LEN(sTopic);
		iLengthValue := LEN(sValue);

		FC_Mqtt_ClearTelegram_V10(
			stMqttTelegram	:= stMqttTelegram,
			stMqttSettings	:= stMqttSettings
		);

		wTopicLength := iLengthTopic;
		wTopicLength := HOST_TO_BE16(wTopicLength);

		(* Calculate length *)
		(* 2 byte length topic, x byte length topic, x byte length value *)
		fbMqttEncodeLength(
			dwLength := 2 + iLengthTopic + iLengthValue,
			bLength1 => bLength1,
			bLength2 => bLength2,
			bLength3 => bLength3,
			bLength4 => bLength4,
			bAmount	 => bLengthAmount
		);

		(* MQTT Control Packet type, no DUP, no QoS, Retain *)
		stMqttTelegram.arMqttData[0] := 48;
		IF bRetain THEN
			stMqttTelegram.arMqttData[0].0 := 1;
		END_IF;

		(* Remaining Length *)
		CASE bLengthAmount OF
			1:
				stMqttTelegram.arMqttData[1] := bLength1;

			2:
				stMqttTelegram.arMqttData[1] := bLength1;
				stMqttTelegram.arMqttData[2] := bLength2;

			3:
				stMqttTelegram.arMqttData[1] := bLength1;
				stMqttTelegram.arMqttData[2] := bLength2;
				stMqttTelegram.arMqttData[3] := bLength3;

			4:
				stMqttTelegram.arMqttData[1] := bLength1;
				stMqttTelegram.arMqttData[2] := bLength2;
				stMqttTelegram.arMqttData[3] := bLength3;
				stMqttTelegram.arMqttData[4] := bLength4;

			ELSE
				iState 					:= C_STARTUP;
				stMqttSettings.bError	:= TRUE;
		END_CASE;

		(* Length MSB Topic *)
		stMqttTelegram.arMqttData[1 + bLengthAmount] := WORD_TO_BYTE(wTopicLength);
		(* Length LSB Topic *)
		stMqttTelegram.arMqttData[2 + bLengthAmount] := WORD_TO_BYTE(SHR(wTopicLength, 8));

		(* Add topic *)
		MEMCPY(
			destAddr	:= ADR(stMqttTelegram.arMqttData[3 + bLengthAmount]),
		    srcAddr		:= ADR(sTopic),
			n  			:= iLengthTopic
		);

		(* Add Payload *)
		MEMCPY(
			destAddr	:= ADR(stMqttTelegram.arMqttData[3 + bLengthAmount + iLengthTopic]),
		    srcAddr		:= ADR(sValue),
			n  			:= iLengthValue
		);

		(* 1 byte header, x byte variable length, 2 byte topic lenght, x byte topic, x byte value *)
		stMqttTelegram.nDataLength := 1 + bLengthAmount + 2 + iLengthTopic + iLengthValue;

		iState := C_SEND_WAIT;

	(* send telegram *)
	C_SEND_WAIT:
		IF stMqttSettings.stMqttSendTelegram.nDataLength = 0 THEN
			FC_Mqtt_CopyTelegram_V10(
				stMqttSrcTelegram	:= stMqttTelegram,
				stMqttDestTelegram	:= stMqttSettings.stMqttSendTelegram,
				stMqttSettings		:= stMqttSettings
			);

			iState				:= C_IDLE;
			bFirstPublishDone	:= TRUE;
			sLastValue			:= sValue;
		END_IF;

		IF NOT stMqttSettings.bValidConnection THEN
			iState := C_STARTUP;
		END_IF;

	(* idle *)
	C_IDLE:
		bBusy 			:= FALSE;
		bMustPublish 	:= sLastValue <> sValue;

		IF
			stMqttSettings.bValidConnection
			AND (
				bMustPublish
				OR NOT bFirstPublishDone
			)
		THEN
			iState := C_BUILD_TELEGRAM;
		END_IF;

		IF NOT stMqttSettings.bValidConnection THEN
			iState := C_STARTUP;
		END_IF;

	ELSE
		iState := C_STARTUP;
END_CASE;

(*	END_FUNCTION_BLOCK	*)               �  , h h ��           FB_Mqtt_Receive_V10 z}]	z}]                      �  (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '\/_Generic\/Mqtt\/Intern' *)
(* @OBJECTFLAGS := '0, 8' *)
(* @SYMFILEFLAGS := '2048' *)
FUNCTION_BLOCK FB_Mqtt_Receive_V10
VAR_OUTPUT
	bBusy	: BOOL := FALSE;
END_VAR
VAR_IN_OUT
	stMqttSettings	: ST_MqttSettings;
END_VAR
VAR
	fbSocketReceive		: FB_SocketReceive;
	fbMqttDecodeLength	: FB_Mqtt_DecodeLength_V10;
	stReceiveBuffer		: ST_MqttTelegram;

	iState 			: INT := 0;
	iLengthPosition	: INT := 0;
	index			: INT := 0;
	dwDataLength	: DWORD := 0;
	wTopicLength	: WORD := 0;
	dwValueLength	: DWORD := 0;
END_VAR
VAR CONSTANT
	C_STARTUP				: INT := 0;
	C_RECEIVE_HEADER		: INT := 100;
	C_RECEIVE_HEADER_WAIT	: INT := 110;
	C_RECEIVE_LENGTH		: INT := 120;
	C_RECEIVE_LENGTH_WAIT	: INT := 130;
	C_RECEIVE_DATA			: INT := 200;
	C_RECEIVE_DATA_WAIT		: INT := 210;
	C_IDLE					: INT := 500;
END_VAR

(* @END_DECLARATION := '0' *)^  CASE iState OF
	C_STARTUP:
		bBusy 			:= FALSE;
		iLengthPosition	:= 0;
		index			:= 0;
		dwDataLength	:= 0;
		wTopicLength	:= 0;
		dwValueLength	:= 0;
		ClearReceivedPublishTelegram();

		IF
			NOT stMqttSettings.bDisconnect
			AND NOT stMqttSettings.bError
			AND stMqttSettings.bSocketConnection
		THEN
			iState := C_IDLE;
		END_IF;

	(* start receive header *)
	C_RECEIVE_HEADER:
		bBusy := TRUE;
		ClearReceivedPublishTelegram();

		fbSocketReceive(
			bExecute := FALSE
		);

		fbSocketReceive(
			sSrvNetId	:= '',
			hSocket		:= stMqttSettings.hSocket,
			cbLen		:= 2,
			pDest		:= ADR(stReceiveBuffer.arMqttData),
			bExecute 	:= TRUE
		);

		iState := C_RECEIVE_HEADER_WAIT;

	(* wait for header with length *)
	C_RECEIVE_HEADER_WAIT:
		fbSocketReceive(
			bExecute := FALSE
		);

		IF
			NOT fbSocketReceive.bBusy
			AND NOT fbSocketReceive.bError
			AND fbSocketReceive.nRecBytes = 2
		THEN
			iLengthPosition	:= 0;
			stMqttSettings.stMqttReceivedTelegram.arMqttData[0] := stReceiveBuffer.arMqttData[0];
			stMqttSettings.stMqttReceivedTelegram.arMqttData[1] := stReceiveBuffer.arMqttData[1];

			IF stMqttSettings.stMqttReceivedTelegram.arMqttData[1].7 = 1 THEN
				(* payload longer then 127 byte *)
				iLengthPosition := iLengthPosition + 1;
				iState			:= C_RECEIVE_LENGTH;
			ELSE
				IF stMqttSettings.stMqttReceivedTelegram.arMqttData[1] = 0 THEN
					(* no payload received *)
					stMqttSettings.stMqttReceivedTelegram.nDataLength := 2;

					(* copy last telegram *)
					FC_Mqtt_CopyTelegram_V10(
						stMqttSrcTelegram	:= stMqttSettings.stMqttReceivedTelegram,
						stMqttDestTelegram	:= stMqttSettings.stMqttLastReceivedTelegram,
						stMqttSettings		:= stMqttSettings
					);

					iState	:= C_IDLE;
					bBusy 	:= FALSE;
				ELSE
					iState := C_RECEIVE_DATA;
				END_IF;
			END_IF;
		END_IF;

		IF fbSocketReceive.bError THEN
			iState 					:= C_STARTUP;
			stMqttSettings.bError	:= TRUE;
		END_IF;

		IF fbSocketReceive.nRecBytes = 0 THEN
			iState	:= C_IDLE;
			bBusy	:= FALSE;
		END_IF;

		IF
			NOT stMqttSettings.bActive
			OR NOT stMqttSettings.bSocketConnection
		THEN
			iState := C_STARTUP;
		END_IF;

	(* read next remaining length *)
	C_RECEIVE_LENGTH:
		fbSocketReceive(
			bExecute := FALSE
		);

		fbSocketReceive(
			sSrvNetId	:= '',
			hSocket		:= stMqttSettings.hSocket,
			cbLen		:= 1,
			pDest		:= ADR(stReceiveBuffer.arMqttData),
			bExecute 	:= TRUE
		);

		iState := C_RECEIVE_LENGTH_WAIT;

	(* wait for remaining length *)
	C_RECEIVE_LENGTH_WAIT:
		fbSocketReceive(
			bExecute := FALSE
		);

		IF
			NOT fbSocketReceive.bBusy
			AND NOT fbSocketReceive.bError
			AND fbSocketReceive.nRecBytes = 1
		THEN
			stMqttSettings.stMqttReceivedTelegram.arMqttData[1 + iLengthPosition] := stReceiveBuffer.arMqttData[0];

			IF stMqttSettings.stMqttReceivedTelegram.arMqttData[1 + iLengthPosition].7 = 1 THEN
				(* read next length byte *)
				iLengthPosition := iLengthPosition + 1;
				iState			:= C_RECEIVE_LENGTH;

				(* Not more the 4 length bytes *)
				IF iLengthPosition > 4 THEN
					iState 					:= C_STARTUP;
					stMqttSettings.bError	:= TRUE;
				END_IF;
			ELSE
				iState := C_RECEIVE_DATA;
			END_IF;
		END_IF;

		IF fbSocketReceive.bError THEN
			iState 					:= C_STARTUP;
			stMqttSettings.bError	:= TRUE;
		END_IF;

		IF
			NOT stMqttSettings.bActive
			OR NOT stMqttSettings.bSocketConnection
		THEN
			iState := C_STARTUP;
		END_IF;

	(* receive remaining data *)
	C_RECEIVE_DATA:
		fbMqttDecodeLength(
			stMqttTelegram	:= stMqttSettings.stMqttReceivedTelegram,
			dwLength		=> dwDataLength
		);

		fbSocketReceive(
			bExecute := FALSE
		);

		fbSocketReceive(
			sSrvNetId	:= '',
			hSocket		:= stMqttSettings.hSocket,
			cbLen		:= dwDataLength,
			pDest		:= ADR(stReceiveBuffer.arMqttData),
			bExecute 	:= TRUE
		);

		iState := C_RECEIVE_DATA_WAIT;

	(* receive *)
	C_RECEIVE_DATA_WAIT:
		fbSocketReceive(
			bExecute := FALSE
		);

		IF
			NOT fbSocketReceive.bBusy
			AND NOT fbSocketReceive.bError
			AND fbSocketReceive.nRecBytes > 0
		THEN
			MEMCPY(
				destAddr	:= ADR(stMqttSettings.stMqttReceivedTelegram.arMqttData[2 + iLengthPosition]),
			    srcAddr		:= ADR(stReceiveBuffer.arMqttData),
				n  			:= fbSocketReceive.nRecBytes
			);
			stMqttSettings.stMqttReceivedTelegram.nDataLength := 2 + iLengthPosition + fbSocketReceive.nRecBytes;

			(* copy last telegram *)
			FC_Mqtt_CopyTelegram_V10(
				stMqttSrcTelegram	:= stMqttSettings.stMqttReceivedTelegram,
				stMqttDestTelegram	:= stMqttSettings.stMqttLastReceivedTelegram,
				stMqttSettings		:= stMqttSettings
			);

			(* check for publish *)
			IF (stMqttSettings.stMqttReceivedTelegram.arMqttData[0] AND 48) = 48 THEN
				ClearReceivedPublishTelegram();

				(* Length MSB/LSB Topic *)
				wTopicLength :=
						SHL(BYTE_TO_WORD(stMqttSettings.stMqttReceivedTelegram.arMqttData[2 + iLengthPosition + 1]), 8) +
						BYTE_TO_WORD(stMqttSettings.stMqttReceivedTelegram.arMqttData[1 + iLengthPosition + 1]);
				wTopicLength := BE16_TO_HOST(wTopicLength);

				(* Copy topic *)
				MEMCPY(
					destAddr	:= ADR(stMqttSettings.stMqttReceivedPublishTelegram.sTopic),
				    srcAddr		:= ADR(stMqttSettings.stMqttReceivedTelegram.arMqttData[3 + iLengthPosition + 1]),
					n  			:= wTopicLength
				);

				(* Copy value *)
				(* value length = remaining data length - length topic value - 2 byte topic length *)
				dwValueLength := dwDataLength - wTopicLength - 2;

				MEMCPY(
					destAddr	:= ADR(stMqttSettings.stMqttReceivedPublishTelegram.sValue),
				    srcAddr		:= ADR(stMqttSettings.stMqttReceivedTelegram.arMqttData[3 + iLengthPosition + 1 + wTopicLength]),
					n  			:= dwValueLength
				);

				stMqttSettings.stMqttReceivedPublishTelegram.bHasData := TRUE;
			END_IF;

			iState	:= C_IDLE;
			bBusy	:= FALSE;
		END_IF;

		IF fbSocketReceive.bError THEN
			iState 					:= C_STARTUP;
			stMqttSettings.bError	:= TRUE;
		END_IF;

		IF
			NOT stMqttSettings.bActive
			OR NOT stMqttSettings.bSocketConnection
		THEN
			iState := C_STARTUP;
		END_IF;

	(* idle *)
	C_IDLE:
		IF
			NOT stMqttSettings.bDisconnect
			AND NOT stMqttSettings.bError
			AND stMqttSettings.bSocketConnection
			AND NOT bBusy
		THEN
			iState := C_RECEIVE_HEADER;
		END_IF;

		IF
			stMqttSettings.bDisconnect
			OR stMqttSettings.bError
			OR NOT stMqttSettings.bSocketConnection
		THEN
			iState := C_STARTUP;
		END_IF;

		(* ensure at least 1 cycle pause *)
		(* bBusy := FALSE; *)

	ELSE
		iState := C_STARTUP;
END_CASE;

(*	END_FUNCTION_BLOCK	*)
 �  ,     �2           ClearReceivedPublishTelegram z}]�  MEMSET(
	destAddr	:= ADR(stMqttSettings.stMqttReceivedPublishTelegram.sTopic),
	fillByte  	:= 0,
	n			:= 255
);
stMqttSettings.stMqttReceivedPublishTelegram.sTopic := '';

MEMSET(
	destAddr	:= ADR(stMqttSettings.stMqttReceivedPublishTelegram.sValue),
	fillByte  	:= 0,
	n			:= 255
);
stMqttSettings.stMqttReceivedPublishTelegram.sValue := '';

stMqttSettings.stMqttReceivedPublishTelegram.bHasData := FALSE;             �  , � � �           FB_Mqtt_Send_V10 z}]	z}]        ��B           +  (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '\/_Generic\/Mqtt\/Intern' *)
(* @OBJECTFLAGS := '0, 8' *)
(* @SYMFILEFLAGS := '2048' *)
FUNCTION_BLOCK FB_Mqtt_Send_V10
VAR_OUTPUT
	bBusy	: BOOL := FALSE;
END_VAR
VAR_IN_OUT
	stMqttSettings	: ST_MqttSettings;
END_VAR
VAR
	fbSocketSend 	: FB_SocketSend;
	tPingReq		: TIME;
	iState 			: INT := 0;
	stSendTelegram	: ST_MqttTelegram;
END_VAR
VAR CONSTANT
	C_STARTUP		: INT := 0;
	C_SEND			: INT := 100;
	C_SEND_WAIT		: INT := 110;
	C_IDLE			: INT := 500;
END_VAR
(* @END_DECLARATION := '0' *)�
  CASE iState OF
	C_STARTUP:
		bBusy := FALSE;

		stMqttSettings.tonSendPingReq(
			in := FALSE
		);

		IF
			NOT stMqttSettings.bDisconnect
			AND NOT stMqttSettings.bError
			AND stMqttSettings.bSocketConnection
		THEN
			iState := C_IDLE;
		END_IF;

	(* send mqtt telegram *)
	C_SEND:
		bBusy := TRUE;

		(* copy send telegram *)
		FC_Mqtt_CopyTelegram_V10(
			stMqttSrcTelegram	:= stMqttSettings.stMqttSendTelegram,
			stMqttDestTelegram	:= stSendTelegram,
			stMqttSettings		:= stMqttSettings
		);

		(* start send *)
		fbSocketSend(
			bExecute := FALSE
		);

		fbSocketSend(
			sSrvNetId	:= '',
			hSocket		:= stMqttSettings.hSocket,
			cbLen		:= stSendTelegram.nDataLength,
			pSrc		:= ADR(stSendTelegram.arMqttData),
			bExecute 	:= TRUE
		);

		iState := C_SEND_WAIT;

	(* wait send done *)
	C_SEND_WAIT:
		fbSocketSend(
			bExecute := FALSE
		);

		IF
			NOT fbSocketSend.bBusy
			AND NOT fbSocketSend.bError
		THEN
			(* copy last telegram *)
			FC_Mqtt_CopyTelegram_V10(
				stMqttSrcTelegram	:= stMqttSettings.stMqttSendTelegram,
				stMqttDestTelegram	:= stMqttSettings.stMqttLastSendTelegram,
				stMqttSettings		:= stMqttSettings
			);

			(* clear send buffer *)
			FC_Mqtt_ClearTelegram_V10(
				stMqttTelegram 	:= stMqttSettings.stMqttSendTelegram,
				stMqttSettings	:= stMqttSettings
			);

			iState	:= C_IDLE;
			bBusy	:= FALSE;
		END_IF;

		IF stMqttSettings.usKeepAliveTime > 0 THEN
			tPingReq := DWORD_TO_TIME(USINT_TO_DWORD(stMqttSettings.usKeepAliveTime) * 1000 - 5000);

			stMqttSettings.tonSendPingReq(
				in := FALSE
			);

			stMqttSettings.tonSendPingReq(
				in := TRUE,
				pt := tPingReq
			);
		END_IF;

		IF fbSocketSend.bError THEN
			iState 					:= C_STARTUP;
			stMqttSettings.bError	:= TRUE;
		END_IF;

		IF
			NOT stMqttSettings.bActive
			OR NOT stMqttSettings.bSocketConnection
		THEN
			iState := C_STARTUP;
		END_IF;

	(* idle *)
	C_IDLE:
		IF stMqttSettings.usKeepAliveTime > 0 THEN
			stMqttSettings.tonSendPingReq(
				in := stMqttSettings.bConnected
			);
		ELSE
			stMqttSettings.tonSendPingReq(
				in := FALSE
			);
		END_IF;

		IF
			stMqttSettings.stMqttSendTelegram.nDataLength > 0
			AND NOT stMqttSettings.bDisconnect
			AND NOT stMqttSettings.bError
			AND stMqttSettings.bSocketConnection
			AND NOT bBusy
		THEN
			iState := C_SEND;
		END_IF;

		IF
			stMqttSettings.bDisconnect
			OR stMqttSettings.bError
			OR NOT stMqttSettings.bSocketConnection
		THEN
			iState := C_STARTUP;
		END_IF;

		(* ensure at least 1 cycle pause *)
		(* bBusy := FALSE; *)

	ELSE
		iState := C_STARTUP;
END_CASE;

(*	END_FUNCTION_BLOCK	*)               �  , � � �           FB_Mqtt_Subscribe_V10 z}]	z}]                      <  (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '\/_Generic\/Mqtt' *)
(* @OBJECTFLAGS := '0, 8' *)
(* @SYMFILEFLAGS := '2048' *)
FUNCTION_BLOCK FB_Mqtt_Subscribe_V10
VAR_INPUT
	sTopic	: STRING[255];
	bAccept	: BOOL := FALSE; (* When false, subscribe but do not set bNewValue output *)
END_VAR
VAR_OUTPUT
	sValue		: STRING[255];
	bNewValue	: BOOL := FALSE;
	bBusy		: BOOL := FALSE;
END_VAR
VAR_IN_OUT
	stMqttSettings	: ST_MqttSettings;
END_VAR
VAR
	iState 				: INT := 0;
	bSubscribeSent		: BOOL := FALSE;
	bSubAckReceived		: BOOL := FALSE;
	iTopicLength		: INT := 0;
	wTopicLength		: WORD;
	stMqttTelegram		: ST_MqttTelegram;
	fbMqttEncodeLength	: FB_Mqtt_EncodeLength_V10;
	bLength1			: BYTE;
	bLength2			: BYTE;
	bLength3			: BYTE;
	bLength4			: BYTE;
	bLengthAmount		: BYTE;

	wPackageIdentifier			: WORD;
	wTelegramPackageIdentifier	: WORD;
END_VAR
VAR CONSTANT
	C_STARTUP			: INT := 0;
	C_BUILD_TELEGRAM	: INT := 100;
	C_SEND_WAIT			: INT := 110;
	C_CHECK_TELEGRAM	: INT := 200;
	C_IDLE				: INT := 500;
END_VAR

(* @END_DECLARATION := '0' *)�  CASE iState OF
	C_STARTUP:
		wPackageIdentifier 	:= 0;
		bSubscribeSent		:= FALSE;
		bSubAckReceived		:= FALSE;
		bNewValue			:= FALSE;
		sValue 				:= '';
		bBusy				:= FALSE;

		IF stMqttSettings.bValidConnection THEN
			iState := C_IDLE;
		END_IF;

	(* build publish telegram *)
	C_BUILD_TELEGRAM:
		bBusy 								:= TRUE;
		wPackageIdentifier 					:= stMqttSettings.wPackageIdentifier;
		stMqttSettings.wPackageIdentifier 	:= stMqttSettings.wPackageIdentifier + 1;
		iTopicLength						:= LEN(sTopic);

		FC_Mqtt_ClearTelegram_V10(
			stMqttTelegram	:= stMqttTelegram,
			stMqttSettings	:= stMqttSettings
		);

		wTopicLength := iTopicLength;
		wTopicLength := HOST_TO_BE16(wTopicLength);

		wTelegramPackageIdentifier := HOST_TO_BE16(wPackageIdentifier);

		(* Calculate length *)
		(* 2 byte package identifier, 2 byte length topic, x byte length topic, 1 byte QoS *)
		fbMqttEncodeLength(
			dwLength := 2 + 2 + iTopicLength + 1,
			bLength1 => bLength1,
			bLength2 => bLength2,
			bLength3 => bLength3,
			bLength4 => bLength4,
			bAmount	 => bLengthAmount
		);

		(* MQTT Control Packet type *)
		stMqttTelegram.arMqttData[0] := 130;

		(* Remaining Length *)
		CASE bLengthAmount OF
			1:
				stMqttTelegram.arMqttData[1] := bLength1;

			2:
				stMqttTelegram.arMqttData[1] := bLength1;
				stMqttTelegram.arMqttData[2] := bLength2;

			3:
				stMqttTelegram.arMqttData[1] := bLength1;
				stMqttTelegram.arMqttData[2] := bLength2;
				stMqttTelegram.arMqttData[3] := bLength3;

			4:
				stMqttTelegram.arMqttData[1] := bLength1;
				stMqttTelegram.arMqttData[2] := bLength2;
				stMqttTelegram.arMqttData[3] := bLength3;
				stMqttTelegram.arMqttData[4] := bLength4;

			ELSE
				iState 					:= C_STARTUP;
				stMqttSettings.bError	:= TRUE;
		END_CASE;

		(* Packet Identifier MSB *)
		stMqttTelegram.arMqttData[1 + bLengthAmount] := WORD_TO_BYTE(wTelegramPackageIdentifier);
		(* Packet Identifier LSB *)
		stMqttTelegram.arMqttData[2 + bLengthAmount] := WORD_TO_BYTE(SHR(wTelegramPackageIdentifier, 8));
		(* Length MSB Topic *)
		stMqttTelegram.arMqttData[3 + bLengthAmount] := WORD_TO_BYTE(wTopicLength);
		(* Length MSB Topic *)
		stMqttTelegram.arMqttData[4 + bLengthAmount] := WORD_TO_BYTE(SHR(wTopicLength, 8));

		(* Add topic *)
		MEMCPY(
			destAddr	:= ADR(stMqttTelegram.arMqttData[5 + bLengthAmount]),
		    srcAddr		:= ADR(sTopic),
			n  			:= iTopicLength
		);

		(* 1 byte header, x byte variable length, 2 byte package identifier, 2 byte topic lenght, x byte topic, 1 byte QoS *)
		stMqttTelegram.nDataLength := 1 + bLengthAmount + 2 + 2 + iTopicLength + 1;

		iState := C_SEND_WAIT;

	(* send telegram *)
	C_SEND_WAIT:
		IF stMqttSettings.stMqttSendTelegram.nDataLength = 0 THEN
			FC_Mqtt_CopyTelegram_V10(
				stMqttSrcTelegram	:= stMqttTelegram,
				stMqttDestTelegram	:= stMqttSettings.stMqttSendTelegram,
				stMqttSettings		:= stMqttSettings
			);

			bSubscribeSent	:= TRUE;
			iState			:= C_IDLE;
		END_IF;

		IF NOT stMqttSettings.bValidConnection THEN
			iState := C_STARTUP;
		END_IF;

	(* check telegram *)
	C_CHECK_TELEGRAM:
		bBusy 			:= TRUE;

		IF
			stMqttSettings.stMqttReceivedPublishTelegram.bHasData
			AND stMqttSettings.stMqttReceivedPublishTelegram.sTopic = sTopic
		THEN
			FC_Mqtt_ClearTelegram_V10(
				stMqttTelegram	:= stMqttSettings.stMqttReceivedTelegram,
				stMqttSettings	:= stMqttSettings
			);
			stMqttSettings.stMqttReceivedPublishTelegram.bHasData := FALSE;

			sValue		:= stMqttSettings.stMqttReceivedPublishTelegram.sValue;
			bNewValue 	:= TRUE;
		END_IF;

		iState := C_IDLE;

	(* idle *)
	C_IDLE:
		bBusy 		:= FALSE;
		bNewValue	:= FALSE;

		IF
			stMqttSettings.bValidConnection
			AND NOT bSubscribeSent
			AND NOT bSubAckReceived
		THEN
			iState := C_BUILD_TELEGRAM;
		END_IF;

		(* Check for correct SubAck *)
		IF
			bSubscribeSent
			AND stMqttSettings.stMqttReceivedTelegram.nDataLength = 5
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[0] = 144
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[1] = 3
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[2] = WORD_TO_BYTE(wTelegramPackageIdentifier)
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[3] = WORD_TO_BYTE(SHR(wTelegramPackageIdentifier, 8))
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[4] = 0
		THEN
			FC_Mqtt_ClearTelegram_V10(
				stMqttTelegram	:= stMqttSettings.stMqttReceivedTelegram,
				stMqttSettings	:= stMqttSettings
			);
			bSubAckReceived := TRUE;
		END_IF;

		(* Check for error SubAck *)
		IF
			bSubscribeSent
			AND stMqttSettings.stMqttReceivedTelegram.nDataLength = 5
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[0] = 144
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[1] = 3
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[2] = WORD_TO_BYTE(wTelegramPackageIdentifier)
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[3] = WORD_TO_BYTE(SHR(wTelegramPackageIdentifier, 8))
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[4].7 = 1
		THEN
			stMqttSettings.bError := TRUE;
		END_IF;

		(* Check for publish *)
		IF
			bSubAckReceived
			AND stMqttSettings.stMqttReceivedPublishTelegram.bHasData
			AND bAccept
		THEN
			iState := C_CHECK_TELEGRAM;
		END_IF;

		IF NOT stMqttSettings.bValidConnection THEN
			iState := C_STARTUP;
		END_IF;

	ELSE
		iState := C_STARTUP;
END_CASE

(*	END_FUNCTION_BLOCK	*)               �  ,     �2           FB_MqttTelegram_Connect_V10 z}]	z}]        ��?           �  (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '\/_Generic\/Mqtt\/Intern' *)
(* @OBJECTFLAGS := '0, 8' *)
(* @SYMFILEFLAGS := '2048' *)
FUNCTION_BLOCK FB_MqttTelegram_Connect_V10
VAR_IN_OUT
	stMqttSettings	: ST_MqttSettings;
END_VAR
VAR
	iState 				: INT := 0;
	idLength			: INT;
	iuLength			: INT;
	ipLength			: INT;
	ipos				: INT;
	stMqttTelegram		: ST_MqttTelegram;
	fbMqttEncodeLength	: FB_Mqtt_EncodeLength_V10;
	bLength1			: BYTE;
	bLength2			: BYTE;
	bLength3			: BYTE;
	bLength4			: BYTE;
	bLengthAmount		: BYTE;
END_VAR
VAR CONSTANT
	C_STARTUP		: INT := 0;
	C_BUILD_CONNECT	: INT := 100;
	C_SEND_WAIT		: INT := 110;
	C_IDLE			: INT := 500;
END_VAR
(* @END_DECLARATION := '0' *)�  CASE iState OF
	C_STARTUP:
		IF
			NOT stMqttSettings.bDisconnect
			AND NOT stMqttSettings.bError
			AND stMqttSettings.bSocketConnection
			AND stMqttSettings.bActive
		THEN
			iState := C_IDLE;
		END_IF;

	(* build connect telegram *)
	C_BUILD_CONNECT:
		FC_Mqtt_ClearTelegram_V10(
			stMqttTelegram	:= stMqttTelegram,
			stMqttSettings	:= stMqttSettings
		);

		(* get client id length *)
		idLength := LEN(stMqttSettings.sMqttClientId);
		IF idLength < 1 THEN
			stMqttSettings.sMqttClientId := 'x';
			idLength := 1;
		END_IF;

		IF idLength > 23 THEN
			idLength := 23;
		END_IF;

		IF
			LEN(stMqttSettings.sMqttUserId) > 0
			AND LEN(stMqttSettings.sMqttPassword) > 0
		THEN
			iuLength := LEN(stMqttSettings.sMqttUserId)+2; (* 2 byte data length*)
			ipLength := LEN(stMqttSettings.sMqttPassword)+2; (* 2 byte data length*)
		ELSE
			iuLength := 0;
			ipLength := 0;
		END_IF

		(* Calculate length *)
		(* 10 byte header, 2 byte data length, data length, [user length + 2], [password length + 2]*)
		fbMqttEncodeLength(
			dwLength := 10 + 2 + INT_TO_BYTE(idLength) + INT_TO_BYTE(iuLength) + INT_TO_BYTE(ipLength),
			bLength1 => bLength1,
			bLength2 => bLength2,
			bLength3 => bLength3,
			bLength4 => bLength4,
			bAmount	 => bLengthAmount
		);

		(* MQTT Control Packet type *)
		stMqttTelegram.arMqttData[0] := 16;
		(* Remaining Length *)
		CASE bLengthAmount OF
			1:
				stMqttTelegram.arMqttData[1] := bLength1;

			2:
				stMqttTelegram.arMqttData[1] := bLength1;
				stMqttTelegram.arMqttData[2] := bLength2;

			3:
				stMqttTelegram.arMqttData[1] := bLength1;
				stMqttTelegram.arMqttData[2] := bLength2;
				stMqttTelegram.arMqttData[3] := bLength3;

			4:
				stMqttTelegram.arMqttData[1] := bLength1;
				stMqttTelegram.arMqttData[2] := bLength2;
				stMqttTelegram.arMqttData[3] := bLength3;
				stMqttTelegram.arMqttData[4] := bLength4;
		END_CASE;
		(* init position*)
		ipos := bLengthAmount;

		(* Length MSB *)
		stMqttTelegram.arMqttData[ipos+1] := 0;
		(* Length LSB *)
		stMqttTelegram.arMqttData[ipos+2] := 4;
		(* M *)
		stMqttTelegram.arMqttData[ipos+3] := 77;
		(* Q *)
		stMqttTelegram.arMqttData[ipos+4] := 81;
		(* T *)
		stMqttTelegram.arMqttData[ipos+5] := 84;
		(* T *)
		stMqttTelegram.arMqttData[ipos+6] := 84;
		(* Protocol Level *)
		stMqttTelegram.arMqttData[ipos+7] := 4;
		(* Connect Flags *)
		stMqttTelegram.arMqttData[ipos+8].1 := TRUE;
		stMqttTelegram.arMqttData[ipos+8].6 := (ipLength>2); (* more then 2 byte data length*)
		stMqttTelegram.arMqttData[ipos+8].7 := (iuLength>2); (* more then 2 byte data length*)
		(* Keep Alive MSB *)
		stMqttTelegram.arMqttData[ipos+9] := 0;
		(* Keep Alive LSB *)
		stMqttTelegram.arMqttData[ipos+10] := stMqttSettings.usKeepAliveTime;
		(* Data length MSB *)
		stMqttTelegram.arMqttData[ipos+11] := 0;
		(* Data length LSB *)
		stMqttTelegram.arMqttData[ipos+12] := INT_TO_BYTE(idLength);

		(* Client ID *)
		MEMCPY(
			destAddr	:= ADR(stMqttTelegram.arMqttData[ipos+13]),
		    srcAddr		:= ADR(stMqttSettings.sMqttClientId),
			n  			:= idLength
		);

		ipos := ipos+13+idLength;
		IF (iuLength > 2) THEN (* more then 2 byte data length*)
			(* Data length MSB *)
			stMqttTelegram.arMqttData[ipos] := 0;
			(* Data length LSB *)
			stMqttTelegram.arMqttData[ipos+1] := INT_TO_BYTE(iuLength-2);

			(* User ID *)
			MEMCPY(
				destAddr	:= ADR(stMqttTelegram.arMqttData[ipos+2]),
			    srcAddr		:= ADR(stMqttSettings.sMqttUserId),
				n  			:= iuLength-2
			);
			ipos := ipos+iuLength;
		END_IF

		IF (iuLength > 2) THEN (* more then 2 byte data length*)
			(* Data length MSB *)
			stMqttTelegram.arMqttData[ipos] := 0;
			(* Data length LSB *)
			stMqttTelegram.arMqttData[ipos+1] := INT_TO_BYTE(ipLength-2);

			(* Password *)
			MEMCPY(
				destAddr	:= ADR(stMqttTelegram.arMqttData[ipos+2]),
			    srcAddr		:= ADR(stMqttSettings.sMqttPassword),
				n  			:= ipLength-2
			);
			ipos := ipos+ipLength;
		END_IF

		stMqttTelegram.nDataLength 	:= ipos; (* 1 byte header, 1 byte remaining length *)
		iState 						:= C_SEND_WAIT;

	(* send telegram *)
	C_SEND_WAIT:
		IF stMqttSettings.stMqttSendTelegram.nDataLength = 0 THEN
			FC_Mqtt_CopyTelegram_V10(
				stMqttSrcTelegram	:= stMqttTelegram,
				stMqttDestTelegram	:= stMqttSettings.stMqttSendTelegram,
				stMqttSettings		:= stMqttSettings
			);

			stMqttSettings.bConnectPackageSent	:= TRUE;
			iState								:= C_IDLE;
		END_IF;

		IF
			NOT stMqttSettings.bActive
			OR NOT stMqttSettings.bSocketConnection
		THEN
			iState := C_STARTUP;
		END_IF;

	(* idle *)
	C_IDLE:
		IF
			NOT stMqttSettings.bDisconnect
			AND NOT stMqttSettings.bError
			AND NOT stMqttSettings.bConnected
			AND stMqttSettings.bSocketConnection
			AND NOT stMqttSettings.bConnectPackageSent
			AND stMqttSettings.bActive
		THEN
			iState := C_BUILD_CONNECT;
		END_IF;

		(* check received telegram *)
		IF
			stMqttSettings.bConnectPackageSent
			AND stMqttSettings.stMqttReceivedTelegram.nDataLength = 4
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[0] = 32
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[1] = 2
			AND (
				(* Session pressent or not, we ignore *)
				stMqttSettings.stMqttReceivedTelegram.arMqttData[2] = 1
				OR
				stMqttSettings.stMqttReceivedTelegram.arMqttData[2] = 0
			)
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[3] = 0
		THEN
			stMqttSettings.bConnected := TRUE;
			FC_Mqtt_ClearTelegram_V10(
				stMqttTelegram	:= stMqttSettings.stMqttReceivedTelegram,
				stMqttSettings	:= stMqttSettings
			);
		END_IF;

		(* error on connect *)
		IF
			stMqttSettings.bConnectPackageSent
			AND stMqttSettings.stMqttReceivedTelegram.nDataLength = 4
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[0] = 32
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[1] = 2
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[3] <> 0
		THEN
			stMqttSettings.bError := TRUE;
		END_IF;

		IF
			stMqttSettings.bDisconnect
			OR stMqttSettings.bError
			OR NOT stMqttSettings.bSocketConnection
			OR NOT stMqttSettings.bActive
		THEN
			iState := C_STARTUP;
		END_IF;

	ELSE
		iState := C_STARTUP;
END_CASE;


(*	END_FUNCTION_BLOCK	*)               �  ,   �L           FB_MqttTelegram_PingReq_V10 z}]	z}]        ��B             (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '\/_Generic\/Mqtt\/Intern' *)
(* @OBJECTFLAGS := '0, 8' *)
(* @SYMFILEFLAGS := '2048' *)
FUNCTION_BLOCK FB_MqttTelegram_PingReq_V10
VAR_IN_OUT
	stMqttSettings	: ST_MqttSettings;
END_VAR
VAR
	iState 				: INT := 0;
	bMustSend			: BOOL := FALSE;
	bPingReqSent		: BOOL := FALSE;
	stMqttTelegram		: ST_MqttTelegram;
END_VAR
VAR CONSTANT
	C_STARTUP		: INT := 0;
	C_BUILD_PING	: INT := 100;
	C_SEND_WAIT		: INT := 110;
	C_IDLE			: INT := 500;
END_VAR
(* @END_DECLARATION := '0' *)  CASE iState OF
	C_STARTUP:
		bPingReqSent := FALSE;

		IF stMqttSettings.bValidConnection THEN
			iState := C_IDLE;
		END_IF;

	(* build pingreq telegram *)
	C_BUILD_PING:
		FC_Mqtt_ClearTelegram_V10(
			stMqttTelegram	:= stMqttTelegram,
			stMqttSettings	:= stMqttSettings
		);

		(* MQTT Control Packet type *)
		stMqttTelegram.arMqttData[0] := 192;
		(* Remaining Length *)
		stMqttTelegram.arMqttData[1] := 0;

		stMqttTelegram.nDataLength := 2;

		iState := C_SEND_WAIT;

	(* send telegram *)
	C_SEND_WAIT:
		IF stMqttSettings.stMqttSendTelegram.nDataLength = 0 THEN
			FC_Mqtt_CopyTelegram_V10(
				stMqttSrcTelegram	:= stMqttTelegram,
				stMqttDestTelegram	:= stMqttSettings.stMqttSendTelegram,
				stMqttSettings		:= stMqttSettings
			);

			bPingReqSent	:= TRUE;
			iState			:= C_IDLE;
		END_IF;

		IF NOT stMqttSettings.bValidConnection THEN
			iState := C_STARTUP;
		END_IF;

	(* idle *)
	C_IDLE:
		bMustSend := FALSE;

		IF stMqttSettings.usKeepAliveTime > 0 THEN
			bMustSend := stMqttSettings.tonSendPingReq.Q;
		END_IF;

		IF
			stMqttSettings.bValidConnection
			AND bMustSend
			AND NOT bPingReqSent
		THEN
			iState := C_BUILD_PING;
		END_IF;

		(* Check received telegram *)
		IF
			bPingReqSent
			AND stMqttSettings.stMqttReceivedTelegram.nDataLength = 2
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[0] = 208
			AND stMqttSettings.stMqttReceivedTelegram.arMqttData[1] = 0
		THEN
			FC_Mqtt_ClearTelegram_V10(
				stMqttTelegram	:= stMqttSettings.stMqttReceivedTelegram,
				stMqttSettings	:= stMqttSettings
			);
			bPingReqSent := FALSE;
		END_IF;

		IF NOT stMqttSettings.bValidConnection THEN
			iState := C_STARTUP;
		END_IF;

	ELSE
		iState := C_STARTUP;
END_CASE;

(*	END_FUNCTION_BLOCK	*)               �  ,     �2           FC_Mqtt_ClearTelegram_V10 z}]	z}]       $ �          ;  (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '\/_Generic\/Mqtt\/Intern' *)
(* @OBJECTFLAGS := '0, 8' *)
(* @SYMFILEFLAGS := '2048' *)
FUNCTION FC_Mqtt_ClearTelegram_V10 : BOOL
VAR_IN_OUT
	stMqttTelegram	: ST_MqttTelegram;
	stMqttSettings	: ST_MqttSettings;
END_VAR
VAR
END_VAR
(* @END_DECLARATION := '0' *)�   MEMSET(
	destAddr	:= ADR(stMqttTelegram.arMqttData),
	fillByte  	:= 0,
	n			:= stMqttSettings.iTelegramSize
);

stMqttTelegram.nDataLength := 0;

(*	END_FUNCTION	*)               �  ,   �L           FC_Mqtt_CopyTelegram_V10 z}]	z}]       $ �          f  (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '\/_Generic\/Mqtt\/Intern' *)
(* @OBJECTFLAGS := '0, 8' *)
(* @SYMFILEFLAGS := '2048' *)
FUNCTION FC_Mqtt_CopyTelegram_V10 : BOOL
VAR_IN_OUT
	stMqttSrcTelegram	: ST_MqttTelegram;
	stMqttDestTelegram	: ST_MqttTelegram;
	stMqttSettings		: ST_MqttSettings;
END_VAR
VAR
END_VAR
(* @END_DECLARATION := '0' *)�   MEMCPY(
	destAddr	:= ADR(stMqttDestTelegram.arMqttData),
    srcAddr		:= ADR(stMqttSrcTelegram.arMqttData),
	n  			:= stMqttSettings.iTelegramSize
);

stMqttDestTelegram.nDataLength := stMqttSrcTelegram.nDataLength;

(*	END_FUNCTION	*)               "   , h h �R           Fluidz}]	z}]       a are f           PROGRAM Fluid
VAR
END_VAR)  iobroker.FLD_BATH:=HW_sensor_fld_van;
iobroker.FLD_KUH:=HW_sensor_fld_kitchen;
iobroker.FLD_PRC:=HW_sensor_fld_post;
iobroker.FLD_TLT:=HW_sensor_fld_tlt;


IF (iobroker.FLD_BATH=TRUE OR iobroker.FLD_PRC=TRUE OR iobroker.FLD_TLT=TRUE ) THEN
	iobroker.FLD_ALRM_BATH:=TRUE;
	HW_valve_water_bathroom:=FALSE;
	iobroker.FLD_valve_bathroom:=FALSE;
END_IF

(*IF (FLD_BATH=FALSE AND FLD_PRC=FALSE AND FLD_TLT=FALSE  AND FLD_ALRM_BATH=FALSE AND FLD_valve_bathroom=TRUE) THEN
	HW_valve_water_bathroom:=TRUE;
END_IF*)

IF (iobroker.FLD_BATH=TRUE OR iobroker.FLD_PRC=TRUE OR  iobroker.FLD_TLT=TRUE  OR  iobroker.FLD_ALRM_BATH=TRUE ) THEN
	iobroker.FLD_valve_bathroom:=FALSE;
END_IF

HW_valve_water_bathroom:=iobroker.FLD_valve_bathroom;

IF (iobroker.FLD_KUH=TRUE ) THEN
	iobroker.FLD_ALRM_KITCHEN:=TRUE;
	HW_valve_water_kitchen:=FALSE;
	iobroker.FLD_valve_kitchen:=FALSE;
END_IF


IF (iobroker.FLD_KUH=TRUE  OR iobroker.FLD_ALRM_KITCHEN=TRUE ) THEN
	iobroker.FLD_valve_kitchen:=FALSE;
END_IF
HW_valve_water_kitchen:=iobroker.FLD_valve_kitchen;
               �  , � � ��        
   Fluid_bath z}]	z}]                      m   PROGRAM Fluid_bath
VAR
	BUTTON3 	:	 R_TRIG;  (* ������ �3 - ������������ ������ ���� � �������� *)
END_VAR�  iobroker.FLD_BATH:=HW_sensor_fld_van;
iobroker.FLD_PRC:=HW_sensor_fld_post;
iobroker.FLD_TLT:=HW_sensor_fld_tlt;


IF (iobroker.FLD_BATH=TRUE OR iobroker.FLD_PRC=TRUE OR iobroker.FLD_TLT=TRUE ) THEN
	HW_valve_water_bathroom:=FALSE;
	iobroker.FLD_valve_bathroom:=FALSE;
	iobroker.FLD_ALRM_BATH:=TRUE;
ELSE
	IF (iobroker.FLD_ALRM_BATH=FALSE) THEN
		HW_valve_water_bathroom:=TRUE;
		iobroker.FLD_valve_bathroom:=TRUE;
	ELSE
		HW_valve_water_bathroom:=FALSE;
		iobroker.FLD_valve_bathroom:=FALSE;
	END_IF
END_IF

BUTTON3 (CLK:=HW_IN03);

IF (     BUTTON3.Q ) THEN
	IF (iobroker.FLD_valve_bathroom=FALSE) THEN
		IF (iobroker.FLD_BATH=FALSE AND iobroker.FLD_PRC=FALSE AND iobroker.FLD_TLT=FALSE) THEN
			HW_valve_water_bathroom:=TRUE;
			iobroker.FLD_valve_bathroom:=TRUE;
			iobroker.FLD_ALRM_BATH:=FALSE;
		END_IF
	ELSE
		iobroker.FLD_ALRM_BATH:=TRUE;
		HW_valve_water_bathroom:=FALSE;
		iobroker.FLD_valve_bathroom:=FALSE;
	END_IF
END_IF





               �  , � � �           Fluid_kitchen z}]	z}]       ���          n   PROGRAM Fluid_kitchen
VAR
	BUTTON2 	:	 R_TRIG;  (* ������ �2 - ������������ ������ ���� � �����  *)
END_VAR  
iobroker.FLD_KUH:=HW_sensor_fld_kitchen;



IF (iobroker.FLD_KUH=TRUE) THEN
	HW_valve_water_kitchen:=FALSE;
	iobroker.FLD_valve_kitchen:=FALSE;
	iobroker.FLD_ALRM_KITCHEN:=TRUE;
ELSE
	IF (iobroker.FLD_ALRM_KITCHEN=FALSE) THEN
		HW_valve_water_kitchen:=TRUE;
		iobroker.FLD_valve_kitchen:=TRUE;
	ELSE
		HW_valve_water_kitchen:=FALSE;
		iobroker.FLD_valve_kitchen:=FALSE;
	END_IF
END_IF

BUTTON2 (CLK:=HW_IN02);

IF ( BUTTON2.Q ) THEN
	IF (HW_valve_water_kitchen=FALSE) THEN
		IF (iobroker.FLD_KUH=FALSE) THEN
			HW_valve_water_kitchen:=TRUE;
			iobroker.FLD_valve_kitchen:=TRUE;
			iobroker.FLD_ALRM_KITCHEN:=FALSE;
		END_IF
	ELSE
		iobroker.FLD_ALRM_KITCHEN:=TRUE;
		HW_valve_water_kitchen:=FALSE;
		iobroker.FLD_valve_kitchen:=FALSE;
	END_IF
END_IF







               6  , � � �        
   Light_hall z}]	z}]        ���           �   PROGRAM Light_hall
VAR
	Timer1			: TOF;
	tTimerValue		: TIME;
	Period_light		: INT := 60;		(* ����� ������ ����������� �� ������� ��������, ������� *)
END_VAR�   tTimerValue := DINT_TO_TIME(Period_light*1000);
Timer1(IN:=(NOT HW_PIR_HALL OR NOT HW_PIR_door), PT:=tTimerValue);
(* HW_LIGHT_HALL:=Timer1.Q; *)               #   ,   ��           MAIN �]	z}]            Re        �   PROGRAM MAIN
VAR
	INITVAR					: BOOL:=FALSE;
	SW_LIGHT				: SM_BUTT;		(* ���/����  ����� � �������� *)
	SW_VENT				: SM_BUTT;		(* ���/���� ���������� *)
	SW_REZERV			: SM_BUTT;





END_VAR
�	  IF (INITVAR=FALSE) THEN

(* RESTORE VARS FROM MEMORY AFTER REBOOT/RESET/LOST POWER *)

	iobroker.Target_hum		:=	Target_hum_mem;
	iobroker.Target_CO2		:=	Target_CO2_mem;
	iobroker.Vent				:=	Vent_mem;
	iobroker.Vent_out			:=	Vent_out_mem;
	iobroker.Vent_heat		:=	Vent_heat_mem;
	iobroker.Steam			:=	Steam_mem;
	iobroker.Vent_heat_level	:=	Vent_heat_level_mem;
	iobroker.Light				:=	Light_mem;

	iobroker.Kitchen_stat_cold_water		:=	Kitchen_stat_cold_water_mem;
	iobroker.Kitchen_stat_warm_water		:=	Kitchen_stat_warm_water_mem;
	iobroker.Bathroom_stat_cold_water		:=	Bathroom_stat_cold_water_mem;
	iobroker.Bathroom_stat_warm_water		:=	Bathroom_stat_warm_water_mem;

	INITVAR:=TRUE;
ELSE

	(* SAVE VARS to PERSISTENT *)

	Target_hum_mem		:=	iobroker.Target_hum;
	Target_CO2_mem		:=	iobroker.Target_CO2;
	Vent_mem			:=	iobroker.Vent;
	Vent_out_mem		:=	iobroker.Vent_out;
	Vent_heat_mem		:=	iobroker.Vent_heat;
	Steam_mem			:=	iobroker.Steam;
	Vent_heat_level_mem	:=	iobroker.Vent_heat_level;
	Light_mem			:=	iobroker.Light;

	Mqtt;					(*�������� ������ mqtt *)
	Sensors;					(* ���������� ������� �� ������ KL *)
	RS485read;				(* ������ � ������������ �� ���� RS485 *)
	VentControl;				(* ���������� �������� �������������*)
	VentPower;				(* ��������������� �������� ������������� �� �������� CO2*)
	Counters;				(* �������� ���� *)
	Fluid_bath;				(* ������ �� �������� � ��������. �������� ������� ���������� � ���������� ������ �2 *)
	Fluid_kitchen;				(* ������ �� �������� � �����. �������� ������� ���������� � ���������� ������ �3 *)
	Light_hall;				(* ���� � �������� *)



(* �������� ������� ���������� � ���������� ������ �1, �4, �5 *)

	SW_LIGHT 		(IN:=HW_IN01, IN1:= iobroker.Light, 	Q=>NOT iobroker.Light);	(* ������ �1 *)
	SW_VENT 		(IN:=HW_IN04, IN1:=iobroker.Vent, 	Q=>iobroker.Vent);		(* ������ �4 *)
	SW_REZERV 	(IN:=HW_IN05, IN1:=iobroker.Rezerv, 	Q=>iobroker.Rezerv);	(* ������ �5 *)


(* ������ ����� ����� ��������������� ����������� �  �����������, ������ �����������  � ���. ������. ������� ����������= ����� ���  : *)

	HW_LIGHT_ALL	:=NOT iobroker.Light;					(* ���� � ��������*)
	HW_LIGHT_HALL	:=iobroker.Light_hall;					(* ���� � ��������*)
	iobroker.Gerkon	:=HW_gerkon;						(* ������ �� �����*)
	iobroker.PIR_door:=HW_pir_door;						(* ������ �������� �� ����� *)
	iobroker.Vent_pressure_relay:=HW_vent_reay_pressure; 	(* Relay pressure *)

END_IF

               9  ,   r�           Mqtt z}]	z}]        ��B           �  PROGRAM Mqtt
VAR
	FB_Mqtt_Controller 		: FB_Mqtt_Controller_V10;
	stMqttSettings				: ST_MqttSettings;
	bMqttControllerBusy		: BOOL;
	FB_Mqtt_Publish1 			: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish2			: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish3			: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish4			: FB_Mqtt_Publish_V10;
	bPublishBusy1			: BOOL;
	bPublishBusy2			: BOOL;
	bPublishBusy3			: BOOL;
	bPublishBusy4			: BOOL;
END_VARL  (*        SEND DATA VIA MQTT  *)

FB_Mqtt_Controller (
		bActive			:= TRUE,
		sMqttClientId		:= 'plc',
		sMqttUserId		:= 'mqtt',
		sMqttPassword	:= 'mqtt',
		sMqttBrokerIp		:= '192.168.3.200',
		nMqttBrokerPort	:= 1883,
		stMqttSettings		:= stMqttSettings,
		bBusy			=> bMqttControllerBusy
	);
	IF bMqttControllerBusy THEN
		RETURN;
	END_IF

		FB_Mqtt_Publish1(sTopic:='BECKHOFF_CX9010/CO2/Kitchen',sValue:=REAL_TO_STRING(iobroker.Kitchen_room_CO2),bRetain:=TRUE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy1 );
		FB_Mqtt_Publish2(sTopic:='BECKHOFF_CX9010/CO2/Bed_room',sValue:=REAL_TO_STRING(iobroker.Bed_room_CO2),bRetain:=TRUE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy2 );
		FB_Mqtt_Publish3(sTopic:='BECKHOFF_CX9010/CO2/Child_big_room',sValue:=REAL_TO_STRING(iobroker.Child_big_room_CO2),bRetain:=TRUE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy3 );
		FB_Mqtt_Publish4(sTopic:='BECKHOFF_CX9010/CO2/Child_small_room',sValue:=REAL_TO_STRING(iobroker.Child_small_room_CO2),bRetain:=TRUE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy4);


               \  , � � �        	   RS485read �	�]	�	�]      xMordd          �  
PROGRAM RS485read
VAR
	timeoutvalue					: TIME := T#500ms;		(* timeout while waiting for an answer of the modbus slave *)
	delta_sensor_hum				: INT:=14;					(*������������� ��������� �������, % ������������� ���������*)
	Period_steam				: INT := 60; 				(* ������� ��������� ������� ��������  �����������, �������*)
	Period_modbus				: INT := 10;  				(* ������� ������ ��������� modbus, �������*)

	r_Target_hum					: REAL;
	r_room_hum					: REAL;
	i_Steam_level				: INT:=0;
	MBdata						: ARRAY [1..2] OF WORD;		(* The size of this array can be adapted to the modbus slaves register area *)




	FtrigBusy					: F_TRIG;
	state						: INT;
	busy						: BOOL;
	LastErrorstate					: INT;
	LastModbusError				: ST_ModbusErrorDiagnostics;
	CounterError					: DINT;
	CounterSuccess				: DINT;
	Timer1						: TON;
	Timer1Q						: BOOL;
	Hum_old						: REAL;
	Steam_response				: WORD:=0;
	Timer2						: TON;
	Timer2Q						: BOOL;
	tTimerValue					: TIME;
	tTimerValue_modbus			: TIME;
	get_run_Merc200_done		: BOOL;
	get_hist_Merc200_done		: BOOL;
	get_run_Merc200				: FB_GET_RUN_MERC200;
	get_hist_Merc200				: FB_GET_HIST_MERC200;

	tmCheck: TON;
END_VAR
[  
tmcheck();
CASE state OF
	0:
		MB.ReadRegs(Execute:= FALSE);
		state := 2;


	2:	(* Kitchen_room Temperature and Humidity *)
		Clear(Buffer := RxBufferCom1);
		MB.ReadRegs(
			UnitID:= 16#01, (* station address *)
			Quantity:= 2,
			MBAddr:= 0,
			cbLength:= 6,
			pMemoryAddr:= ADR(MBdata),
			Execute:= TRUE,
			Timeout:= timeoutvalue,
			Busy => busy,
		);
		IF NOT busy THEN
			IF (mb.Error = FALSE ) THEN
				iobroker.Kitchen_room_temp:=WORD_TO_REAL(MBdata[1])/10;
				iobroker.Kitchen_room_hum:=WORD_TO_REAL(MBdata[2])/10 - delta_sensor_hum;
				MB.ReadRegs(Execute:= FALSE);
				state := 3;
			END_IF
			MB.ReadRegs(Execute:= FALSE);
			state :=3;
		END_IF

	3:	(* Bed_room Temperature and Humidity  *)
		MB.ReadRegs(
			UnitID:= 16#02, (* station address *)
			Quantity:= 2,
			MBAddr:= 0,
			cbLength:= 6,
			pMemoryAddr:= ADR(MBdata),
			Execute:= TRUE,
			Timeout:= timeoutvalue,
			Busy => busy	);
		IF NOT busy THEN
			IF (mb.Error = FALSE ) THEN
				iobroker.Bed_room_temp:=WORD_TO_REAL(MBdata[1])/10;
				iobroker.Bed_room_hum:=WORD_TO_REAL(MBdata[2])/10 - delta_sensor_hum;
				MB.ReadRegs(Execute:= FALSE);
				state := 4;
			END_IF
			MB.ReadRegs(Execute:= FALSE);
			state := 4;
		END_IF

	4:	(* Child_big_room  Temperature and Humidity *)
		MB.ReadRegs(
			UnitID:= 16#03, (* station address *)
			Quantity:= 2,
			MBAddr:= 0,
			cbLength:= 6,
			pMemoryAddr:= ADR(MBdata),
			Execute:= TRUE,
			Timeout:= timeoutvalue,
			Busy => busy	);
		IF NOT busy THEN
			IF (mb.Error = FALSE ) THEN
				iobroker.Child_big_room_temp:=WORD_TO_REAL(MBdata[1])/10;
				iobroker.Child_big_room_hum:=WORD_TO_REAL(MBdata[2])/10 - delta_sensor_hum;
				MB.ReadRegs(Execute:= FALSE);
				state := 5;
			END_IF
			MB.ReadRegs(Execute:= FALSE);
			state := 5;

		END_IF

	5:	(*  Child_small_room Temperature and Humidity *)
		MB.ReadRegs(
			UnitID:= 55, (* station address *)
			Quantity:= 2,
			MBAddr:= 0,
			cbLength:= 6,
			pMemoryAddr:= ADR(MBdata),
			Execute:= TRUE,
			Timeout:= timeoutvalue,
			Busy => busy	);
		IF NOT busy THEN
			IF (mb.Error = FALSE ) THEN
				iobroker.Child_small_room_temp:=WORD_TO_REAL(MBdata[1])/10;
				iobroker.Child_small_room_hum:=WORD_TO_REAL(MBdata[2])/10 - delta_sensor_hum;
				MB.ReadRegs(Execute:= FALSE);
				state := 26;
			END_IF
			MB.ReadRegs(Execute:= FALSE);
			state := 26;

		END_IF

	26:	(* Kitchen_room CO2 *)
		MB.ReadInputRegs(
			UnitID:= 16#68, (* station address *)
			Quantity:= 1,
			MBAddr:= 3,
			cbLength:= 4,
			pMemoryAddr:= ADR(MBdata),
			Execute:= TRUE,
			Timeout:= timeoutvalue,
			Busy => busy	);
		IF NOT busy THEN
			IF (mb.Error = FALSE ) THEN
				iobroker.Kitchen_room_CO2:=WORD_TO_REAL(MBdata[1]);
			END_IF
			MB.ReadRegs(Execute:= FALSE);
			state := 27;
		END_IF

	27:	(* Bed_room CO2  *)
		MB.ReadInputRegs(
			UnitID:= 101, (* station address *)
			Quantity:= 1,
			MBAddr:= 3,
			cbLength:= 4,
			pMemoryAddr:= ADR(MBdata),
			Execute:= TRUE,
			Timeout:= timeoutvalue,
			Busy => busy	);
		IF NOT busy THEN
			IF (mb.Error = FALSE ) THEN
				iobroker.Bed_room_CO2:=WORD_TO_REAL(MBdata[1]);
			END_IF
			MB.ReadRegs(Execute:= FALSE);
			state := 28;
		END_IF

	28:	(* Child_big_room CO2 *)
		MB.ReadInputRegs(
			UnitID:= 102, (* station address *)
			Quantity:= 1,
			MBAddr:= 3,
			cbLength:= 4,
			pMemoryAddr:= ADR(MBdata),
			Execute:= TRUE,
			Timeout:= timeoutvalue,
			Busy => busy	);
		IF NOT busy THEN
			IF (mb.Error = FALSE ) THEN
				iobroker.Child_big_room_CO2:=WORD_TO_REAL(MBdata[1]);
			END_IF
			MB.ReadRegs(Execute:= FALSE);
			state := 29;
		END_IF

	29:	(* Child_small_room CO2  *)
		MB.ReadInputRegs(
			UnitID:= 103, (* station address *)
			Quantity:= 1,
			MBAddr:= 3,
			cbLength:= 4,
			pMemoryAddr:= ADR(MBdata),
			Execute:= TRUE,
			Timeout:= timeoutvalue,
			Busy => busy	);
		IF NOT busy THEN
			IF (mb.Error = FALSE ) THEN
				iobroker.Child_small_room_CO2:=WORD_TO_REAL(MBdata[1]);
			END_IF
			MB.ReadRegs(Execute:= FALSE);
			state := 47;
		END_IF

	47:	(*��������� ������� �������� ����������� ��� ������������� � �������� Period_steam *)

		IF (iobroker.Steam=TRUE AND iobroker.Vent=TRUE ) THEN
			r_Target_hum:=INT_TO_REAL( iobroker.Target_Hum) ;
			r_room_hum:=iobroker.Bed_room_hum;
			tTimerValue := DINT_TO_TIME(Period_steam*1000);
			Timer2(IN:=NOT Timer2Q , PT:=tTimerValue , Q=>Timer2Q , ET=> );
			IF timer2.q THEN
				IF  ( r_room_hum <= r_Target_hum*0.5 AND i_Steam_level< 50 ) THEN
					i_Steam_level:=50;
				END_IF

				IF ( ( r_room_hum <=   Hum_old )
				AND ( r_room_hum > r_Target_hum*0.5)
				AND ( r_room_hum < r_Target_hum*0.95 )) THEN
					i_Steam_level:=i_Steam_level+1;
				END_IF

				IF ( r_room_hum >= r_Target_hum*1.05) THEN
					i_Steam_level:=i_Steam_level-1;
				END_IF

				Hum_old:=r_room_hum;

			END_IF

			IF (i_Steam_level>100) THEN
				i_Steam_level:=100;
			END_IF

			IF (i_Steam_level<10) THEN
				i_Steam_level:=10;
			END_IF

			iobroker.Steam_level:=INT_TO_BYTE(i_Steam_level);

			MB.WriteSingleRegister(
					UnitID:= 16#0A, (* station address *)
					Quantity:= 1,
					MBAddr:= 1537,
					cbLength:= 2,
					pMemoryAddr:= ADR(iobroker.Steam_level),
					Execute:= TRUE,
					Timeout:= timeoutvalue,
					Busy => busy	);
			IF NOT busy THEN
					MB.WriteSingleRegister(Execute:= FALSE);
					state := 77;
			END_IF
		ELSE
			iobroker.Steam_level:=0;
			state := 77;
		END_IF


	77:		(* ����������� ������� �������  �������� ����������� *)

			MB.ReadRegs(
					UnitID:= 16#0A, (* station address *)
					Quantity:= 1,
					MBAddr:= 261,
					cbLength:= 2,
					pMemoryAddr:= ADR(Steam_response),
					Execute:= TRUE,
					Timeout:= timeoutvalue,
					Busy => busy	);
				IF NOT busy THEN
					IF (mb.Error = FALSE ) THEN
						iobroker.Steam_real:=Steam_response;
					END_IF
					MB.ReadRegs(Execute:= FALSE);
					state := 78;

				END_IF


	78:	(* ����������� ������ ����������� � ���������*)

			MB.ReadRegs(
			UnitID:= 16#07, (* station address *)
			Quantity:= 2,
			MBAddr:= 0,
			cbLength:= 6,
			pMemoryAddr:= ADR(MBdata),
			Execute:= TRUE,
			Timeout:= timeoutvalue,
			Busy => busy	);
		IF NOT busy THEN
			IF (mb.Error = FALSE ) THEN
				iobroker.Bed_room_temp2:=WORD_TO_REAL(MBdata[1])/10;
				iobroker.Bed_room_hum2:=WORD_TO_REAL(MBdata[2])/10;
				MB.ReadRegs(Execute:= FALSE);
				state := 79;
			END_IF
			MB.ReadRegs(Execute:= FALSE);
			state := 79;

		END_IF
	79:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_run_Merc200_done := FALSE;
		busy:=TRUE;
		get_run_Merc200( Uv=>iobroker.Uv,Ia=>iobroker.Ia,Pw=>iobroker.Pw, done=>get_run_Merc200_done);
		IF get_run_Merc200_done = TRUE THEN
			busy:=FALSE;
			state:=80;
		ELSIF tmcheck.Q THEN
			busy:=FALSE;
			 state:=80;
		END_IF

	80:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_hist_Merc200_done := FALSE;
		busy:=TRUE;
		get_hist_Merc200( E_T1=>iobroker.E_T1,E_T2=>iobroker.E_T2,E_T4=>iobroker.E_T4, done=>get_hist_Merc200_done);
		IF get_hist_Merc200_done = TRUE THEN
			busy:=FALSE;
			state:=88;
		ELSIF tmcheck.Q THEN
			busy:=FALSE;
			 state:=88;
		END_IF

	88:
		tTimerValue_modbus := DINT_TO_TIME(Period_modbus*1000);
		Timer1(IN:=NOT Timer1Q , PT:=tTimerValue_modbus , Q=>Timer1Q , ET=> );
		IF timer1.q THEN

		state:=0;
		END_IF

END_CASE

FtrigBusy(CLK:=mb.BUSY );
IF FtrigBusy.Q THEN
	IF mb.Error THEN
		LastModbusError := mb.ErrorDiagnostics;
		LastErrorstate := state;
		CounterError := CounterError + 1;
	ELSE
		CounterSuccess := CounterSuccess + 1;
	END_IF
END_IF

SerialLinecontrolCom1(
	mode:=SerialLinemode_kl6_22b_standard,
	pComIn:=ADR(RS485read.MB.InData),
	pComOut:=ADR(RS485read.MB.OutData),
	SizeComIn:=SIZEOF(RS485read.MB.OutData),
	TxBuffer:=TxBufferCom1,
	RxBuffer:=RxBufferCom1,
	Error=>,
	errorid=>);
               8  ,     X�           Sensors z}]	z}]       ��             PROGRAM Sensors
VAR
END_VAR�  iobroker.Temp_vent_in:=WORD_TO_REAL(HW_temp_vent_in)/10;		(*Temperature pritoka*)

iobroker.Kitchen_room_tempout:=WORD_TO_REAL(HW_temp_street);
IF (iobroker.Kitchen_room_tempout/10>1000)  THEN
	iobroker.Kitchen_room_tempout:=iobroker.Kitchen_room_tempout-65535;
	iobroker.Kitchen_room_tempout:=iobroker.Kitchen_room_tempout/10;
ELSE
	iobroker.Kitchen_room_tempout:=iobroker.Kitchen_room_tempout/10; 	(*Temperature okno*)
END_IF
               %   , � �  l           SM_BUTT z}]	z}]                     �  FUNCTION_BLOCK SM_BUTT            (* �������������� ���� ��� ������� ������ *)
    VAR_INPUT
       	IN: BOOL;          	(*���� �� ������� �� ������ *)
	IN1:BOOL;				(*����� �� ������� ���� ������*)
    END_VAR

    VAR_OUTPUT
	Q : BOOL;        			(*��������� ������*)
    END_VAR
    VAR
  MEM : BOOL;    			(* ���������� ���������� ��� �������� ��������� ������ *)
    END_VAR�   Q:=IN1;

IF IN AND NOT MEM THEN 	(* ������� �������� ����� - ������ �� ������ *)
	Q := NOT IN1;    			(* ������ ��������� ������ �� ��������������� *)
END_IF

MEM := IN;                       		(* ���������� ������� �������� ������ *)               7  , N N �[           VentControl P�]	P�]         tt          �  PROGRAM VentControl
VAR
	Temperature_max_to_heat		: REAL:=17;		(* ������������ ����������� ��������� ������� ��� ������� ��������� �������� ������������������ *)
	Temperature_min_for_steam	: REAL:=17;		(* ����������� ����������� ������� � ���� ������ ��� ���������� ������ ����������� *)
	gisterezis					: REAL:=0.2;		(* ����������  ���������� ��������� ������������������, ������� ������� *)


END_VAR�  

(* ��������� ���������� ������� *)

IF (HW_sensor_vent_valve_opened=TRUE) THEN
	iobroker.Vent_valve_status:=1;
END_IF

IF (HW_sensor_vent_valve_closed=TRUE) THEN
	iobroker.Vent_valve_status:=0;
END_IF

IF (HW_sensor_vent_valve_closed=FALSE AND HW_sensor_vent_valve_opened=FALSE) THEN
	iobroker.Vent_valve_status:=2;
END_IF


IF (HW_kitchen_button_vent_out=TRUE) THEN	(* ���� ������������ ������ ���������� �������*)
	HW_vent_out:=TRUE;						(* �������� �������� ���� *)
	HW_vent_out_level:=32767;					(* ����� ����������� ������ DC �� �������� *)
	HW_kitchen_vent_out:=TRUE;				(* �������� ���� ���������� ������� *)
ELSE
	HW_kitchen_vent_out:=FALSE;				(* �������� ���� ���������� ������� *)
	IF (iobroker.Vent_out=FALSE) THEN			(* ���� ������� ������ ��������� ����� = FALSE*)
		HW_vent_out:=FALSE;					(* ��������� �������� ���� *)
	ELSE
		HW_vent_out:=TRUE;					(*  �������� �������� ����  *)
	END_IF
END_IF


IF (iobroker.Vent=FALSE) THEN
	HW_steam:=FALSE;
	HW_vent_in_heat:=FALSE;
	HW_vent_valve:=FALSE;	(* COMMENT THIS LINE TEMPORARY  ������ �����  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*)
	HW_trans_power:=FALSE;
ELSE
	HW_vent_valve:=TRUE;
	IF (HW_sensor_vent_valve_opened=TRUE) THEN
		HW_trans_power:=TRUE;
		IF (HW_vent_reay_pressure=TRUE) THEN
			IF (iobroker.Temp_vent_in>Temperature_min_for_steam) THEN
				HW_steam:=iobroker.Steam;
			ELSE
				HW_steam:=FALSE;
			END_IF
			IF (iobroker.Vent_heat=2) THEN
				IF (iobroker.Kitchen_room_tempout < Temperature_max_to_heat-gisterezis) THEN
					HW_vent_in_heat:=TRUE;
					IF (iobroker.Vent_heat_level=TRUE) THEN
						HW_vent_in_heat_level:=TRUE;
					END_IF
				END_IF
				IF (iobroker.Kitchen_room_tempout > Temperature_max_to_heat+gisterezis) THEN
					HW_vent_in_heat:=FALSE;
				END_IF
			ELSE
				IF (iobroker.Vent_heat=1) THEN
					HW_vent_in_heat:=TRUE;
					IF (iobroker.Vent_heat_level=TRUE) THEN
						HW_vent_in_heat_level:=TRUE;
					ELSE
						HW_vent_in_heat_level:=FALSE;
					END_IF
				END_IF
				IF (iobroker.Vent_heat=0) THEN
					HW_vent_in_heat:=FALSE;
				END_IF
			END_IF
		END_IF (*vent_relay_pressure*)
	END_IF (*vent_valve_opened*)
END_IF (*Vent*)




               '   , � � 4_        	   VentPower u�]	u�]      ordd           q  PROGRAM VentPower
VAR
	Vent_power			: REAL:=30;	(* ����� ������������ ��� ����� ��������� �������� ���������� ����� - �������� 30%  *)
	Vent_power_out		: INT:=30;		(* ����� ������������ ��� ����� ��������� �������� ��������� ����� - �������� 30%  *)
	CO2_old				: REAL:=410;	(* ����� ������������ ��� ����� ������������� ��������� �������� CO2 = 410 (��������� ������ ������) *)
	Period_vent_switch	: INT:=60; (* ������ ������������ ������� ������ ����������� �� ���������� �������� CO2, �������*)
	Timer1				: TON;
	Timer1Q				: BOOL;
	count				: INT:=0;
	CO2_max			: REAL;
	tTimerValue			: TIME;



END_VARI  tTimerValue := DINT_TO_TIME(Period_vent_switch*1000);

IF (iobroker.Vent =TRUE OR iobroker.Vent_out=TRUE ) THEN

	Timer1(IN:=NOT Timer1Q , PT:=tTimerValue , Q=>Timer1Q , ET=> );
	IF timer1.q THEN
		CO2_max:=MAX(iobroker.Kitchen_room_CO2, MAX (iobroker.Bed_room_CO2, MAX (iobroker.Child_big_room_CO2, iobroker.Child_small_room_CO2)));
		IF (  (CO2_max >=  CO2_old-10 )  AND ( CO2_max >  INT_TO_REAL(iobroker.Target_CO2)*1.05 ) ) THEN
			Vent_power:=Vent_power+2;
		END_IF
		count:=count+1;
		IF (count = 5)	THEN
			IF (  CO2_max <=  INT_TO_REAL(iobroker.Target_CO2)*0.99) THEN
				Vent_power:=Vent_power-2;
			END_IF
			count:=1;
		END_IF

		IF (Vent_power>80) THEN
			Vent_power:=80;
		END_IF
		IF(Vent_power<20) THEN
			Vent_power:=20;
		END_IF

		IF (Vent_Power > 75  ) THEN
			iobroker.Vent_input_level:=200;									(* 200 �. ��� � ��� ��� ������ ���������� �� ��������� ����������  220V *)
			HW_vent_in_trans_160_220:=FALSE;
			HW_vent_in_trans_LO_HI:=FALSE;
			IF (HW_kitchen_button_vent_out=FALSE) THEN					(* ���� ��  �������� �������� ���������� �������, �� ����� ������ ����������� ��������� ����� *)
				HW_vent_out_level:=REAL_TO_WORD(32767*60/100);			(* 200  �. ��� � ��� ��� ������ x  DC ���������� �� �������� ����������  *)
				Vent_power_out:=45;
			END_IF

			ELSIF (Vent_Power>50 ) THEN

				iobroker.Vent_input_level:=180; 								(* 180/200 �. ��� � ��� ��� ������ ���������� �� ��������� ����������  220V *)
				HW_vent_in_trans_160_220:=FALSE;
				HW_vent_in_trans_LO_HI:=FALSE;
				IF (HW_kitchen_button_vent_out=FALSE) THEN				(* ���� ��  �������� �������� ���������� �������, �� ����� ������ ����������� ��������� ����� *)
					HW_vent_out_level:=REAL_TO_WORD(32767*45/100); 		(* 180  �. ��� � ��� ��� ������ x  DC ���������� �� �������� ����������  *)
					Vent_power_out:=40;
				END_IF


			ELSIF (Vent_Power>35 AND Vent_Power<=50) THEN

					iobroker.Vent_input_level:=150;							 (* 150 �. ��� � ��� ��� ������ ���������� �� ��������� ����������  160V *)
					HW_vent_in_trans_160_220:=TRUE;
					HW_vent_in_trans_LO_HI:=FALSE;
					IF (HW_kitchen_button_vent_out=FALSE) THEN			(* ���� ��  �������� �������� ���������� �������, �� ����� ������ ����������� ��������� ����� *)
						HW_vent_out_level:=REAL_TO_WORD(32767*35/100);	(* 150  �. ��� � ��� ��� ������ x  DC ���������� �� �������� ����������  *)
						Vent_power_out:=35;
					END_IF

			ELSIF (Vent_Power>25 AND Vent_Power<=35) THEN

					iobroker.Vent_input_level:=110; (* 130V*)					 (* 110 �. ��� � ��� ��� ������ ���������� �� ��������� ����������  130V *)
					HW_vent_in_trans_105_130:=FALSE;
					HW_vent_in_trans_LO_HI:=TRUE;
					IF (HW_kitchen_button_vent_out=FALSE) THEN			(* ���� ��  �������� �������� ���������� �������, �� ����� ������ ����������� ��������� ����� *)
						HW_vent_out_level:=REAL_TO_WORD(32767*25/100);	(* 110  �. ��� � ��� ��� ������ x  DC ���������� �� �������� ����������  *)
						Vent_power_out:=25;
					END_IF

			ELSE	(* Vent_Power > 80 *)

				iobroker.Vent_input_level:=80; (* 105V*)						 (* 80 �. ��� � ��� ��� ������ ���������� �� ��������� ����������  105V *)
				HW_vent_in_trans_105_130:=TRUE;
				HW_vent_in_trans_LO_HI:=TRUE;
				IF (HW_kitchen_button_vent_out=FALSE) THEN				(* ���� ��  �������� �������� ���������� �������, �� ����� ������ ����������� ��������� ����� *)
					HW_vent_out_level:=REAL_TO_WORD(32767*20/100);		(* 80  �. ��� � ��� ��� ������ x  DC ���������� �� �������� ����������  *)
					Vent_power_out:=20;
				END_IF


			END_IF	(* Vent_Power > 80 *)
			CO2_old:=CO2_max;
			iobroker.Vent_output_level:=Vent_power_out;
	END_IF	(* Timer1 *)

ELSE	 (* Vent=TRUE*)

	iobroker.Vent_input_level:=0;
	IF (HW_kitchen_button_vent_out=FALSE) THEN
		HW_vent_out_level:=REAL_TO_WORD(32767*20/100);
	END_IF
	iobroker.Vent_output_level:=Vent_power_out;

END_IF   (* Vent=TRUE*)                 ����,   X�         #   COMlibV2.lb6 25.2.14 08:37:08 @�S   TcpIp.lib 9.1.14 13:33:22 @�^�R!   TcBase.lib 14.5.09 11:14:08 @��J"   TcSystem.lib 7.6.16 10:01:22 @"UVW$   ModbusRTU.lib 13.5.15 12:38:16 @h�RU(   TcIoFunctions.lib 27.1.17 16:22:22 @n-�X%   TcUtilities.lib 3.2.16 15:08:58 @�ѱV"   STANDARD.LIB 5.6.98 11:03:02 @�w5   >  _ReceiveString @   	   ComBuffer       ComDebugBuffer    
   ComError_t       ComHandshake_t       ComParity_t       ComRegisterData_t       ComRegisterList_t       ComSerialLineMode_t    	   KL6inData       KL6inData22B       KL6inData5B    
   KL6outData       KL6outData22B       KL6outData5B                  _SendString @          _strncpy @       	   ASC @       	   CHR @          ClearComBuffer @          ComReset @          Get_ComLib_Version @          KL6configuration @          KL6ReadRegisters @          KL6WriteRegisters @          ReceiveByte @          ReceiveData @          ReceiveString @          ReceiveString255 @          SendByte @          SendData @          SendString @          SendString255 @          SerialLineControl @          "   Global_Constants_ComLibSizes @       $   Global_Constants_ComLibVersion @          �   F_GetVersionTcpIp @      E_WinsockError       ST_SockAddr       ST_TcIpConnSvrResponse       ST_TcIpConnSvrUdpBuffer    	   T_HSOCKET                  FB_SocketAccept @          FB_SocketClose @          FB_SocketCloseAll @          FB_SocketConnect @          FB_SocketListen @          FB_SocketReceive @          FB_SocketSend @       %   FB_SocketUdpAddMulticastAddress @          FB_SocketUdpCreate @       &   FB_SocketUdpDropMulticastAddress @          FB_SocketUdpReceiveFrom @          FB_SocketUdpSendTo @             Global_Variables @          z   FW_AdsClearEvents @      FW_NoOfByte       FW_SystemInfoType       FW_SystemTaskInfoType    
   FW_TcEvent                   FW_AdsLogDINT @           FW_AdsLogEvent @           FW_AdsLogLREAL @           FW_AdsLogSTR @           FW_AdsRdWrt @           FW_AdsRdWrtInd @           FW_AdsRdWrtRes @           FW_AdsRead @           FW_AdsReadDeviceInfo @           FW_AdsReadInd @           FW_AdsReadRes @           FW_AdsReadState @           FW_AdsWrite @           FW_AdsWriteControl @           FW_AdsWriteInd @           FW_AdsWriteRes @           FW_DRand @           FW_GetCpuAccount @           FW_GetCpuCounter @           FW_GetCurTaskIndex @           FW_GetSystemTime @           FW_GetVersionTcBase @           FW_LptSignal @           FW_MemCmp @           FW_MemCpy @           FW_MemMove @           FW_MemSet @           FW_PortRead @          FW_PortWrite @           T   ^  ADSCLEAREVENTS @%      E_IOAccessSize    
   E_OpenPath       E_SeekOrigin       E_TcEventClass       E_TcEventClearModes       E_TcEventPriority       E_TcEventStreamType       E_UsrLED_Color       E_WATCHDOG_TIME_CONFIG       ExpressionResult       PVOID       SFCActionType       SFCStepType       ST_AdsBaDevApiHead       ST_AdsBaDevApiIoCtlModifier       ST_AdsBaDevApiReq       ST_AdsCallGenericFbExReq       ST_AdsRdWrtListHead       ST_AdsRdWrtListPara       ST_AdsReadWriteListEntry    
   ST_AmsAddr       ST_StructMemberAlignmentProbe       ST_WD_GPIO_Info       ST_WD_GPIO_InfoEx       SYSTEMINFOTYPE       SYSTEMTASKINFOTYPE    
   T_AmsNetId       T_AmsNetIdArr    	   T_AmsPort    
   T_IPv4Addr       T_IPv4AddrArr       T_MaxString       T_U64KAFFINITY       TcEvent       UXINT       XINT       XWORD                   ADSLOGDINT @           ADSLOGEVENT @           ADSLOGLREAL @           ADSLOGSTR @           ADSRDDEVINFO @           ADSRDSTATE @           ADSRDWRT @           ADSRDWRTEX @           ADSRDWRTIND @           ADSRDWRTRES @           ADSREAD @           ADSREADEX @           ADSREADIND @           ADSREADRES @           ADSWRITE @           ADSWRITEIND @           ADSWRITERES @           ADSWRTCTL @           AnalyzeExpression @          AnalyzeExpressionCombined @          AnalyzeExpressionTable @          AppendErrorString @          BAVERSION_TO_DWORD @          CLEARBIT32 @           CSETBIT32 @           DRAND @           F_CompareFwVersion @          F_CreateAmsNetId @           F_CreateIPv4Addr @           F_GetStructMemberAlignment @          F_GetVersionTcSystem @           F_IOPortRead @          F_IOPortWrite @          F_ScanAmsNetIds @          F_ScanIPv4AddrIds @          F_SplitPathName @          F_ToASC @          F_ToCHR @          FB_AdsReadWriteList @          FB_BaDeviceIoControl @          FB_BaGenGetVersion @          FB_CreateDir @          FB_EOF @           FB_FileClose @           FB_FileDelete @           FB_FileGets @           FB_FileOpen @           FB_FilePuts @           FB_FileRead @           FB_FileRename @           FB_FileSeek @           FB_FileTell @           FB_FileWrite @           FB_PcWatchdog @          FB_PcWatchdog_BAPI @          FB_RemoveDir @          FB_SetLedColor_BAPI @          FB_SimpleAdsLogEvent @          FILECLOSE @           FILEOPEN @           FILEREAD @           FILESEEK @           FILEWRITE @           FW_CallGenericFb @          FW_CallGenericFbEx @          FW_CallGenericFun @          GETBIT32 @           GETCPUACCOUNT @           GETCPUCOUNTER @           GETCURTASKINDEX @           GETSYSTEMTIME @           GETTASKTIME @          LPTSIGNAL @           MEMCMP @           MEMCPY @           MEMMOVE @           MEMSET @           ROL32 @           ROR32 @           SETBIT32 @           SFCActionControl @           SHL32 @           SHR32 @              Global_Variables @        g   �  Get_ModbusRTU_Version @      MB_KL6inData       MB_KL6inData22B       MB_KL6inData5B       MB_KL6outData       MB_KL6outData22B       MB_KL6outData5B       MB_PcComInData       MB_PcComOutData       MBcomDebugBuffer       MBserialLineMode_t       MODBUS_ERRORS       MODBUS_FUNCTIONS       MODBUS_MEMORYTYPE       MODBUS_STATES       MODBUS_UNITID       ModbusComBuffer       ST_ModbusCom       ST_ModbusComBuffers       ST_ModbusCRC16       ST_ModbusErrorDiagnostics                  ModbusAddressValid @          ModbusCRC16 @          ModbusReadBits @          ModbusReadReg @          ModbusReceiveByte @          ModbusReceiveModData @          ModbusRtuMaster @       )   ModbusRtuMaster._ModbusMasterAction @       !   ModbusRtuMaster.Diagnostics @          ModbusRtuMaster.ReadCoils @       #   ModbusRtuMaster.ReadInputRegs @       %   ModbusRtuMaster.ReadInputStatus @          ModbusRtuMaster.ReadRegs @       (   ModbusRtuMaster.WriteMultipleCoils @          ModbusRtuMaster.WriteRegs @       %   ModbusRtuMaster.WriteSingleCoil @       )   ModbusRtuMaster.WriteSingleRegister @          ModbusRtuMaster_KL6x22B @       )   ModbusRtuMaster_KL6x22B.Diagnostics @       '   ModbusRtuMaster_KL6x22B.ReadCoils @       +   ModbusRtuMaster_KL6x22B.ReadInputRegs @       -   ModbusRtuMaster_KL6x22B.ReadInputStatus @       &   ModbusRtuMaster_KL6x22B.ReadRegs @       0   ModbusRtuMaster_KL6x22B.WriteMultipleCoils @       '   ModbusRtuMaster_KL6x22B.WriteRegs @       -   ModbusRtuMaster_KL6x22B.WriteSingleCoil @       1   ModbusRtuMaster_KL6x22B.WriteSingleRegister @          ModbusRtuMaster_KL6x5B @       (   ModbusRtuMaster_KL6x5B.Diagnostics @       &   ModbusRtuMaster_KL6x5B.ReadCoils @       *   ModbusRtuMaster_KL6x5B.ReadInputRegs @       ,   ModbusRtuMaster_KL6x5B.ReadInputStatus @       %   ModbusRtuMaster_KL6x5B.ReadRegs @       /   ModbusRtuMaster_KL6x5B.WriteMultipleCoils @       &   ModbusRtuMaster_KL6x5B.WriteRegs @       ,   ModbusRtuMaster_KL6x5B.WriteSingleCoil @       0   ModbusRtuMaster_KL6x5B.WriteSingleRegister @          ModbusRtuMaster_PcCOM @       '   ModbusRtuMaster_PcCOM.Diagnostics @       %   ModbusRtuMaster_PcCOM.ReadCoils @       )   ModbusRtuMaster_PcCOM.ReadInputRegs @       +   ModbusRtuMaster_PcCOM.ReadInputStatus @       $   ModbusRtuMaster_PcCOM.ReadRegs @       .   ModbusRtuMaster_PcCOM.WriteMultipleCoils @       %   ModbusRtuMaster_PcCOM.WriteRegs @       +   ModbusRtuMaster_PcCOM.WriteSingleCoil @       /   ModbusRtuMaster_PcCOM.WriteSingleRegister @          ModbusRtuMasterV2 @       +   ModbusRtuMasterV2._ModbusMasterAction @       #   ModbusRtuMasterV2.Diagnostics @       !   ModbusRtuMasterV2.ReadCoils @       %   ModbusRtuMasterV2.ReadInputRegs @       '   ModbusRtuMasterV2.ReadInputStatus @           ModbusRtuMasterV2.ReadRegs @       %   ModbusRtuMasterV2.ReadWriteRegs @       *   ModbusRtuMasterV2.WriteMultipleCoils @       !   ModbusRtuMasterV2.WriteRegs @       '   ModbusRtuMasterV2.WriteSingleCoil @       +   ModbusRtuMasterV2.WriteSingleRegister @          ModbusRtuMasterV2_KL6x22B @       +   ModbusRtuMasterV2_KL6x22B.Diagnostics @       )   ModbusRtuMasterV2_KL6x22B.ReadCoils @       -   ModbusRtuMasterV2_KL6x22B.ReadInputRegs @       /   ModbusRtuMasterV2_KL6x22B.ReadInputStatus @       (   ModbusRtuMasterV2_KL6x22B.ReadRegs @       -   ModbusRtuMasterV2_KL6x22B.ReadWriteRegs @       2   ModbusRtuMasterV2_KL6x22B.WriteMultipleCoils @       )   ModbusRtuMasterV2_KL6x22B.WriteRegs @       /   ModbusRtuMasterV2_KL6x22B.WriteSingleCoil @       3   ModbusRtuMasterV2_KL6x22B.WriteSingleRegister @          ModbusRtuMasterV2_KL6x5B @       *   ModbusRtuMasterV2_KL6x5B.Diagnostics @       (   ModbusRtuMasterV2_KL6x5B.ReadCoils @       ,   ModbusRtuMasterV2_KL6x5B.ReadInputRegs @       .   ModbusRtuMasterV2_KL6x5B.ReadInputStatus @       '   ModbusRtuMasterV2_KL6x5B.ReadRegs @       ,   ModbusRtuMasterV2_KL6x5B.ReadWriteRegs @       1   ModbusRtuMasterV2_KL6x5B.WriteMultipleCoils @       (   ModbusRtuMasterV2_KL6x5B.WriteRegs @       .   ModbusRtuMasterV2_KL6x5B.WriteSingleCoil @       2   ModbusRtuMasterV2_KL6x5B.WriteSingleRegister @          ModbusRtuMasterV2_PcCOM @       )   ModbusRtuMasterV2_PcCOM.Diagnostics @       '   ModbusRtuMasterV2_PcCOM.ReadCoils @       +   ModbusRtuMasterV2_PcCOM.ReadInputRegs @       -   ModbusRtuMasterV2_PcCOM.ReadInputStatus @       &   ModbusRtuMasterV2_PcCOM.ReadRegs @       +   ModbusRtuMasterV2_PcCOM.ReadWriteRegs @       0   ModbusRtuMasterV2_PcCOM.WriteMultipleCoils @       '   ModbusRtuMasterV2_PcCOM.WriteRegs @       -   ModbusRtuMasterV2_PcCOM.WriteSingleCoil @       1   ModbusRtuMasterV2_PcCOM.WriteSingleRegister @          ModbusRtuSlave @       &   ModbusRtuSlave.ActGetMemoryRange @          ModbusRtuSlave_KL6x22B @          ModbusRtuSlave_KL6x5B @          ModbusRtuSlave_PcCOM @          ModbusSendModData @          ModbusSerialLineControl @          ModbusWriteBit @          ModbusWriteBits @          ModbusWriteReg @             Global_Variables_Modbus @       c   �  F_ByteSwap @;      ControlActiveConfiguration_t       E_BatteryStatus       E_IOACCESSTYPE       E_PD_Datatype       E_PD_Dpv1Error       E_PD_DriveType       E_PD_SaveType    
   E_PD_State       E_SercosAttribLen       E_SercosAttribType       E_SercosBackupState       E_SercosParamDataType       E_UpsCommStatus       E_UpsPowerStatus       FC310X_DIAG_DATA       FC510X_DIAG_DATA       GetErrorInfo_t       HLword_t       IODEVICETYPES       ReadResult_t       ST_AdsTecSysData       ST_Dpv1Header       ST_Dpv1ParamAddr       ST_Dpv1ParamAddrEx       ST_Dpv1ValueHeader       ST_Dpv1ValueHeaderEx       ST_KL1501InData       ST_KL1501OutData       ST_KL27x1InData       ST_KL27x1OutData       ST_KL3208InData       ST_KL3208OutData       ST_KL320xInData       ST_KL320xOutData       ST_KL3228InData       ST_KL3228OutData       ST_NovRamAddrInfo       ST_NovRamAddrInfoEx       ST_Parameter_IN       ST_Parameter_OUT       ST_ParameterBuffer       ST_PD_CUDriveInfo       ST_PD_DOIdentification       ST_PD_Dpv1Error       ST_PD_DriveDiag       ST_PNET_CCDSTS       ST_PNIOConfigRecord       ST_PNIORecord       ST_PNIOState    	   ST_PZD_IN    
   ST_PZD_OUT       ST_SercosFileHeader       ST_SercosParamAttrib       ST_SercosParamData       ST_SercosParamErrList       ST_SercosParamHeader       ST_SercosParamList       ST_SercosString       ST_UPSStatus                  F_CheckForSwapBytes @          F_CreateDpv1ReadReqPkg @           F_CreateDpv1ReadReqPkgPNET @          F_CreateDpv1WriteReqPkg @       !   F_CreateDpv1WriteReqPkgPNET @          F_GetDataString @          F_GetPDTypeSize @          F_GetVersionTcIoFunctions @           F_SplitDpv1ReadResPkg @          F_SplitDpv1ReadResPkgPNET @          F_SplitDpv1WriteResPkg @           F_SplitDpv1WriteResPkgPNET @          FB_ASI_Addressing @           FB_ASI_ParameterControl @          FB_ASI_Parameterinterface @           FB_ASI_Processdata_analog @            FB_ASI_Processdata_digital @           FB_ASI_Projecting @           FB_ASI_ReadParameter @           FB_ASI_SlaveDiag @           FB_ASI_WriteParameter @           FB_ASI_WriteReadParameter @          FB_AX2000_AXACT @        !   FB_AX2000_AXACT.a_MapInputs @       "   FB_AX2000_AXACT.a_MapOutputs @       #   FB_AX2000_AXACT.a_RW_CtrlWord @          FB_AX2000_AXACT.a_RW_PZD @          FB_AX2000_JogMode @        #   FB_AX2000_JogMode.a_MapInputs @       $   FB_AX2000_JogMode.a_MapOutputs @          FB_AX2000_Parameter @           FB_AX2000_Reference @        %   FB_AX2000_Reference.a_MapInputs @       &   FB_AX2000_Reference.a_MapOutputs @          FB_AX200X_Profibus @           FB_Dpv1Read @          FB_Dpv1ReadPNET @          FB_Dpv1Write @          FB_Dpv1WritePNET @          FB_FCxxxxDpv0PkwRead @           FB_FCxxxxDpv0PkwWrite @           FB_GetDPRAMInfo @          FB_GetDPRAMInfoEx @          FB_GetUPSStatus @          FB_KL1501Config @       '   FB_KL1501Config.A_ReadConfigTable @       &   FB_KL1501Config.A_SetConfigTable @          FB_KL27x1Config @       '   FB_KL27x1Config.A_ReadConfigTable @       &   FB_KL27x1Config.A_SetConfigTable @          FB_KL3208Config @       '   FB_KL3208Config.A_ReadConfigTable @       &   FB_KL3208Config.A_SetConfigTable @          FB_KL320xConfig @       '   FB_KL320xConfig.A_ReadConfigTable @       &   FB_KL320xConfig.A_SetConfigTable @          FB_KL3228Config @       '   FB_KL3228Config.A_ReadConfigTable @       &   FB_KL3228Config.A_SetConfigTable @          FB_NovRamReadWrite @           FB_NovRamReadWriteEx @          FB_ReadAdsTecSysData @          FB_ReadInput_analog @          FB_WriteOutput_analog @          IOF_CAN_Layer2Command @           IOF_DeviceReset @           IOF_GetBoxAddrByName @           IOF_GetBoxAddrByNameEx @           IOF_GetBoxCount @           IOF_GetBoxNameByAddr @           IOF_GetBoxNetId @           IOF_GetDeviceCount @           IOF_GetDeviceIDByName @           IOF_GetDeviceIDs @           IOF_GetDeviceInfoByName @           IOF_GetDeviceName @           IOF_GetDeviceNetId @           IOF_GetDeviceType @           IOF_LB_BreakLocationTest @           IOF_LB_ParityCheck @        !   IOF_LB_ParityCheckWithReset @           IOF_SER_DRIVE_Backup @           IOF_SER_DRIVE_BackupEx @          IOF_SER_DRIVE_Reset @           IOF_SER_GetPhase @           IOF_SER_IDN_Read @           IOF_SER_IDN_Write @           IOF_SER_ResetErr @           IOF_SER_SaveFlash @           IOF_SER_SetPhase @            SCIT_ActivateConfiguration @           SCIT_AlarmStop @           SCIT_ConfDevErrAll @        %   SCIT_ControlActiveConfiguration @        "   SCIT_DeactivateConfiguration @           SCIT_GetErrorInfo @           SCIT_StartDataTransfer @           SCIT_StopDataTransfer @              Globale_Variablen @        J    ARG_TO_CSVFIELD @@      ADSDATATYPEID       E_AmsLoggerMode    	   E_ArgType       E_DbgContext       E_DbgDirection       E_EnumCmdType       E_FileRBufferCmd       E_HashPrefixTypes       E_MIB_IF_Type       E_NumGroupTypes       E_PersistentMode       E_PrefixFlagParam       E_RegValueType       E_RouteTransportType    
   E_SBCSType       E_ScopeServerState       E_TimeZoneID       E_TypeFieldParam       E_UTILITIES_ERRORCODES       GUID       OTSTRUCT       PROFILERSTRUCT       REMOTEPC       REMOTEPCINFOSTRUCT       ST_AmsFindFileSystemEntry       ST_AmsGetTimeZoneInformation       ST_AmsLoggerReq       ST_AmsRouteEntry       ST_AmsRouteEntryHead       ST_AmsRouterInfoEntry       ST_AmsRouteSystemEntry       ST_AmsStartProcessReq       ST_AmsSymbolInfoEntry       ST_DeviceIdentification       ST_DeviceIdentificationEx       ST_FileAttributes       ST_FileRBufferHead       ST_FindFileEntry       ST_FormatParameters       ST_HKeySrvRead       ST_HKeySrvWrite       ST_IP_ADAPTER_INFO       ST_IP_ADDR_STRING       ST_IPAdapterHwAddr       ST_IPAdapterInfo       ST_SBCSTable    #   ST_ScopeServerRecordModeDescription       ST_TcRouterStatusInfo       ST_TimeZoneInformation       SYMINFO_BUFFER       SYMINFOSTRUCT       T_Arg    
   T_FILETIME       T_FIX16    
   T_FloatRec       T_HashTableEntry       T_HHASHTABLE       T_HLINKEDLIST       T_HUGE_INTEGER       T_LARGE_INTEGER       T_LinkedListEntry       T_UHUGE_INTEGER       T_ULARGE_INTEGER    
   TIMESTRUCT                  BCD_TO_DEC @           BE128_TO_HOST @          BE16_TO_HOST @          BE32_TO_HOST @          BE64_TO_HOST @          BYTE_TO_BINSTR @          BYTE_TO_DECSTR @          BYTE_TO_HEXSTR @          BYTE_TO_LREALEX @          BYTE_TO_OCTSTR @          BYTEARR_TO_MAXSTRING @          CSVFIELD_TO_ARG @          CSVFIELD_TO_STRING @          DATA_TO_HEXSTR @          DCF77_TIME @          DCF77_TIME_EX @          DEC_TO_BCD @           DEG_TO_RAD @           DINT_TO_DECSTR @          DT_TO_FILETIME @          DT_TO_SYSTEMTIME @           DWORD_TO_BINSTR @          DWORD_TO_DECSTR @          DWORD_TO_HEXSTR @          DWORD_TO_LREALEX @          DWORD_TO_OCTSTR @          F_ARGCMP @          F_ARGCPY @          F_ARGIsZero @          F_BIGTYPE @          F_BOOL @          F_BYTE @           F_BYTE_TO_CRC16_CCITT @          F_CheckSum16 @           F_CRC16_CCITT @           F_CreateHashTableHnd @          F_CreateLinkedListHnd @          F_DATA_TO_CRC16_CCITT @          F_DINT @           F_DWORD @           F_FormatArgToStr @          F_GetDayOfMonthEx @          F_GetDayOfWeek @          F_GetDOYOfYearMonthDay @          F_GetFloatRec @          F_GetMaxMonthDays @          F_GetMonthOfDOY @          F_GetVersionTcUtilities @           F_GetWeekOfTheYear @          F_HUGE @          F_INT @           F_LARGE @          F_LREAL @           F_LTrim @          F_PVOID @          F_REAL @           F_RTrim @          F_SINT @           F_STRING @           F_SwapReal @           F_SwapRealEx @          F_ToLCase @          F_ToUCase @          F_TranslateFileTimeBias @          F_UDINT @           F_UHUGE @          F_UINT @           F_ULARGE @          F_USINT @           F_WORD @           F_YearIsLeapYear @          FB_AddRouteEntry @          FB_AmsLogger @          FB_BasicPID @           FB_BufferedTextFileWriter @       '   FB_BufferedTextFileWriter.A_Reset @          FB_ConnectScopeServer @          FB_CSVMemBufferReader @          FB_CSVMemBufferWriter @          FB_DbgOutputCtrl @          FB_DbgOutputCtrl.A_Log @          FB_DbgOutputCtrl.A_LogHex @          FB_DbgOutputCtrl.A_Reset @          FB_DisconnectScopeServer @          FB_EnumFindFileEntry @          FB_EnumFindFileList @          FB_EnumRouteEntry @          FB_EnumStringNumbers @          FB_FileRingBuffer @       !   FB_FileRingBuffer.A_AddTail @          FB_FileRingBuffer.A_Close @           FB_FileRingBuffer.A_Create @       !   FB_FileRingBuffer.A_GetHead @          FB_FileRingBuffer.A_Open @       $   FB_FileRingBuffer.A_RemoveHead @          FB_FileRingBuffer.A_Reset @       &   FB_FileTimeToTzSpecificLocalTime @       .   FB_FileTimeToTzSpecificLocalTime.A_Reset @          FB_FormatString @           FB_GetAdaptersInfo @           FB_GetDeviceIdentification @       "   FB_GetDeviceIdentificationEx @          FB_GetHostAddrByName @          FB_GetHostName @          FB_GetLocalAmsNetId @          FB_GetRouterStatusInfo @          FB_GetTimeZoneInformation @          FB_HashTableCtrl @          FB_HashTableCtrl.A_Add @       !   FB_HashTableCtrl.A_GetFirst @       )   FB_HashTableCtrl.A_GetIndexAtPosPtr @           FB_HashTableCtrl.A_GetNext @          FB_HashTableCtrl.A_Lookup @          FB_HashTableCtrl.A_Remove @       "   FB_HashTableCtrl.A_RemoveAll @       $   FB_HashTableCtrl.A_RemoveFirst @          FB_HashTableCtrl.A_Reset @          FB_LinkedListCtrl @       &   FB_LinkedListCtrl.A_AddHeadValue @       &   FB_LinkedListCtrl.A_AddTailValue @       "   FB_LinkedListCtrl.A_FindNext @       "   FB_LinkedListCtrl.A_FindPrev @       !   FB_LinkedListCtrl.A_GetHead @       *   FB_LinkedListCtrl.A_GetIndexAtPosPtr @       !   FB_LinkedListCtrl.A_GetNext @       !   FB_LinkedListCtrl.A_GetPrev @       !   FB_LinkedListCtrl.A_GetTail @       )   FB_LinkedListCtrl.A_RemoveHeadValue @       )   FB_LinkedListCtrl.A_RemoveTailValue @       -   FB_LinkedListCtrl.A_RemoveValueAtPosPtr @          FB_LinkedListCtrl.A_Reset @       *   FB_LinkedListCtrl.A_SetValueAtPosPtr @          FB_LocalSystemTime @          FB_MemBufferMerge @          FB_MemBufferSplit @          FB_MemRingBuffer @           FB_MemRingBuffer.A_AddTail @           FB_MemRingBuffer.A_GetHead @       #   FB_MemRingBuffer.A_RemoveHead @          FB_MemRingBuffer.A_Reset @          FB_MemRingBufferEx @       "   FB_MemRingBufferEx.A_AddTail @       #   FB_MemRingBufferEx.A_FreeHead @       &   FB_MemRingBufferEx.A_GetFreeSize @       "   FB_MemRingBufferEx.A_GetHead @           FB_MemRingBufferEx.A_Reset @          FB_MemStackBuffer @          FB_MemStackBuffer.A_Pop @          FB_MemStackBuffer.A_Push @          FB_MemStackBuffer.A_Reset @          FB_MemStackBuffer.A_Top @          FB_RegQueryValue @           FB_RegSetValue @           FB_RemoveRouteEntry @           FB_ResetScopeServerControl @          FB_SaveScopeServerData @          FB_ScopeServerControl @          FB_SetTimeZoneInformation @          FB_StartScopeServer @          FB_StopScopeServer @          FB_StringRingBuffer @       #   FB_StringRingBuffer.A_AddTail @       #   FB_StringRingBuffer.A_GetHead @       &   FB_StringRingBuffer.A_RemoveHead @       !   FB_StringRingBuffer.A_Reset @       (   FB_SystemTimeToTzSpecificLocalTime @       0   FB_SystemTimeToTzSpecificLocalTime.A_Reset @          FB_TextFileRingBuffer @       %   FB_TextFileRingBuffer.A_AddTail @       #   FB_TextFileRingBuffer.A_Close @       "   FB_TextFileRingBuffer.A_Open @       #   FB_TextFileRingBuffer.A_Reset @       (   FB_TranslateLocalTimeToUtcByZoneID @       0   FB_TranslateLocalTimeToUtcByZoneID.A_Reset @       (   FB_TranslateUtcToLocalTimeByZoneID @       0   FB_TranslateUtcToLocalTimeByZoneID.A_Reset @       &   FB_TzSpecificLocalTimeToFileTime @       .   FB_TzSpecificLocalTimeToFileTime.A_Reset @       (   FB_TzSpecificLocalTimeToSystemTime @       0   FB_TzSpecificLocalTimeToSystemTime.A_Reset @          FB_WritePersistentData @          FILETIME_TO_DT @          FILETIME_TO_SYSTEMTIME @          FIX16_TO_LREAL @          FIX16_TO_WORD @          FIX16Add @          FIX16Align @          FIX16Div @          FIX16Mul @          FIX16Sub @          GetRemotePCInfo @           GUID_TO_REGSTRING @          GUID_TO_STRING @          GuidsEqualByVal @          HEXASCNIBBLE_TO_BYTE @          HEXCHRNIBBLE_TO_BYTE @          HEXSTR_TO_DATA @          HOST_TO_BE128 @          HOST_TO_BE16 @          HOST_TO_BE32 @          HOST_TO_BE64 @          INT64_TO_LREAL @          Int64Add64 @          Int64Add64Ex @          Int64Cmp64 @          Int64Div64Ex @          Int64IsZero @          Int64Negate @          Int64Not @          Int64Sub64 @          IsFinite @          LARGE_INTEGER @          LARGE_TO_ULARGE @          LREAL_TO_FIX16 @          LREAL_TO_FMTSTR @          LREAL_TO_INT64 @          LREAL_TO_UINT64 @          MAXSTRING_TO_BYTEARR @          NT_AbortShutdown @           NT_GetTime @           NT_Reboot @           NT_SetLocalTime @          NT_SetTimeToRTCTime @           NT_Shutdown @           NT_StartProcess @           OTSTRUCT_TO_TIME @           PBOOL_TO_BOOL @          PBYTE_TO_BYTE @          PDATE_TO_DATE @          PDINT_TO_DINT @          PDT_TO_DT @          PDWORD_TO_DWORD @          PHUGE_TO_HUGE @          PINT_TO_INT @          PLARGE_TO_LARGE @          PLC_ReadSymInfo @           PLC_ReadSymInfoByName @           PLC_ReadSymInfoByNameEx @           PLC_Reset @           PLC_Start @           PLC_Stop @           PLREAL_TO_LREAL @          PMAXSTRING_TO_MAXSTRING @          PREAL_TO_REAL @          Profiler @           PSINT_TO_SINT @          PSTRING_TO_STRING @          PTIME_TO_TIME @          PTOD_TO_TOD @          PUDINT_TO_UDINT @          PUHUGE_TO_UHUGE @          PUINT64_TO_UINT64 @          PUINT_TO_UINT @          PULARGE_TO_ULARGE @          PUSINT_TO_USINT @          PVOID_TO_BINSTR @          PVOID_TO_DECSTR @          PVOID_TO_HEXSTR @          PVOID_TO_OCTSTR @          PVOID_TO_STRING @          PWORD_TO_WORD @          RAD_TO_DEG @           REGSTRING_TO_GUID @          ROUTETRANSPORT_TO_STRING @       	   RTC @          RTC_EX @          RTC_EX2 @          ScopeASCIIExport @           ScopeExit @          ScopeGetRecordLen @           ScopeGetState @           ScopeLoadFile @           ScopeManualTrigger @           ScopeSaveAs @          ScopeSetOffline @           ScopeSetOnline @           ScopeSetRecordLen @           ScopeViewExport @           STRING_TO_CSVFIELD @          STRING_TO_GUID @          STRING_TO_PVOID @          STRING_TO_SYSTEMTIME @          STRING_TO_UINT64 @          SYSTEMTIME_TO_DT @           SYSTEMTIME_TO_FILETIME @          SYSTEMTIME_TO_STRING @          TC_Config @          TC_CpuUsage @           TC_Restart @           TC_Stop @           TC_SysLatency @           TIME_TO_OTSTRUCT @           UDINT_TO_LREALEX @          UInt32x32To64 @          UINT64_TO_LREAL @          UINT64_TO_STRING @          UInt64Add64 @          UInt64Add64Ex @          UInt64And @          UInt64Cmp64 @          UInt64Div16Ex @          UInt64Div64 @          UInt64Div64Ex @          UInt64isZero @          UInt64Limit @          UInt64Max @          UInt64Min @          UInt64Mod64 @          UInt64Mul64 @          UInt64Mul64Ex @          UInt64Not @          UInt64Or @          UInt64Rol @          UInt64Ror @          UInt64Shl @          UInt64Shr @          UInt64Sub64 @          UInt64Xor @          UINT_TO_LREALEX @          ULARGE_INTEGER @          ULARGE_TO_LARGE @          USINT_TO_LREALEX @          WORD_TO_BINSTR @          WORD_TO_DECSTR @          WORD_TO_FIX16 @          WORD_TO_HEXSTR @          WORD_TO_LREALEX @          WORD_TO_OCTSTR @          WritePersistentData @              Global_Variables @              CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                        , � � ��           2                ����������������  
             ����                  ����, N N r\                      POUs                Intern                 FB_Mqtt_DecodeLength_V10  �                  FB_Mqtt_EncodeLength_V10  �                 FB_Mqtt_Receive_V10                ClearReceivedPublishTelegram  �  �                  FB_Mqtt_Send_V10  �                  FB_MqttTelegram_Connect_V10  �                  FB_MqttTelegram_PingReq_V10  �                  FC_Mqtt_ClearTelegram_V10  �                  FC_Mqtt_CopyTelegram_V10  �  ����                Counters  !                   Door  2                  F_CRC16  s                  FB_GET_HIST_MERC200  _                  FB_GET_RUN_MERC200  `                 FB_Mqtt_Controller_V10                CallMqttBlocks  �  �                  FB_Mqtt_Publish_V10  �                  FB_Mqtt_Subscribe_V10  �                  Fluid  "                
   Fluid_bath  �                  Fluid_kitchen  �               
   Light_hall  6                  MAIN  #                   Mqtt  9              	   RS485read  \                  Sensors  8                  SM_BUTT  %                   VentControl  7               	   VentPower  '   ����           
   Data types                iobroker_Struct  �                  ST_MqttReceivedPublishTelegram  �                  ST_MqttSettings  �                  ST_MqttTelegram  �  ����             Visualizations  ����              Global Variables                Global_Variables                     Global_Variables_persistent  �                  TwinCAT_Configuration  (                   Variable_Configuration  �  ����                                                              7�\                         	   localhost            P      	   localhost            P      	   localhost            P             Amc0