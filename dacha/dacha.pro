CoDeSys+                     @        @   2.3.9.50    @/    @                             UЭ{] +    @                       7ц\        9ћ  @	   q   C:\TwinCAT\PLC\LIB\standard.lib @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         Г66     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             Г66     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             Г66     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             Г66     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         Г66     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             Г66     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     Г66     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         Г66     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         Г66     џџџџ           LEN               STR               §џ                 LEN                                     Г66     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         Г66     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             Г66     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         Г66     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         Г66     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       Г66     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       Г66     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       Г66     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             Г66     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             Г66     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             Г66     џџџџ    n   C:\TwinCAT\PLC\LIB\TcpIp.lib @                                                                                          F_GETVERSIONTCPIP               nVersionElement           §џ                 F_GetVersionTcpIp                                     в^ЮR      џџџџ           FB_SOCKETACCEPT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_ACCEPT )        ADSRDWRT ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              response                ST_TcIpConnSvrResponse ` §џ              request                ST_SockAddr ` §џ              	   sSrvNetId           ''     
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system	   hListener              	   T_HSOCKET   §џ       x    Listener handle identifying a socket that has been placed in a listening state with the FB_SocketListen function block    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.    	   bAccepted            §џ
       ;    TRUE = new connection is made. FALSE = no new connection.    bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET   §џ       V   This returned value is a handle for the socket on which the actual connection is made.            в^ЮR      џџџџ           FB_SOCKETCLOSE        
   fbAdsWrite       V    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CLOSEBYHDL, SRCADDR := 0, LEN := 0 )        ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''     
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       4    Local or remote client or listener socket to close.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       в^ЮR      џџџџ           FB_SOCKETCLOSEALL        
   fbAdsWrite       y    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CLOSEALL, SRCADDR := 0, LEN := 0 )        ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''     
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ	              bError            §џ
              nErrId           §џ                       в^ЮR      џџџџ           FB_SOCKETCONNECT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CONNECT )        ADSRDWRT ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              request                ST_SockAddr ` §џ              response                ST_TcIpConnSvrResponse ` §џ              	   sSrvNetId           ''     
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   sRemoteHost               §џ       X    Remote (server) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       .    Remote (server) Internet Protocol (IP) port.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ШЏ     §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET   §џ       V   This returned value is a handle for the socket on which the actual connection is made.            в^ЮR      џџџџ           FB_SOCKETLISTEN        
   fbAdsRdWrt       ]    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_LISTEN )        ADSRDWRT ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              request                ST_SockAddr ` §џ              response                ST_TcIpConnSvrResponse ` §џ              	   sSrvNetId           ''     
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               §џ       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ       -    Local (server) Internet Protocol (IP) port.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ           	   hListener              	   T_HSOCKET   §џ       _   This returned value is a handle for the listener socket on which the actual connection is made.            в^ЮR      џџџџ           FB_SOCKETRECEIVE           fbAdsReadEx       <    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVBYHDL )     	   ADSREADEX ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''     
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       3    Contains the max. number of bytes to be received.    pDest           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ           	   nRecBytes           §џ       2    Contains the number of bytes currently received.             в^ЮR      џџџџ           FB_SOCKETSEND        
   fbAdsWrite       >    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDBYHDL )        ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''     
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       *    Contains the number of bytes to be send.    pSrc           §џ       D    Contains the address of the buffer containing the data to be send.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       в^ЮR      џџџџ           FB_SOCKETUDPADDMULTICASTADDRESS        
   fbAdsWrite       E    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_MULTICAST_ADDBYHDL )        ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''     
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       )    udp socket to add multicast address  to.   sMulticastAddr               §џ          Multicast address to add   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       в^ЮR      џџџџ           FB_SOCKETUDPCREATE        
   fbAdsRdWrt       ^    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_UDPBIND )        ADSRDWRT ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              request                ST_SockAddr ` §џ              response                ST_TcIpConnSvrResponse ` §џ              	   sSrvNetId           ''     
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               §џ       N    Local address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ	       $    Local Internet Protocol (IP) port.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET   §џ       ?   This returned value is a handle for the bind (reserved) socket.            в^ЮR      џџџџ            FB_SOCKETUDPDROPMULTICASTADDRESS        
   fbAdsWrite       F    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_MULTICAST_DROPBYHDL )        ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''     
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       .    udp socket to remove multicast address  from.   sMulticastAddr               §џ          Multicast address to remove   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       в^ЮR      џџџџ           FB_SOCKETUDPRECEIVEFROM           fbAdsReadEx       @    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVFROMBYHDL )     	   ADSREADEX ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              buffer                ST_TcIpConnSvrUdpBuffer ` §џ              	   sSrvNetId           ''     
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       3    Contains the max. number of bytes to be received.    pDest           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              sRemoteHost               §џ       p    Remote address from which the data was received. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       G    Remote Internet Protocol (IP) port  from which the data was received. 	   nRecBytes           §џ       2    Contains the number of bytes currently received.             в^ЮR      џџџџ           FB_SOCKETUDPSENDTO        
   fbAdsWrite       @    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDTOBYHDL )        ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              buffer                ST_TcIpConnSvrUdpBuffer ` §џ              	   sSrvNetId           ''     
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    sRemoteHost               §џ       d    Remote address of the target socket. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       :    Remote Internet Protocol (IP) port of the target socket.    cbLen           §џ       *    Contains the number of bytes to be send.    pSrc           §џ	       D    Contains the address of the buffer containing the data to be send.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       в^ЮR      џџџџ    o   C:\TwinCAT\PLC\LIB\TcBase.lib @                                                                                          FW_ADSCLEAREVENTS           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ           
   READ_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              bClear            §џ              nMode           §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       АЖJ     џџџџ           FW_ADSLOGDINT            	   nCtrlMask           §џ              sMsgFmt               §џ              nArg           §џ                 FW_AdsLogDINT                                     АЖJ     џџџџ           FW_ADSLOGEVENT        
   STAMPREQ_I            §џ           
   STAMPRES_I            §џ           
   STAMPSIG_I            §џ           
   STAMPCON_I            §џ              ACCESSCNT_I            §џ           	   AMSADDR_I   	                         §џ              EVENT_I                      
   FW_TcEvent    §џ              pTCEVENTSTREAM_I            §џ              CBEVENTSTREAM_I            §џ              nSTATE_I            §џ              nSTATEREQ_I            §џ              nSTATERES_I            §џ              nSTATESIG_I            §џ               nSTATECON_I            §џ!              ERR_I             §џ"              ERRID_I            §џ#              bEVENT_SAV_I             §џ$              bEVENTQUIT_SAV_I             §џ%              TICKSTART_I            §џ&           	      sNetId               §џ              nPort           §џ              bEvent            §џ           
   bEventQuit            §џ              stEventConfigData                      
   FW_TcEvent   §џ              pEventDataAddress           §џ       	    pointer    cbEventDataLength           §џ	           
   bFbCleanup            §џ
              tTimeout           §џ                 nEventState           §џ              bError            §џ              nErrId           §џ              bQuit            §џ                       АЖJ     џџџџ           FW_ADSLOGLREAL            	   nCtrlMask           §џ              sMsgFmt               §џ              fArg                        §џ                 FW_AdsLogLREAL                                     АЖJ     џџџџ           FW_ADSLOGSTR            	   nCtrlMask           §џ              sMsgFmt               §џ              sArg               §џ                 FW_AdsLogSTR                                     АЖJ     џџџџ           FW_ADSRDWRT           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRTRD_SAV_I             §џ              PDESTADDR_I            §џ              TICKSTART_I            §џ           
      sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           
   cbWriteLen           §џ           	   cbReadLen           §џ           
   pWriteBuff           §џ	           	   pReadBuff           §џ
              bExecute            §џ              tTimeout           §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read             АЖJ     џџџџ           FW_ADSRDWRTIND           CLEAR_I             §џ                 bClear            §џ           	      bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           	   cbReadLen           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ                       АЖJ     џџџџ           FW_ADSRDWRTRES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bRespond            §џ	                           АЖJ     џџџџ        
   FW_ADSREAD           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ           
   READ_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read             АЖJ     џџџџ           FW_ADSREADDEVICEINFO           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              RDINFO_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              bExecute            §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              sDevName               §џ              nDevVersion           §џ                       АЖJ     џџџџ           FW_ADSREADIND           CLEAR_I             §џ                 bClear            §џ                 bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           	   cbReadLen           §џ                       АЖJ     џџџџ           FW_ADSREADRES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bRespond            §џ	                           АЖJ     џџџџ           FW_ADSREADSTATE           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              RDSTATE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              bExecute            §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ           	   nAdsState           §џ           	   nDevState           §џ                       АЖJ     џџџџ           FW_ADSWRITE           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRITE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       АЖJ     џџџџ           FW_ADSWRITECONTROL           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRITE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ           	   nAdsState           §џ           	   nDevState           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       АЖJ     џџџџ           FW_ADSWRITEIND           CLEAR_I             §џ                 bClear            §џ                 bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ                       АЖJ     џџџџ           FW_ADSWRITERES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ              bRespond            §џ                           АЖJ     џџџџ           FW_DRAND           FirstCall_i             §џ	           
   HoldRand_i            §џ
              R250_Buffer_i   	  љ                        §џ           
   R250_Index            §џ                 nSeed           §џ                 fRndNum                        §џ                       АЖJ     џџџџ           FW_GETCPUACCOUNT                   dwCpuAccount           §џ                       АЖJ     џџџџ           FW_GETCPUCOUNTER                
   dwCpuCntLo           §џ           
   dwCpuCntHi           §џ                       АЖJ     џџџџ           FW_GETCURTASKINDEX                   nIndex           §џ                       АЖJ     џџџџ           FW_GETSYSTEMTIME                   dwTimeLo           §џ              dwTimeHi           §џ                       АЖJ     џџџџ           FW_GETVERSIONTCBASE               nVersionElement           §џ                 FW_GetVersionTcBase                                     АЖJ     џџџџ           FW_LPTSIGNAL            	   nPortAddr           §џ              nPinNo           §џ              bOnOff            §џ	                 FW_LptSignal                                      АЖJ     џџџџ        	   FW_MEMCMP               pBuf1           §џ           First buffer    pBuf2           §џ           Second buffer    cbLen           §џ           Number of characters    	   FW_MemCmp                                     АЖJ     џџџџ        	   FW_MEMCPY               pDest           §џ           New buffer    pSrc           §џ           Buffer to copy from    cbLen           §џ           Number of characters to copy    	   FW_MemCpy                                     АЖJ     џџџџ        
   FW_MEMMOVE               pDest           §џ           New buffer    pSrc           §џ           Buffer to copy from    cbLen           §џ           Number of characters to copy    
   FW_MemMove                                     АЖJ     џџџџ        	   FW_MEMSET               pDest           §џ           Pointer to destination 	   nFillByte           §џ           Character to set    cbLen           §џ           Number of characters    	   FW_MemSet                                     АЖJ     џџџџ           FW_PORTREAD            	   nPortAddr           §џ           	   eNoOfByte               FW_NoOfByte   §џ                 FW_PortRead                                     АЖJ     џџџџ           FW_PORTWRITE            	   nPortAddr           §џ           	   eNoOfByte               FW_NoOfByte   §џ              nValue           §џ                 FW_PortWrite                                      АЖJ     џџџџ    q   C:\TwinCAT\PLC\LIB\TcSystem.lib @                                                                                T          ADSCLEAREVENTS           fbAdsClearEvents                            FW_AdsClearEvents ` §џ                 NetID            
   T_AmsNetId   §џ              bClear            §џ              iMode           §џ              tTimeout         §џ                 bBusy            §џ	              bErr            §џ
              iErrId           §џ                       "UVW     џџџџ        
   ADSLOGDINT               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString   §џ              dintArg           §џ              
   ADSLOGDINT                                     "UVW      џџџџ           ADSLOGEVENT           fbAdsLogEvent                                               FW_AdsLogEvent ` §џ           	      NETID            
   T_AmsNetId   §џ              PORT           §џ              Event            §џ           	   EventQuit            §џ              EventConfigData               TcEvent   §џ              EventDataAddress           §џ       	    pointer    EventDataLength           §џ	           	   FbCleanup            §џ
              TMOUT         §џ              
   EventState           §џ              Err            §џ              ErrId           §џ              Quit            §џ                       "UVW     џџџџ           ADSLOGLREAL               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString   §џ              lrealArg                        §џ                 ADSLOGLREAL                                     "UVW      џџџџ        	   ADSLOGSTR               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString   §џ              strArg               T_MaxString   §џ              	   ADSLOGSTR                                     "UVW      џџџџ           ADSRDDEVINFO           fbAdsReadDeviceInfo                              FW_AdsReadDeviceInfo    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              RDINFO            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              DEVNAME               §џ              DEVVER           §џ                       "UVW     џџџџ        
   ADSRDSTATE           fbAdsReadState                              FW_AdsReadState    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              RDSTATE            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              ADSSTATE           §џ              DEVSTATE           §џ                       "UVW     џџџџ           ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt    §џ           
      NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ	              DESTADDR           §џ
              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       "UVW     џџџџ        
   ADSRDWRTEX        
   fbAdsRdWrt                                    FW_AdsRdWrt    §џ           
      NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ	              DESTADDR           §џ
              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             "UVW     џџџџ           ADSRDWRTIND           fbAdsRdWrtInd                         FW_AdsRdWrtInd    §џ                 CLEAR            §џ           	      VALID            §џ              NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              RDLENGTH           §џ           	   WRTLENGTH           §џ              DATAADDR           §џ                       "UVW      џџџџ           ADSRDWRTRES           fbAdsRdWrtRes                      FW_AdsRdWrtRes    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ              RESULT           §џ              LEN           §џ              DATAADDR           §џ              RESPOND            §џ	                           "UVW      џџџџ           ADSREAD        	   fbAdsRead                              
   FW_AdsRead    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       "UVW     џџџџ        	   ADSREADEX        	   fbAdsRead                              
   FW_AdsRead    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             "UVW     џџџџ        
   ADSREADIND           fbAdsReadInd        	               FW_AdsReadInd    §џ                 CLEAR            §џ                 VALID            §џ              NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              LENGTH           §џ                       "UVW      џџџџ        
   ADSREADRES           fbAdsReadRes                      FW_AdsReadRes    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ              RESULT           §џ              LEN           §џ              DATAADDR           §џ              RESPOND            §џ	                           "UVW      џџџџ           ADSWRITE        
   fbAdsWrite                                FW_AdsWrite    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       "UVW     џџџџ           ADSWRITEIND           fbAdsWriteInd        
                FW_AdsWriteInd    §џ                 CLEAR            §џ                 VALID            §џ              NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              LENGTH           §џ              DATAADDR           §џ                       "UVW      џџџџ           ADSWRITERES           fbAdsWriteRes                    FW_AdsWriteRes    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ              RESULT           §џ              RESPOND            §џ                           "UVW      џџџџ        	   ADSWRTCTL           fbAdsWriteControl                                FW_AdsWriteControl    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              ADSSTATE           §џ              DEVSTATE           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       "UVW     џџџџ           ANALYZEEXPRESSION               InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ           	   OutString               §џ                       "UVW      џџџџ           ANALYZEEXPRESSIONCOMBINED           Index            §џ                 InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ              OutTable   	                        ExpressionResult           §џ           	   OutString               §џ	                       "UVW      џџџџ           ANALYZEEXPRESSIONTABLE           Index            §џ                 InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ              OutTable   	                        ExpressionResult           §џ                       "UVW      џџџџ           APPENDERRORSTRING               strOld               §џ              strNew               §џ                 AppendErrorString                                         "UVW      џџџџ           BAVERSION_TO_DWORD               nVersion         ` §џ           	   nRevision         ` §џ	              nBuild         ` §џ
                 BAVERSION_TO_DWORD                                     "UVW      џџџџ        
   CLEARBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ              
   CLEARBIT32                                     "UVW      џџџџ        	   CSETBIT32           dwConst        ` §џ	                 inVal32           §џ              bitNo           §џ              bitVal            §џ       &    value to which the bit should be set    	   CSETBIT32                                     "UVW      џџџџ           DRAND           fbDRand                    FW_DRand ` §џ
                 Seed           §џ                 Num                        §џ                       "UVW      џџџџ           F_COMPAREFWVERSION           soll         ` §џ              ist         ` §џ                 major         ` §џ           requiered major version    minor         ` §џ	           requiered minor version    revision         ` §џ
       )    requiered revision/service pack version    patch         ` §џ       0    required patch version (reserved, default = 0 )      F_CompareFwVersion                                      "UVW      џџџџ           F_CREATEAMSNETID           idx         ` §џ                 nIds               T_AmsNetIdArr   §џ           Ams Net ID as array of bytes.       F_CreateAmsNetId            
   T_AmsNetId                             "UVW      џџџџ           F_CREATEIPV4ADDR           idx         ` §џ                 nIds               T_IPv4AddrArr   §џ       <    Internet Protocol dotted address (ipv4) as array of bytes.       F_CreateIPv4Addr            
   T_IPv4Addr                             "UVW      џџџџ           F_GETSTRUCTMEMBERALIGNMENT           tmp                ST_StructMemberAlignmentProbe ` §џ                     F_GetStructMemberAlignment                                     "UVW      џџџџ           F_GETVERSIONTCSYSTEM               nVersionElement           §џ                 F_GetVersionTcSystem                                     "UVW      џџџџ           F_IOPORTREAD               nAddr           §џ           Port address    eSize               E_IOAccessSize   §џ           Number of bytes to read       F_IOPortRead                                     "UVW      џџџџ           F_IOPORTWRITE               nAddr           §џ           Port address    eSize               E_IOAccessSize   §џ           Number of bytes to write    nValue           §џ           Value to write       F_IOPortWrite                                      "UVW      џџџџ           F_SCANAMSNETIDS           pNetID               ` §џ              b               T_AmsNetIdArr ` §џ              w         ` §џ	              id         ` §џ
           	   Index7001                            sNetID            
   T_AmsNetID   §џ       :    String containing the Ams Net ID. E.g. '127.16.17.3.1.1'       F_ScanAmsNetIds               T_AmsNetIdArr                             "UVW      џџџџ           F_SCANIPV4ADDRIDS           b               T_AmsNetIdArr ` §џ           	   Index7001                            sIPv4            
   T_IPv4Addr   §џ       M    String containing the Internet Protocol dotted address. E.g. '172.16.7.199'       F_ScanIPv4AddrIds               T_IPv4AddrArr                             "UVW      џџџџ           F_SPLITPATHNAME           pPath               ` §џ              pSlash               ` §џ              pDot               ` §џ              p               ` §џ              length         ` §џ              	   sPathName               T_MaxString   §џ                 F_SplitPathName                                sDrive               §џ              sDir                T_MaxString  §џ           	   sFileName                T_MaxString  §џ              sExt                T_MaxString  §џ	                   "UVW      џџџџ           F_TOASC           pChar               ` §џ                 str    Q       Q    §џ                 F_ToASC                                     "UVW      џџџџ           F_TOCHR           pChar    	                            ` §џ                 c           §џ                 F_ToCHR    Q       Q                              "UVW      џџџџ           FB_ADSREADWRITELIST           para                ST_AdsRdWrtListPara ` §џ           	   fbTrigger                 R_TRIG ` §џ              nState         ` §џ              fbCall       т    ( 	sNetID := '', nPort := 16#1234,
									nIdxGrp := GENERIC_FB_GRP_ADS,
									nIdxOffs := GENERIC_FB_ADS_RDWRTLIST,
									bExecute := FALSE,  ACCESSCNT_I := 16#0000BEC1,
									tTimeout := DEFAULT_ADS_TIMEOUT )     СО                 4                              FW_AdsRdWrt ` §џ           
      sNetId           ''    
   T_AmsNetID ` §џ              nPort           0    	   T_AmsPort ` §џ              nIdxGrp         ` §џ              nIdxOffs         ` §џ              cbWriteList         ` §џ	           Byte size of list array 
   pWriteList                   ST_AdsReadWriteListEntry      ` §џ
       !    Pointer to the first list entry 	   cbReadLen         ` §џ           	   pReadBuff           0       PVOID ` §џ              bExecute          ` §џ              tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ              cbRead         ` §џ                       "UVW     џџџџ           FB_BADEVICEIOCONTROL           fbRW       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_BADEVAPI, IDXOFFS := 0 )              	   T_AmsPort         L                 
   ADSRDWRTEX ` §џ              req                ST_AdsBaDevApiReq ` §џ              state         ` §џ              rtrig                 R_TRIG ` §џ                 sNetID           ''    
   T_AmsNetID ` §џ           Ams net id    affinity           ( lower :=0, higher := 0 )                T_U64KAFFINITY ` §џ       )    Affinity mask (default  = 0 = not used) 	   nModifier         ` §џ       +    Optional command modifier (0 == not used)    nIdxGrp         ` §џ           Api function group    nIdxOffs         ` §џ           Api function offset 
   cbWriteLen         ` §џ	           Input data byte size 	   cbReadLen         ` §џ
           Output data byte size 
   pWriteBuff         ` §џ           Pointer to input data buffer 	   pReadBuff         ` §џ           Pointer to output data buffer    bExecute          ` §џ       &    Rising edge starts command execution    tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ              cbRead         ` §џ           Count of bytes actually read             "UVW     џџџџ           FB_BAGENGETVERSION           fbCtrl           ( nModifier := 0, affinity := ( lower := 0, higher := 0 ), nIdxGrp := BADEVAPIIGRP_GENERAL, nIdxOffs := BADEVAPIIOFFS_GENERAL_VERSION )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                                             FB_BaDeviceIoControl ` §џ              rtrig                 R_TRIG ` §џ              state         ` §џ              rsp         ` §џ                 sNetID           ''    
   T_AmsNetID ` §џ           ams net id    bExecute          ` §џ       &    rising edge starts command execution    tTimeout       ` §џ                 bBusy          ` §џ	              bError          ` §џ
              nErrID         ` §џ              nVersion         ` §џ           	   nRevision         ` §џ              nBuild         ` §џ                       "UVW     џџџџ           FB_CREATEDIR        
   fbAdsRdWrt       ]    ( nPort:= AMSPORT_R3_SYSSERV, nIdxGrp:= SYSTEMSERVICE_MKDIR, cbReadLen := 0, pReadBuff:= 0 )             '                            FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           max directory length = 255    ePath           PATH_GENERIC    
   E_OpenPath   §џ       +    Default: Create directory at generic path    bExecute            §џ       %    rising edge start command execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       "UVW     џџџџ           FB_EOF        
   fbAdsRdWrt       `    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FEOF, cbWriteLen := 0, pWriteBuff := 0 )             '                            FW_AdsRdWrt ` §џ              iEOF         ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              bEOF            §џ                       "UVW     џџџџ           FB_FILECLOSE        
   fbAdsRdWrt           ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FCLOSE, cbWriteLen := 0,	cbReadLen := 0,	pWriteBuff := 0, pReadBuff := 0 )             '   y                                 FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ       %    file handle obtained through 'open'    bExecute            §џ           close control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       "UVW     џџџџ           FB_FILEDELETE        
   fbAdsRdWrt       a    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FDELETE, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ              tmpOpenMode         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           file path and name    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: Open generic file    bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       "UVW     џџџџ           FB_FILEGETS        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FGETS, cbWriteLen := 0, pWriteBuff := 0 )             '   ~                         FW_AdsRdWrt ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              sLine               T_MaxString   §џ              bEOF            §џ                       "UVW     џџџџ           FB_FILEOPEN        
   fbAdsRdWrt       @    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FOPEN )             '   x                 FW_AdsRdWrt ` §џ              tmpOpenMode         ` §џ              tmpHndl         ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           max filename length = 255    nMode           §џ           open mode flags    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: Open generic file    bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              hFile           §џ           file handle             "UVW     џџџџ           FB_FILEPUTS        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FPUTS, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    sLine               T_MaxString   §џ           string to write    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       "UVW     џџџџ           FB_FILEREAD        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FREAD, cbWriteLen := 0, pWriteBuff := 0 )             '   z                         FW_AdsRdWrt ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle 	   pReadBuff           §џ           buffer address for read 	   cbReadLen           §џ           count of bytes for read    bExecute            §џ           read control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read    bEOF            §џ                       "UVW     џџџџ           FB_FILERENAME        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FRENAME, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ              tmpOpenMode         ` §џ           
   sBothNames   	                    T_MaxString         ` §џ           = SIZEOF( T_MaxString ) * 2    nOldLen         ` §џ              nNewLen         ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    sOldName               T_MaxString   §џ           max filename length = 255    sNewName               T_MaxString   §џ           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: generic file path   bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       "UVW     џџџџ           FB_FILESEEK        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FSEEK, cbReadLen := 0, pReadBuff := 0 )             '   |                         FW_AdsRdWrt ` §џ           
   tmpSeekPos   	                       ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ	           file handle    nSeekPos           §џ
           new seek pointer position    eOrigin       	    SEEK_SET       E_SeekOrigin   §џ              bExecute            §џ           seek control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       "UVW     џџџџ           FB_FILETELL        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FTELL, cbWriteLen := 0, pWriteBuff := 0 )             '   }                         FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              nSeekPos           §џ          	On error, nSEEKPOS returns -1             "UVW     џџџџ           FB_FILEWRITE        
   fbAdsRdWrt       A    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FWRITE )             '   {                 FW_AdsRdWrt ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle 
   pWriteBuff           §џ           buffer address for write 
   cbWriteLen           §џ           count of bytes for write    bExecute            §џ           write control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbWrite           §џ       !    count of bytes actually written             "UVW     џџџџ           FB_PCWATCHDOG           bRetVal          ` §џ              iTime         ` §џ              iIdx         ` §џ              iPortArr   	                 >    16#2E, 16#2E, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E	      .      .      .      /      .      /      .      /      .    ` §џ              iArrEn   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#05, 16#30, 16#01, 16#AA	                              і            0            Њ    ` §џ              iArrDis   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#00, 16#30, 16#00, 16#AA	                              і             0             Њ    ` §џ                 tTimeOut           §џ       ;    Watchdog TimeOut Time 1s..255s, disabled if tTimeOut < 1s    bEnable            §џ           Enable / Disable Watchdog       bEnabled            §џ       2    TRUE: Watchdog Enabled; FALSE: Watchdog Disabled    bBusy            §џ           FB still busy    bError            §џ	           FB has error     nErrId           §џ
           FB error ID               "UVW      џџџџ           FB_PCWATCHDOG_BAPI           nState         ` §џ              bInit         ` §џ              eConfig           eWATCHDOG_TIME_DISABLED       E_WATCHDOG_TIME_CONFIG ` §џ           
   nWatchTime         ` §џ           watchdog watch time 	   nTimeBase         ` §џ       *    watchdog time base: seconds/milliseconds    nPwrCtrlIoWd        ` §џ       >    1 use power controller IO watchdog; 0 use compatibility mode    fbGetVersion                           FB_BaGenGetVersion ` §џ              nVersion         ` §џ           
   stGpioInfo                 ST_WD_GPIO_Info ` §џ              bUseInfo          ` §џ              stGpioInfoEx                      ST_WD_GPIO_InfoEx ` §џ           
   bUseInfoEx          ` §џ              nWDByte         ` §џ              fbCtrl           ( affinity := ( lower := 0, higher := 0 ), nModifier := 0, nIdxGrp := BIOSIGRP_WATCHDOG, nIdxOffs := BIOSIOFFS_WATCHDOG_CONFIG )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                        `                   FB_BaDeviceIoControl ` §џ              rtrig                 R_TRIG ` §џ              bRetVal          ` §џ           	   pAddress1               ` §џ               dxValue1         ` §џ!           
   dxBitMask1         ` §џ"           	   pAddress2               ` §џ#              dxValue2         ` §џ$           
   dxBitMask2         ` §џ%           	   pAddress4               ` §џ&              dxValue4         ` §џ'           
   dxBitMask4         ` §џ(                 sNetID           ''    
   T_AmsNetID   §џ       ;    ams net id, only empty string or local netid is supported    nWatchdogTimeS             Ф;             §џ       -    Watchdog time [s], 0 = disable, >0 = enable    bExecute            §џ       &    rising edge starts command execution    tTimeout         §џ           ADS communication timeout       bEnabled            §џ	       2    TRUE: Watchdog Enabled; FALSE: Watchdog Disabled    bBusy            §џ
           TRUE: function block is busy    bError            §џ            TRUE: function block has error    nErrID           §џ           FB error ID               "UVW     џџџџ           FB_REMOVEDIR        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_RMDIR, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath   §џ       +    Default: Delete directory at generic path    bExecute            §џ       &    rising edge starts command execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       "UVW     џџџџ           FB_SETLEDCOLOR_BAPI           nState         ` §џ              fbCtrl       y    ( affinity := ( lower := 0, higher := 0 ), nModifier := 0, nIdxGrp := BIOSIGRP_LED, nIdxOffs := BIOSIOFFS_LED_SET_USER )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                                           FB_BaDeviceIoControl ` §џ              rtrig                 R_TRIG ` §џ              nLED         ` §џ                 sNetID           ''    
   T_AmsNetID   §џ       ;    ams net id, only empty string or local netid is supported 	   eNewColor               E_UsrLED_Color   §џ           new LED Color    bExecute            §џ           change LED Color    tTimeout         §џ           ADS communication timeout       bBusy            §џ	           TRUE: function block is busy    bError            §џ
            TRUE: function block has error    nErrID           §џ           FB error ID               "UVW     џџџџ           FB_SIMPLEADSLOGEVENT           fbEvent       9    ( NETID := '', PORT := AMSPORT_EVENTLOG, TMOUT:= t#15s )             
   T_AmsNetId         n          :         ADSLOGEVENT ` §џ              cfgEvent               TcEvent ` §џ              bInit         ` §џ                 SourceID           §џ              EventID           §џ           	   bSetEvent           §џ              bQuit            §џ                 ErrId           §џ	              Error            §џ
                       "UVW     џџџџ        	   FILECLOSE        
   fbAdsWrite                                FW_AdsWrite    §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ       )    file handle obtained through 'FILEOPEN'    CLOSE            §џ           close control input    TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       "UVW     џџџџ           FILEOPEN        
   fbAdsWrite                                FW_AdsWrite    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ                 NETID            
   T_AmsNetId   §џ           ams net id 	   FPATHNAME               T_MaxString   §џ       #    default max filename length = 255    OPENMODE           §џ           open mode flags    OPEN            §џ           open control input    TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ              HFILE           §џ           file handle             "UVW     џџџџ           FILEREAD        	   fbAdsRead                              
   FW_AdsRead    §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ           file handle    BUFADDR           §џ           buffer address for read    COUNT           §џ           count of bytes for read    READ            §џ           read control input    TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             "UVW     џџџџ           FILESEEK        
   fbAdsWrite                                FW_AdsWrite    §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ           file handle    SEEKPOS           §џ           new seek pointer position    SEEK            §џ           seek control input    TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ                       "UVW     џџџџ        	   FILEWRITE        
   fbAdsWrite                                FW_AdsWrite    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ              tmpCount            §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ           file handle    BUFADDR           §џ           buffer address for write    COUNT           §џ           count of bytes for write    WRITE            §џ           write control input    TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_W           §џ       !    count of bytes actually written             "UVW     џџџџ           FW_CALLGENERICFB           fbCall       w    ( 	sNetID := '', nPort := 16#1234,
								bExecute := FALSE, tTimeout := T#0s,
								ACCESSCNT_I := 16#0000BEC1 )     СО                 4                          FW_AdsRdWrt ` §џ                 funGrp         ` §џ       #    Function block group (identifier)    funNum         ` §џ       $    Function block number (identifier)    pWrite               PVOID ` §џ       7    Pointer to generic function input parameter structure    cbWrite         ` §џ       ;    Byte length of generic function input parameter structure    pRead               PVOID ` §џ	           Pointer to output data buffer    cbRead         ` §џ
       #    Byte length of output data buffer       nErrID         ` §џ           0 => no error, <> 0 => error
   cbReturned         ` §џ       ,    Number of successfully returned data bytes             "UVW      џџџџ           FW_CALLGENERICFBEX           fbCall        	               FW_CallGenericFb ` §џ              in                  ST_AdsCallGenericFbExReq ` §џ                 funGrp         ` §џ       #    Function block group (identifier)    funNum         ` §џ       $    Function block number (identifier)    nIdxGrp         ` §џ           Index group parameter    nIdxOffs         ` §џ           Index offset parameter    pWrite               PVOID ` §џ	       7    Pointer to generic function input parameter structure    cbWrite         ` §џ
       ;    Byte length of generic function input parameter structure    pRead               PVOID ` §џ           Pointer to output data buffer    cbRead         ` §џ       #    Byte length of output data buffer       nErrID         ` §џ           0 => no error, <> 0 => error
   cbReturned         ` §џ       ,    Number of successfully returned data bytes             "UVW      џџџџ           FW_CALLGENERICFUN           fbCall       y    ( 	sNetID := '', nPort := 16#1234,
									bExecute := FALSE, tTimeout := T#0s,
									ACCESSCNT_I := 16#0000BEC2 )     ТО                 4                          FW_AdsRdWrt ` §џ           don't use it!        funGrp         ` §џ           Function group (identifier)    funNum         ` §џ       $    Function block number (identifier)    pWrite               PVOID ` §џ       7    Pointer to generic function input parameter structure    cbWrite         ` §џ       ;    Byte length of generic function input parameter structure    pRead               PVOID ` §џ	           Pointer to output data buffer    cbRead         ` §џ
       #    Byte length of output data buffer    pcbReturned               ` §џ       ,    Number of successfully returned data bytes       FW_CallGenericFun                                     "UVW      џџџџ           GETBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ                 GETBIT32                                      "UVW      џџџџ           GETCPUACCOUNT           fbGetCpuAccount               FW_GetCpuAccount ` §џ                     cpuAccountDW           §џ                       "UVW      џџџџ           GETCPUCOUNTER           fbGetCpuCounter                FW_GetCpuCounter ` §џ                  
   cpuCntLoDW           §џ           
   cpuCntHiDW           §џ                       "UVW      џџџџ           GETCURTASKINDEX           fbGetCurTaskIndex               FW_GetCurTaskIndex ` §џ                     index           §џ           Task index [1..4]             "UVW      џџџџ           GETSYSTEMTIME           fbGetSystemTime                FW_GetSystemTime ` §џ                     timeLoDW           §џ              timeHiDW           §џ                       "UVW      џџџџ           GETTASKTIME           out   	                       ` §џ	           
   cbReturned         ` §џ
                     timeLoDW           §џ              timeHiDW           §џ                       "UVW      џџџџ        	   LPTSIGNAL               PortAddr           §џ              PinNo           §џ              OnOff            §џ	              	   LPTSIGNAL                                      "UVW      џџџџ           MEMCMP               pBuf1           §џ           First buffer    pBuf2           §џ           Second buffer    n           §џ           Number of characters       MEMCMP                                     "UVW      џџџџ           MEMCPY               destAddr           §џ           New buffer    srcAddr           §џ           Buffer to copy from    n           §џ           Number of characters to copy       MEMCPY                                     "UVW      џџџџ           MEMMOVE               destAddr           §џ           New buffer    srcAddr           §џ           Buffer to copy from    n           §џ           Number of characters to copy       MEMMOVE                                     "UVW      џџџџ           MEMSET               destAddr           §џ           Pointer to destination    fillByte           §џ           Character to set    n           §џ           Number of characters       MEMSET                                     "UVW      џџџџ           ROL32               inVal32           §џ              n           §џ                 ROL32                                     "UVW      џџџџ           ROR32               inVal32           §џ              n           §џ                 ROR32                                     "UVW      џџџџ           SETBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ                 SETBIT32                                     "UVW      џџџџ           SFCACTIONCONTROL     
      S_FF                 RS    §џ              L_TMR                    TON    §џ              D_TMR                    TON    §џ              P_TRIG                 R_TRIG    §џ              SD_TMR                    TON    §џ              SD_FF                 RS    §џ              DS_FF                 RS    §џ              DS_TMR                    TON    §џ              SL_FF                 RS    §џ              SL_TMR                    TON    §џ           
      N            §џ              R0            §џ              S0            §џ              L            §џ              D            §џ              P            §џ              SD            §џ	              DS            §џ
              SL            §џ              T           §џ                 Q            §џ                       "UVW      џџџџ           SHL32               inVal32           §џ              n           §џ                 SHL32                                     "UVW      џџџџ           SHR32               inVal32           §џ              n           §џ                 SHR32                                     "UVW      џџџџ    r   C:\TwinCAT\PLC\LIB\ModbusRTU.lib @                                                                                          GET_MODBUSRTU_VERSION           VERSION_ModbusRTU       	   2.006.000    §џ%                 bGet            §џ"                 Get_ModbusRTU_Version                                         hџRU      џџџџ           MODBUSADDRESSVALID               UnitID           §џ              ReceivedUnitID           §џ                 ModbusAddressValid                                      hџRU      џџџџ           MODBUSCRC16           idx            §џ
              i            §џ              feldHI   	  џ               M  
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
		16#80, 16#41, 16#00, 16#C1, 16#81, 16#40             С            @            Р            A            Р            A             С            @            Р            A             С            @             С            @            Р            A            Р            A             С            @             С            @            Р            A             С            @            Р            A            Р            A             С            @            Р            A             С            @             С            @            Р            A             С            @            Р            A            Р            A             С            @             С            @            Р            A            Р            A             С            @            Р            A             С            @             С            @            Р            A            Р            A             С            @             С            @            Р            A             С            @            Р            A            Р            A             С            @             С            @            Р            A            Р            A             С            @            Р            A             С            @             С            @            Р            A             С            @            Р            A            Р            A             С            @            Р            A             С            @             С            @            Р            A            Р            A             С            @             С            @            Р            A             С            @            Р            A            Р            A             С            @       §џ              feldLo   	  џ               M  
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
		16#43, 16#83, 16#41, 16#81, 16#80, 16#40             Р      С            У                  Т      Ц                  Ч            Х      Ф            Ь                  Э            Я      Ю            
      Ъ      Ы            Щ      	            Ш      и                  й            л      к                  о      п            н                  м            д      е            з                  ж      в                  г            б      а            №      0      1      ё      3      ѓ      ђ      2      6      і      ї      7      ѕ      5      4      є      <      ќ      §      =      џ      ?      >      ў      њ      :      ;      ћ      9      љ      ј      8      (      ш      щ      )      ы      +      *      ъ      ю      .      /      я      -      э      ь      ,      ф      $      %      х      '      ч      ц      &      "      т      у      #      с      !             р             `      a      Ё      c      Ѓ      Ђ      b      f      І      Ї      g      Ѕ      e      d      Є      l      Ќ      ­      m      Џ      o      n      Ў      Њ      j      k      Ћ      i      Љ      Ј      h      x      И      Й      y      Л      {      z      К      О      ~            П      }      Н      М      |      Д      t      u      Е      w      З      Ж      v      r      В      Г      s      Б      q      p      А      P                  Q            S      R                  V      W            U                  T            \      ]            _                  ^      Z                  [            Y      X                  H      I            K                  J      N                  O            M      L            D                  E            G      F                  B      C            A                  @       §џ(           	   Index7001                            pdata                 §џ              count           §џ                 ModbusCRC16                  ST_ModbusCRC16                             hџRU      џџџџ           MODBUSREADBITS        
   pTmpWrData                  §џ              i            §џ              startidx            §џ              endidx            §џ              emptyStartbits            §џ              lastSourcebits            §џ              lastDestinationbits            §џ              datatmp            §џ              	   startAddr           §џ              quantity           §џ           
   ptrReadmem                 §џ              sizeOfReadmem           §џ              ptrWritedata                 §џ                 count           §џ              ErrId               Modbus_ERRORS   §џ                       hџRU      џџџџ           MODBUSREADREG        
   pTmpWrData                  §џ              i            §џ              ByteAddr            §џ              ptrReadmem1                  §џ              	   startAddr           §џ              quantity           §џ           
   ptrReadmem                 §џ              sizeOfReadmem           §џ              ptrWritedata                 §џ                 count           §џ              ErrId               Modbus_ERRORS   §џ                       hџRU      џџџџ           MODBUSRECEIVEBYTE                   ByteReceived            §џ              ReceivedByte           §џ              ErrId           §џ                 RxBuffer                      ModbusCOMbuffer  §џ                   hџRU      џџџџ           MODBUSRECEIVEMODDATA     
      state            §џ              iTimeout            §џ              TimeoutTimer                    TOF    §џ               idx            §џ!           	   bytecount            §џ"              startidx            §џ#              tmpErrId            §џ$              UnitIDvalid             §џ%           
   EntryState            §џ&           	   LastState            §џ'                 UnitID           §џ              Timeout           §џ              Reset            §џ              Master            §џ                 data   	  џ                       §џ              DataReceived            §џ              busy            §џ              ErrId           §џ           	   RxTimeout            §џ              LenReceiveData           §џ              crc                  ST_ModbusCRC16   §џ                 RXbuffer                      ModbusCOMbuffer  §џ              Receive                   ModbusReceiveByte  §џ                   hџRU     џџџџ           MODBUSRTUMASTER           state           Modbus_INIT       Modbus_STATES    §џ           state machine state    iUnitID            §џ           	   iQuantity            §џ              iMBAddr            §џ              iSubfunction            §џ       $    used with diagnostic function 0x08 	   icbLength            §џ              ipMemoryAddr                  §џ          DWORD;   iExecute             §џ               iTimeout            §џ!              com                   ST_ModbusCom    §џ"              TriggerExecute                 R_TRIG    §џ#           
   MBFunction               MODBUS_FUNCTIONS    §џ$              startaddress            §џ%           
   memorytype               MODBUS_MEMORYTYPE    §џ&           
   TimeoutTON                    TON    §џ'              p                  §џ(              i            §џ)           	   bQuantity            §џ*                 UnitID           §џ              Quantity           §џ              MBAddr           §џ              cbLength           §џ              pMemoryAddr                 §џ          DWORD;   Execute            §џ              Timeout           §џ	              Mode               MBserialLineMode_t   §џ
              pComIn    	  A                            §џ       A    must meet the maximum size of a hardware related data structure    pComOut    	  A                            §џ       A    must meet the maximum size of a hardware related data structure 	   SizeComIn           §џ                 BUSY            §џ              Error            §џ              ErrorId               MODBUS_ERRORS   §џ              cbRead           §џ                 ErrorDiagnostics         
                ST_ModbusErrorDiagnostics  §џ                   hџRU      џџџџ           MODBUSRTUMASTER_KL6X22B           InData                MB_KL6inData22B   §џ              OutData                MB_KL6outData22B    §џ              MBmaster        "                                        ModbusRtuMaster    §џ              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    §џ              Mode       "    MBSERIALLINEMODE_KL6_22B_STANDARD       MBserialLineMode_t   §џ                 UnitID           §џ              Quantity           §џ              MBAddr           §џ              cbLength           §џ              pMemoryAddr                 §џ          DWORD;   Execute            §џ              Timeout           §џ	                 BUSY            §џ              Error            §џ              ErrorId               MODBUS_ERRORS   §џ              cbRead           §џ                       hџRU     џџџџ           MODBUSRTUMASTER_KL6X5B           InData                MB_KL6inData5B   §џ              OutData                MB_KL6outData5B    §џ              MBmaster        "                                        ModbusRtuMaster    §џ              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    §џ              Mode       !    MBSERIALLINEMODE_KL6_5B_STANDARD       MBserialLineMode_t   §џ                 UnitID           §џ              Quantity           §џ              MBAddr           §џ              cbLength           §џ              pMemoryAddr                 §џ          DWORD;   Execute            §џ              Timeout           §џ	                 BUSY            §џ              Error            §џ              ErrorId               MODBUS_ERRORS   §џ              cbRead           §џ                       hџRU     џџџџ           MODBUSRTUMASTER_PCCOM           InData                MB_PcComInData   §џ              OutData                MB_PcComOutData    §џ              MBmaster        "                                        ModbusRtuMaster    §џ              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    §џ              Mode           MBSERIALLINEMODE_PC_COM_PORT       MBserialLineMode_t   §џ                 UnitID           §џ              Quantity           §џ              MBAddr           §џ              cbLength           §џ              pMemoryAddr                 §џ          DWORD;   Execute            §џ              Timeout           §џ	                 BUSY            §џ              Error            §џ              ErrorId               MODBUS_ERRORS   §џ              cbRead           §џ                       hџRU     џџџџ           MODBUSRTUMASTERV2           state           Modbus_INIT       Modbus_STATES    §џ            state machine state    iUnitID            §џ!           	   iQuantity            §џ#              iMBAddr            §џ$              iSubfunction            §џ%       $    used with diagnostic function 0x08 	   icbLength            §џ&              ipMemoryAddr                  §џ'          DWORD;   iAuxQuantity            §џ)           
   iAuxMBAddr            §џ*              iAuxcbLength            §џ+              ipAuxMemoryAddr                  §џ,              iExecute             §џ.              iTimeout            §џ/              com                   ST_ModbusCom    §џ0              TriggerExecute                 R_TRIG    §џ1           
   MBFunction               MODBUS_FUNCTIONS    §џ2              startaddress            §џ3           
   memorytype               MODBUS_MEMORYTYPE    §џ4           
   TimeoutTON                    TON    §џ5              p                  §џ6              i            §џ7           	   bQuantity            §џ8                 UnitID           §џ           modbus unit ID    Quantity           §џ       ,    quantity of bits or words to read or write    MBAddr           §џ           modbus address    cbLength           §џ           byte length of memory    pMemoryAddr                 §џ          DWORD;   AuxQuantity           §џ
       C    Write access - used for Read/Write access only (function code 23) 	   AuxMBAddr           §џ       C    Write access - used for Read/Write access only (function code 23)    AuxcbLength           §џ       C    Write access - used for Read/Write access only (function code 23)    pAuxMemoryAddr                 §џ       C    Write access - used for Read/Write access only (function code 23)    Execute            §џ              Timeout           §џ              Mode               MBserialLineMode_t   §џ              pComIn    	  A                            §џ       A    must meet the maximum size of a hardware related data structure    pComOut    	  A                            §џ       A    must meet the maximum size of a hardware related data structure 	   SizeComIn           §џ                 BUSY            §џ              Error            §џ              ErrorId               MODBUS_ERRORS   §џ              cbRead           §џ                 ErrorDiagnostics         
                ST_ModbusErrorDiagnostics  §џ                   hџRU      џџџџ           MODBUSRTUMASTERV2_KL6X22B           InData                MB_KL6inData22B   §џ              OutData                MB_KL6outData22B    §џ              MBmaster        *                                                ModbusRtuMasterV2    §џ              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    §џ              Mode       "    MBSERIALLINEMODE_KL6_22B_STANDARD       MBserialLineMode_t   §џ"                 UnitID           §џ       1    standard quantity and address for all functions    Quantity           §џ       ,    quantity of bits or words to read or write    MBAddr           §џ           modbus address    cbLength           §џ           byte length of memory    pMemoryAddr                 §џ	          DWORD;   AuxQuantity           §џ       C    Write access - used for Read/Write access only (function code 23) 	   AuxMBAddr           §џ       C    Write access - used for Read/Write access only (function code 23)    AuxcbLength           §џ       C    Write access - used for Read/Write access only (function code 23)    pAuxMemoryAddr                 §џ       C    Write access - used for Read/Write access only (function code 23)    Execute            §џ              Timeout           §џ                 BUSY            §џ              Error            §џ              ErrorId               MODBUS_ERRORS   §џ              cbRead           §џ                       hџRU     џџџџ           MODBUSRTUMASTERV2_KL6X5B           InData                MB_KL6inData5B   §џ              OutData                MB_KL6outData5B    §џ              MBmaster        *                                                ModbusRtuMasterV2    §џ              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    §џ              Mode       !    MBSERIALLINEMODE_KL6_5B_STANDARD       MBserialLineMode_t   §џ"                 UnitID           §џ       1    standard quantity and address for all functions    Quantity           §џ       ,    quantity of bits or words to read or write    MBAddr           §џ           modbus address    cbLength           §џ           byte length of memory    pMemoryAddr                 §џ	          DWORD;   AuxQuantity           §џ       C    Write access - used for Read/Write access only (function code 23) 	   AuxMBAddr           §џ       C    Write access - used for Read/Write access only (function code 23)    AuxcbLength           §џ       C    Write access - used for Read/Write access only (function code 23)    pAuxMemoryAddr                 §џ       C    Write access - used for Read/Write access only (function code 23)    Execute            §џ              Timeout           §џ                 BUSY            §џ              Error            §џ              ErrorId               MODBUS_ERRORS   §џ              cbRead           §џ                       hџRU     џџџџ           MODBUSRTUMASTERV2_PCCOM           InData                MB_PcComInData   §џ              OutData                MB_PcComOutData    §џ              MBmaster        *                                                ModbusRtuMasterV2    §џ              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    §џ              Mode           MBSERIALLINEMODE_PC_COM_PORT       MBserialLineMode_t   §џ"                 UnitID           §џ       1    standard quantity and address for all functions    Quantity           §џ       ,    quantity of bits or words to read or write    MBAddr           §џ           modbus address    cbLength           §џ           byte length of memory    pMemoryAddr                 §џ	          DWORD;   AuxQuantity           §џ       C    Write access - used for Read/Write access only (function code 23) 	   AuxMBAddr           §џ       C    Write access - used for Read/Write access only (function code 23)    AuxcbLength           §џ       C    Write access - used for Read/Write access only (function code 23)    pAuxMemoryAddr                 §џ       C    Write access - used for Read/Write access only (function code 23)    Execute            §џ              Timeout           §џ                 BUSY            §џ              Error            §џ              ErrorId               MODBUS_ERRORS   §џ              cbRead           §џ                       hџRU     џџџџ           MODBUSRTUSLAVE           state           Modbus_INIT       Modbus_STATES    §џ           state machine state 	   nextstate           Modbus_INIT       Modbus_STATES    §џ            state machine state    readBits                             ModbusReadBits    §џ!              readReg                         ModbusReadReg    §џ"              writeBit                ModbusWriteBit    §џ#           	   writeBits                ModbusWriteBits    §џ$              writeReg                ModbusWriteReg    §џ%              startaddress            §џ&              quantityrequest            §џ'              synctime                    TON    §џ(              com                   ST_ModbusCom    §џ)           
   memorytype               MODBUS_MEMORYTYPE    §џ*              ptrMemoryRange                  §џ+           	   RangeSize            §џ,              DiagnosticSubfunction            §џ-              DiagnosticData            §џ.                 UnitID           §џ           	   AdrInputs                 §џ       %    Pointer to the input memory area %I    SizeInputBytes           §џ           
   AdrOutputs                 §џ       &    Pointer to the output memory area %Q    SizeOutputBytes           §џ           	   AdrMemory                 §џ           Pointer to the memory area %M    SizeMemoryBytes           §џ              Mode               MBserialLineMode_t   §џ              pComIn    	  A                            §џ       A    must meet the maximum size of a hardware related data structure    pComOut    	  A                            §џ       A    must meet the maximum size of a hardware related data structure 	   SizeComIn           §џ                 ErrorId               Modbus_ERRORS   §џ                 ErrorDiagnostics         
                ST_ModbusErrorDiagnostics  §џ                   hџRU      џџџџ           MODBUSRTUSLAVE_KL6X22B           InData                MB_KL6inData22B   §џ              OutData                MB_KL6outData22B    §џ              MBslave                                           ModbusRtuSlave    §џ              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    §џ                 UnitID           §џ           	   AdrInputs                 §џ       %    Pointer to the input memory area %I    SizeInputBytes           §џ           
   AdrOutputs                 §џ       &    Pointer to the output memory area %Q    SizeOutputBytes           §џ           	   AdrMemory                 §џ           Pointer to the memory area %M    SizeMemoryBytes           §џ                 ErrorId               Modbus_ERRORS   §џ                       hџRU     џџџџ           MODBUSRTUSLAVE_KL6X5B           InData                MB_KL6inData5B   §џ              OutData                MB_KL6outData5B    §џ              MBslave                                           ModbusRtuSlave    §џ              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    §џ                 UnitID           §џ           	   AdrInputs                 §џ       %    Pointer to the input memory area %I    SizeInputBytes           §џ           
   AdrOutputs                 §џ       &    Pointer to the output memory area %Q    SizeOutputBytes           §џ           	   AdrMemory                 §џ           Pointer to the memory area %M    SizeMemoryBytes           §џ                 ErrorId               Modbus_ERRORS   §џ                       hџRU     џџџџ           MODBUSRTUSLAVE_PCCOM           InData                MB_PcComInData   §џ              OutData                MB_PcComOutData    §џ              MBslave                                           ModbusRtuSlave    §џ              ErrorDiagnostics        
                ST_ModbusErrorDiagnostics    §џ                 UnitID           §џ           	   AdrInputs                 §џ       %    Pointer to the input memory area %I    SizeInputBytes           §џ           
   AdrOutputs                 §џ       &    Pointer to the output memory area %Q    SizeOutputBytes           §џ           	   AdrMemory                 §џ           Pointer to the memory area %M    SizeMemoryBytes           §џ                 ErrorId               Modbus_ERRORS   §џ                       hџRU     џџџџ           MODBUSSENDMODDATA           state            §џ              idx            §џ           	   nextWrIdx            §џ              crc                  ST_ModbusCRC16    §џ                 send            §џ              data   	  џ                       §џ              Length           §џ                 Busy            §џ              bErr            §џ              ErrId           §џ                 TXbuffer                      ModbusCOMbuffer  §џ                   hџRU     џџџџ           MODBUSSERIALLINECONTROL           ComPortDebugBuffer                 MBcomDebugBuffer    §џ"              InvalidDataExchangeMode            §џ#              RegisterMode            §џ$              pCTRL                  §џ%              pSTATUS                  §џ&              RxCount            §џ'              TxCount            §џ(           	   DataIndex            §џ)              DataCountMask            §џ*              DataCountShift            §џ+              ReceiveHandshakeBit            §џ,              TransmitHandshakeBit            §џ-              TransmitBufferSentBit            §џ.              ContinousModeStartBit            §џ/              ReceiveBufferFullBit            §џ0              ResetBit            §џ1              RR            §џ2              RA            §џ3              TR            §џ4              TA            §џ5              IA            §џ6              BUF_F            §џ7              noTAcounter            §џ8              initialized             §џ9              TransmitDataSent             §џ:              i            §џ;                 Mode               MBserialLineMode_t   §џ              pComIn    	  A                            §џ       A    must meet the maximum size of a hardware related data structure    pComOut    	  A                            §џ       A    must meet the maximum size of a hardware related data structure 	   SizeComIn           §џ                 Error            §џ              ErrorID               MODBUS_ERRORS   §џ                 TxBuffer                      ModbusComBuffer  §џ              RxBuffer                      ModbusComBuffer  §џ                   hџRU      џџџџ           MODBUSWRITEBIT               outAddr           §џ              value           §џ              ptrWritemem                 §џ              sizeOfWritemem           §џ                 ErrId               Modbus_ERRORS   §џ                       hџRU      џџџџ           MODBUSWRITEBITS           i            §џ              startidx            §џ              endidx            §џ              memvalue            §џ           	   datavalue            §џ           
   nDatabytes            §џ              usedbits            §џ              unusedlowbits            §џ              unusedhighbits            §џ              unusedhighmask            §џ              unusedlowmask            §џ           
   unusedmask            §џ               ptrByte                  §џ!              	   startAddr           §џ              quantity           §џ              ptrReadData                 §џ              ptrWritemem                 §џ              sizeOfWritemem           §џ                 ErrId               Modbus_ERRORS   §џ                       hџRU      џџџџ           MODBUSWRITEREG        
   pTmpWrData                  §џ              ptrReadData1                  §џ              i            §џ              ByteAddr            §џ              	   startAddr           §џ              quantity           §џ              ptrReadData                 §џ              ptrWritemem                 §џ              sizeOfWritemem           §џ                 count           §џ              ErrId               Modbus_ERRORS   §џ                       hџRU      џџџџ    v   C:\TwinCAT\PLC\LIB\TcIoFunctions.lib @                                                                                Q       
   F_BYTESWAP     
      iByte            §џ              iIndex            §џ           	   iTypeSize            §џ              bEven             §џ              bOdd             §џ              iRepeats            §џ           
   pSrcAdrPtr                  §џ              pSrcAdrPtrOrg                  §џ           
   pDstAdrPtr                  §џ              pDstAdrPtrOrg                  §џ                 pSrcAdr                 §џ              pDstAdr                 §џ              iSize           §џ              eType           ePD_UNDEFINED       E_PD_Datatype   §џ              
   F_ByteSwap                                     n-X      џџџџ           F_CHECKFORSWAPBYTES               eFormat               E_PD_Datatype   §џ                 F_CheckForSwapBytes                                      n-X      џџџџ           F_CREATEDPV1READREQPKG           stDpv1ReqHeader                  ST_Dpv1Header    §џ              stDpv1ParameterSwap                  ST_Dpv1ParamAddr    §џ       '    parameter address with swapped bytes     iDpv1ReqIndex            §џ              iPIndex            §џ                 pDpv1ReqData    	  №                           §џ           DPV1 read request    iNumOfParams           §џ           1..39;     else: reserved    iDriveId           §џ                 F_CreateDpv1ReadReqPkg                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          §џ           list of parameters         n-X     џџџџ           F_CREATEDPV1READREQPKGPNET           stDpv1FrameHeader                    ST_PNIOConfigRecord    §џ              stDpv1ReqHeader                  ST_Dpv1Header    §џ              stDpv1ParameterSwap                  ST_Dpv1ParamAddr    §џ       '    parameter address with swapped bytes     iDpv1ReqIndex            §џ              iPIndex            §џ                 pDpv1ReqData    	                            §џ           DPV1 read request    iNumOfParams           §џ           1..39;     else: reserved    iDriveId           §џ                 F_CreateDpv1ReadReqPkgPNET                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          §џ           list of parameters         n-X     џџџџ           F_CREATEDPV1WRITEREQPKG           stDpv1ReqHeader                  ST_Dpv1Header    §џ              stDpv1ParameterSwap                  ST_Dpv1ParamAddr    §џ       '    parameter address with swapped bytes     iDpv1ReqIndex            §џ              iPIndex            §џ              stDpv1ValueHeader                ST_Dpv1ValueHeader    §џ              iSize            §џ              bError             §џ              bAddFillByte             §џ                 pDpv1ReqData    	  №                           §џ           DPV1 write request    iNumOfParams           §џ           1..39;     else: reserved    iDriveId           §џ                 F_CreateDpv1WriteReqPkg                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          §џ           list of parameters    stDpv1ValueHeaderEx    	  '                      ST_Dpv1ValueHeaderEx          §џ                   n-X     џџџџ           F_CREATEDPV1WRITEREQPKGPNET     	      stDpv1FrameHeader                    ST_PNIOConfigRecord    §џ              stDpv1ReqHeader                  ST_Dpv1Header    §џ              stDpv1ParameterSwap                  ST_Dpv1ParamAddr    §џ       '    parameter address with swapped bytes     iDpv1ReqIndex            §џ              iPIndex            §џ              stDpv1ValueHeader                ST_Dpv1ValueHeader    §џ              iSize            §џ              bError             §џ              bAddFillByte             §џ                 pDpv1ReqData    	                            §џ           DPV1 write request    iNumOfParams           §џ           1..39;     else: reserved    iDriveId           §џ                 F_CreateDpv1WriteReqPkgPNET                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          §џ           list of parameters    stDpv1ValueHeaderEx    	  '                      ST_Dpv1ValueHeaderEx          §џ                   n-X     џџџџ           F_GETDATASTRING           iIdx            §џ	              iInt32            §џ
              iUInt32            §џ              fFloat32             §џ           	   strRetVal    Q       Q     §џ           
   iValueSize            §џ           
   iValueAddr            §џ                 eFormat               E_PD_Datatype   §џ              iNumOfValues           §џ       ,    0..234: number of values;   else: reserved 	   iDataAddr           §џ       +    address of buffer/address of plc variable 	   iDataSize           §џ       %    size of buffer/size of plc variable       F_GetDataString    Q       Q                              n-X      џџџџ           F_GETPDTYPESIZE               eFormat               E_PD_Datatype   §џ                 F_GetPDTypeSize                                     n-X      џџџџ           F_GETVERSIONTCIOFUNCTIONS               nVersionElement           §џ                 F_GetVersionTcIoFunctions                                     n-X      џџџџ           F_SPLITDPV1READRESPKG           stDpv1ResHeader                  ST_Dpv1Header    §џ              stDpv1ValueHeader                ST_Dpv1ValueHeader    §џ              iPIndex            §џ              iVIndex            §џ              iSize            §џ           
   eDpv1Error               E_PD_Dpv1Error    §џ                 pDpv1ResData    	  №                           §џ           DPV1 read response       F_SplitDpv1ReadResPkg                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          §џ           list of parameters    stDpv1ValueHeaderEx    	  '                      ST_Dpv1ValueHeaderEx          §џ                   n-X     џџџџ           F_SPLITDPV1READRESPKGPNET           stDpv1ResHeader                  ST_Dpv1Header    §џ              stDpv1ValueHeader                ST_Dpv1ValueHeader    §џ              iPIndex            §џ              iVIndex            §џ              iSize            §џ           
   eDpv1Error               E_PD_Dpv1Error    §џ                 pDpv1ResData    	  №                           §џ           DPV1 read response       F_SplitDpv1ReadResPkgPNET                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          §џ           list of parameters    stDpv1ValueHeaderEx    	  '                      ST_Dpv1ValueHeaderEx          §џ                   n-X     џџџџ           F_SPLITDPV1WRITERESPKG           stDpv1ResHeader                  ST_Dpv1Header    §џ              stDpv1ValueHeader                ST_Dpv1ValueHeader    §џ              iPIndex            §џ              iVIndex            §џ              iSize            §џ           
   eDpv1Error               E_PD_Dpv1Error    §џ              stDpv1ValueHeaderExInt   	  '                      ST_Dpv1ValueHeaderEx            §џ            	   Index7001                            pDpv1ResData    	  №                           §џ           DPV1 write response       F_SplitDpv1WriteResPkg                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          §џ           list of parameters    stDpv1ValueHeaderEx    	  '                      ST_Dpv1ValueHeaderEx          §џ                   n-X     џџџџ           F_SPLITDPV1WRITERESPKGPNET           stDpv1ResHeader                  ST_Dpv1Header    §џ              stDpv1ValueHeader                ST_Dpv1ValueHeader    §џ              iPIndex            §џ              iVIndex            §џ              iSize            §џ           
   eDpv1Error               E_PD_Dpv1Error    §џ              stDpv1ValueHeaderExInt   	  '                      ST_Dpv1ValueHeaderEx            §џ           	   Index7001                            pDpv1ResData    	  №                           §џ           DPV1 write response       F_SplitDpv1WriteResPkgPNET                               stDpv1Parameter    	  '           
                ST_Dpv1ParamAddrEx          §џ           list of parameters    stDpv1ValueHeaderEx    	  '                      ST_Dpv1ValueHeaderEx          §џ                   n-X     џџџџ           FB_ASI_ADDRESSING           iaddressState            §џ              iParametervalue            §џ            	   TrigStart                 R_TRIG    §џ!              fbParameterinterface                FB_ASI_Parameterinterface    §џ"                 iOldAddress           §џ              iNewAddress           §џ              bStart            §џ                 bBusy            §џ              bErr            §џ              iErrornumber           §џ                 stParameterBuffer                     ST_ParameterBuffer  §џ                   n-X      џџџџ           FB_ASI_PARAMETERCONTROL           bstatemashine             §џ              iBuffercounter            §џ              iBufferstate            §џ              bcheck             §џ              iParameterstate_old            §џ              iBuffercounterOld            §џ                         stParameter_IN                 ST_Parameter_IN  §џ              stParameter_OUT                 ST_Parameter_OUT  §џ              stParameterBuffer                     ST_ParameterBuffer  §џ                   n-X      џџџџ           FB_ASI_PARAMETERINTERFACE           iParameterStep            §џ%              iParameterstate_intern            §џ&              iBufferNumber            §џ'              TimerBuffer                    TON    §џ(           
      iParameternumber           §џ              iParametervalue           §џ              bHiWord            §џ          0:LoWord, 1:HiWord   bmaskAccess            §џ          0:usual access, 1:mask access   iParametermask           §џ       "   Parametermask if bmaskAccess:=true   bParametermode            §џ          0: Read, 1: Write 
   bCycleMode            §џ       -   0: Acyclic , 1:Cyclic (permanent Read/Write) 	   bCommMode            §џ          0: Parameteraccess, 1: ADS   bRegComm            §џ       D   Registercommunication: 0: Parameteraccess, 1: Registercommunication    bStart            §џ                 bBusy            §џ              bErr            §џ              iErrornumber           §џ              iParameterReadvalue           §џ                 stParameterBuffer                     ST_ParameterBuffer  §џ"                   n-X      џџџџ           FB_ASI_PROCESSDATA_ANALOG           fbParameterinterface                                 FB_ASI_Parameterinterface    §џ#           	   TrigStart                 R_TRIG    §џ$              iParametermask            §џ%              bHiWord             §џ&              iParametervalue            §џ'              iParameterReadValue            §џ(              istate            §џ)                 iSlaveaddress           §џ              iSlavevalue           §џ              bParametermode            §џ          0: Read, 1: Write 
   bCycleMode            §џ       -   0: Cyclic (permanent Read/Write), 1: Acyclic 	   bCommMode            §џ          0: Parameterzugriff, 1: ADS   bRegComm            §џ       E   Registerkommunikation: 0: Parameterzugriff, 1: Registerkommunikation    bmaskAccess            §џ          0:usual access, 1:mask access   bStart            §џ                 bBusy            §џ              bErr            §џ              iErrornumber           §џ           
   iReadValue           §џ              iParametergroup           §џ                 stParameterBuffer                     ST_ParameterBuffer  §џ                    n-X      џџџџ           FB_ASI_PROCESSDATA_DIGITAL           fbParameterinterface                                 FB_ASI_Parameterinterface    §џ#           	   TrigStart                 R_TRIG    §џ$              iParametermask            §џ%              bHiWord             §џ&              iParametervalue            §џ'              iParameterReadValue            §џ(              istate            §џ)                 iSlaveaddress           §џ              iSlavevalue           §џ              bParametermode            §џ          0: Read, 1: Write 
   bCycleMode            §џ       -   0: Acyclic , 1:Cyclic (permanent Read/Write) 	   bCommMode            §џ          0: Parameterzugriff, 1: ADS   bRegComm            §џ       E   Registerkommunikation: 0: Parameterzugriff, 1: Registerkommunikation    bmaskAccess            §џ          0:usual access, 1:mask access   bStart            §џ                 bBusy            §џ              bErr            §џ              iErrornumber           §џ           
   iReadValue           §џ              iParametergroup           §џ                 stParameterBuffer                     ST_ParameterBuffer  §џ                    n-X      џџџџ           FB_ASI_PROJECTING           iProjectingStep            §џ"           	   TrigStart                 R_TRIG    §џ#              iAddressFactor            §џ$              iParameternumber            §џ%           
   iReadValue            §џ&              fbParameterinterface                                 FB_ASI_Parameterinterface    §џ'                 iSlaveaddress           §џ              iParametervalue           §џ              bIOValue            §џ          Read/Write IO-value of a slave   bIDCode            §џ          Read/Write	ID-code of a slave
   bReadWrite            §џ          0: Read, 1: Write   bReadLPS            §џ       !   Read List of all projected Slaves   bStart            §џ                 bBusy            §џ              bErr            §џ              iErrornumber           §џ              iParameterReadvalue           §џ          IO-value or ID-code of a slave   iLPS           §џ                 stParameterBuffer                     ST_ParameterBuffer  §џ                   n-X      џџџџ           FB_ASI_READPARAMETER        	   iReadStep            §џ           	   TrigStart                 R_TRIG    §џ              fbParameterinterface                                 FB_ASI_Parameterinterface    §џ                 iParameternumber           §џ           
   bCycleMode            §џ       -   0: Acyclic , 1:Cyclic (permanent Read/Write)    bStart            §џ                 bBusy            §џ              bErr            §џ              iErrornumber           §џ              iParameterReadvalue           §џ                 stParameterBuffer                     ST_ParameterBuffer  §џ                   n-X      џџџџ           FB_ASI_SLAVEDIAG        	   iDiagStep            §џ#           	   TrigStart                 R_TRIG    §џ$              iAddressFactor            §џ%              iParameternumber            §џ&           
   iReadValue            §џ'              fbParameterinterface                                 FB_ASI_Parameterinterface    §џ(              TimerResetCounter                    TON    §џ*                 iSlaveaddress           §џ              iCounter           §џ       s   1:PhysicalFaultCounter,  2:TimeoutCounter,  3:ResponseCounter,  4:Leave-DataExchCounter,  5:DataExch-FailedCounter    bCounterReset            §џ              bReadLES            §џ           Read List of all detected Slaves   bReadLAS            §џ       !   Read List of all activated Slaves
   bCycleMode            §џ       -   0: Acyclic , 1:Cyclic (permanent Read/Write)    bStart            §џ                 bBusy            §џ              bErr            §џ              iErrornumber           §џ              iCounterValue           §џ          Counter of a slave
   iSlaveList           §џ          LES or LAS of all Slaves      stParameterBuffer                     ST_ParameterBuffer  §џ                    n-X      џџџџ           FB_ASI_WRITEPARAMETER        
   iWriteStep            §џ           	   TrigStart                 R_TRIG    §џ              fbParameterinterface                                 FB_ASI_Parameterinterface    §џ                 iParameternumber           §џ              iParametervalue           §џ              bStart            §џ                 bBusy            §џ              bErr            §џ              iErrornumber           §џ                 stParameterBuffer                     ST_ParameterBuffer  §џ                   n-X      џџџџ           FB_ASI_WRITEREADPARAMETER        
   iWriteStep            §џ           	   TrigStart                 R_TRIG    §џ              fbParameterinterface                                 FB_ASI_Parameterinterface    §џ                 iParameternumber           §џ              iParametervalue           §џ              bStart            §џ                 bBusy            §џ              bErr            §џ              iParameterReadValue           §џ              iErrornumber           §џ                 stParameterBuffer                     ST_ParameterBuffer  §џ                   n-X      џџџџ           FB_AX2000_AXACT           i16State            §џ              icheckStatus            §џ              icheckControlWord            §џ          ControlWord for Servo   bServoReady             §џ          readyFlag for HSW	   TrigStart                 R_TRIG    §џ              TrigTimeOut                 R_TRIG    §џ              bResetServo             §џ       '   first move of Servo after Start/Restart   TimerTimeOut                    TON    §џ               bTimeOutStart             §џ!           	   iHighByte            §џ#              iLowByte            §џ$              icheckByteSwaping            §џ%              bMapInOutputs             §џ&              bShortStop_check             §џ'          virtual Input/Output   stPZD_IN                 	   ST_PZD_IN    §џ*           	   stPZD_OUT                 
   ST_PZD_OUT    §џ+                 bMode_DigitalSpeed            §џ       ,   OP-Mode digital speed instead of Positioning   iDigitalSpeed           §џ       (   digital speed if OP-Mode = digital speed	   iVelocity           §џ          Velocity	   iPosition           §џ          Position   imotion_tasknumber           §џ       "   number of EEPROM-saved motion-task   imotion_blocktype           §џ       #   optional Parameters of motion tasks   bStart            §џ	          START   bStop            §џ
          STOP
   bShortStop            §џ       5   1: break of motion task, 0: continue same motion task   bErrorResume            §џ          Error resume   tTimeOut         §џ                 bBusy            §џ              bError            §џ          Errorstatus of Servo   bTimeOutErr            §џ                 stPZDIN                  	   ST_PZD_IN  §џ.          Data from NC   stPZDOUT                  
   ST_PZD_OUT  §џ/       
   Data to NC        n-X      џџџџ           FB_AX2000_JOGMODE           i16state            §џ              icheckStatus            §џ              TrigTimeOut                 R_TRIG    §џ              bTimeOutStart             §џ              TimerTimeOut                    TON    §џ              bMapInOutputs             §џ          virtual Input/Output   stPZD_IN                 	   ST_PZD_IN    §џ           	   stPZD_OUT                 
   ST_PZD_OUT    §џ                 bStart            §џ              bStop            §џ           
   iBasicVelo           §џ          BasicVelocity   tTimeOut         §џ                 bBusy            §џ
              bErr            §џ              bTimeOutErr            §џ                 stPZDIN                  	   ST_PZD_IN  §џ          Data from NC   stPZDOUT                  
   ST_PZD_OUT  §џ       
   Data to NC        n-X      џџџџ           FB_AX2000_PARAMETER           iError            §џ           	   fbReadPkw                FB_FCxxxxDpv0PkwRead    §џ           
   fbWritePkw                FB_FCxxxxDpv0PkwWrite    §џ           
      iSlaveAddress           §џ           Station Address of the Slave    iPnu    Ђ     §џ           Parameter-Number    nAxis          §џ           Number of Axis    iLength          §џ       "    Length of the parameter (2 or 4) 	   iSubindex          §џ          Subindex   iParameterValue          §џ           Parameter value    iFC310xDeviceId          §џ	           Device-ID of the FCxxxx 
   bStartRead            §џ
       !    StartFlag to start the PKW-Read    bStartWrite            §џ       "    StartFlag to start the PKW-Write    tTimeOut         §џ                 bBusy            §џ              iErrorId           §џ           
   iReadValue           §џ                       n-X     џџџџ           FB_AX2000_REFERENCE           icheckStatus            §џ              i16State            §џ              bMapInOutputs             §џ          virtual Input/Output   stPZD_IN                 	   ST_PZD_IN    §џ          Data from NC	   stPZD_OUT                 
   ST_PZD_OUT    §џ       
   Data to NC      bSetRefPoint            §џ           set Reference Point   bCalibrStart            §џ           start home running   bCalibrStop            §џ           stop home running   iCalVelo           §џ           basic velocity of Calibration      bBusy            §џ
              bErr            §џ                 stPZDIN                  	   ST_PZD_IN  §џ          Data from NC   stPZDOUT                  
   ST_PZD_OUT  §џ       
   Data to NC        n-X      џџџџ           FB_AX200X_PROFIBUS           istate            §џ$              TimerPosition                    TON    §џ%              fbAX2000_AXACT                                               FB_AX2000_AXACT    §џ&              fbAX2000_Parameter                              FB_AX2000_Parameter    §џ'              fbAX2000_JogMode                               FB_AX2000_JogMode    §џ(              fbAX2000_Reference                           FB_AX2000_Reference    §џ)              iOPMode            §џ+           
   ERR_OPMODE          §џ/                 bInit            §џ          Initialization   bMode_DigitalSpeed            §џ       ,   OP-Mode digital speed instead of Positioning   iDigitalSpeed           §џ       (   digital speed if OP-Mode = digital speed	   iVelocity           §џ          Velocity	   iPosition           §џ          Position   iRunningMode           §џ       :   0:digital speed, 1: motiontask, 2: JogMode, 3: Calibration   imotion_tasknumber           §џ	       "   number of EEPROM-saved motion-task   imotion_blocktype           §џ
       6   optional Parameters of motion tasks, default:SI-values   iJogModeBasicValue           §џ          BasicVelocity for JogMode   iCalVelo           §џ           basic velocity of Calibration   bSetRefPoint            §џ           set Reference Point   bStart            §џ          START   bStop            §џ          STOP
   bShortStop            §џ           break of motion task   iSlaveAddress           §џ           Station Address of the Slave    iFC310xDeviceId           §џ           Device-ID of the FCxxxx    bErrorResume            §џ          Error resume   tTimeOut         §џ                 bBusy            §џ              bError            §џ          Errorstatus of Servo   iErrID           §џ              bTimeOutErr            §џ              bInitOK            §џ          Initialization OK   iactPosition           §џ          actual Position SI-value      stPZD_IN                  	   ST_PZD_IN  §џ           Data from NC	   stPZD_OUT                  
   ST_PZD_OUT  §џ!       
   Data to NC        n-X     џџџџ           FB_DPV1READ           fbWriteAccessData                          ADSWRITE    §џ*           
   fbReadData                          ADSREAD    §џ+              iState            §џ,           	   bExecute_             §џ-              stDpv1ReqHeader                  ST_Dpv1Header    §џ/              stDpv1ResHeader                  ST_Dpv1Header    §џ0           	   WaitTimer           (PT := T#100ms)       d        TON    §џ2           
   TmOutTimer                    TON    §џ3           	      bExecute            §џ           drive access info    aNetId            
   T_AmsNetId   §џ       (    NetID of Profibus Master FC310x/EL6731    iProfibusSlaveAdr           §џ           DP address of ProfiDrive    iDriveId           §џ           0..255 possible    pDpv1ReqData    	  №                           §џ              iDpv1ReqDataLen           §џ              pDpv1ResData    	  №                           §џ              iDpv1ResDataLen           §џ              tTmOut         §џ                 bBusy            §џ              bError            §џ               bErrorValues            §џ!              iErrId           §џ"              iErrorClass           §џ#           
   iErrorCode           §џ$                 iRequestRef           §џ'           1..127;    0: reserved         n-X     џџџџ           FB_DPV1READPNET     	      fbRWData                            ADSRDWRT    §џ%              iState            §џ&           	   bExecute_             §џ'              iIGrp    #ј      §џ(              stDpv1ReqHeader                  ST_Dpv1Header    §џ)              stDpv1ResHeader                  ST_Dpv1Header    §џ*              stPNETFrameHeader                    ST_PNIOConfigRecord    §џ+           	   WaitTimer           (PT := T#100ms)       d        TON    §џ-           
   TmOutTimer                    TON    §џ.           	      bExecute            §џ           drive access info    aNetId            
   T_AmsNetId   §џ       !    NetID of Profibus Master EL6631    iProfinetPort           §џ           Port of ProfiDrive    iDriveId           §џ           0..255 possible    pDpv1ReqData    	                            §џ              iDpv1ReqDataLen           §џ              pDpv1ResData    	  №                           §џ              iDpv1ResDataLen           §џ              tTmOut           §џ                 bBusy            §џ              bError            §џ              bErrorValues            §џ              iErrId           §џ              iErrorClass           §џ           
   iErrorCode           §џ                 iRequestRef           §џ"           1..127;    0: reserved         n-X     џџџџ           FB_DPV1WRITE           fbWriteAccessData                          ADSWRITE    §џ*           
   fbReadData                          ADSREAD    §џ+              iState            §џ,           	   bExecute_             §џ-              stDpv1ReqHeader                  ST_Dpv1Header    §џ/              stDpv1ResHeader                  ST_Dpv1Header    §џ0           	   WaitTimer           (PT := T#100ms)       d        TON    §џ2           
   TmOutTimer                    TON    §џ3           	      bExecute            §џ           drive access info    aNetId            
   T_AmsNetId   §џ       (    NetID of Profibus Master FC310x/EL6731    iProfibusSlaveAdr           §џ           DP address of ProfiDrive    iDriveId           §џ           0..255 possible    pDpv1ReqData    	  №                           §џ              iDpv1ReqDataLen           §џ              pDpv1ResData    	  №                           §џ              iDpv1ResDataLen           §џ              tTmOut         §џ                 bBusy            §џ              bError            §џ               bErrorValues            §џ!              iErrId           §џ"              iErrorClass           §џ#           
   iErrorCode           §џ$                 iRequestRef           §џ'           1..127;    0: reserved         n-X     џџџџ           FB_DPV1WRITEPNET     	      fbRWData                            ADSRDWRT    §џ%              iState            §џ&           	   bExecute_             §џ'              iIGrp    #ј      §џ(              stDpv1ReqHeader                  ST_Dpv1Header    §џ)              stDpv1ResHeader                  ST_Dpv1Header    §џ*              stPNETFrameHeader                    ST_PNIOConfigRecord    §џ+           	   WaitTimer           (PT := T#100ms)       d        TON    §џ-           
   TmOutTimer                    TON    §џ.           	      bExecute            §џ           drive access info    aNetId            
   T_AmsNetId   §џ       !    NetID of Profinet Master EL6631    iProfinetPort           §џ           Port of ProfiDrive    iDriveId           §џ           0..255 possible    pDpv1ReqData    	                            §џ              iDpv1ReqDataLen           §џ              pDpv1ResData    	  №                           §џ              iDpv1ResDataLen           §џ              tTmOut           §џ                 bBusy            §џ              bError            §џ              bErrorValues            §џ              iErrId           §џ              iErrorClass           §џ           
   iErrorCode           §џ                 iRequestRef           §џ"           1..127;    0: reserved         n-X     џџџџ           FB_FCXXXXDPV0PKWREAD           fbRead                          ADSREAD    §џ           
   fbDevNetId                IOF_GetDeviceNetId    §џ              istate            §џ           	   sDevNetId                §џ              iIdxGrp            §џ              iport            §џ              iParameterValue            §џ           
   
   bStartFlag            §џ       !    StartFlag to start the PKW-Read    iStationAdd           §џ           Station Address of the Slave 	   iDeviceId           §џ           Device-ID of the FCxxxx    nAxis           §џ           Number of Axis    iPnu           §џ           Parameter-Number 	   iSubindex           §џ           Subindex     iLength           §џ	       "    Length of the parameter (2 or 4)    bArrayCodesNotSupported            §џ
       }    if the drive does not support the ARRAY-AKs 6,7 and 8, this flag should be set (then the AKs 1,2,3 will be used for Arrays)    bSubindexInOctet3            §џ       V    if the drive needs the subindex in Octet 3 (ProfiDrive 2.0), this flag should be set    tTimeOut           §џ                 bBusy            §џ           Reading is busy    iErrorId           §џ           
   iReadValue           §џ           Parameter value             n-X      џџџџ           FB_FCXXXXDPV0PKWWRITE           fbWrite                          ADSWRITE    §џ           
   fbDevNetId                IOF_GetDeviceNetId    §џ              istate            §џ           	   sDevNetId                §џ              iIdxGrp            §џ              iport            §џ              iParameterValue            §џ              
   bStartFlag            §џ       !    StartFlag to start the PKW-REad    iStationAdd           §џ           Station Address of the Slave 	   iDeviceId           §џ           Device-ID of the FCxxxx    nAxis           §џ           Number of Axis    iPnu           §џ           Parameter-Number 	   iSubindex           §џ           Subindex     iLength           §џ	       "    Length of the parameter (2 or 4)    iWriteValue           §џ
           Parameter value    bArrayCodesNotSupported            §џ       }    if the drive does not support the ARRAY-AKs 6,7 and 8, this flag should be set (then the AKs 1,2,3 will be used for Arrays)    bSubindexInOctet3            §џ       V    if the drive needs the subindex in Octet 3 (ProfiDrive 2.0), this flag should be set    tTimeOut    '     §џ                 bBusy            §џ           Writing is busy    iErrorId           §џ                       n-X      џџџџ           FB_GETDPRAMINFO           FallingEdge                 F_TRIG    §џ           
   RisingRead                 R_TRIG    §џ              fbAdsReadEx                        	   ADSREADEX    §џ                 nDevId           §џ       v    Device id of the FCxxxx or other DPRAM card ( Map the FC card as generic DPRAM/NOVRAM card im System Manager first )    bExecute            §џ       ,    Rising edge starts function block execution   tTimeOut         §џ           Max timeout for this command       bBusy            §џ              bError            §џ	              nErrid           §џ
              stInfo                ST_NovRamAddrInfo   §џ                       n-X     џџџџ           FB_GETDPRAMINFOEX           FallingEdge                 F_TRIG    §џ           
   RisingRead                 R_TRIG    §џ              fbAdsReadEx                        	   ADSREADEX    §џ                 nDevId           §џ       v    Device id of the FCxxxx or other DPRAM card ( Map the FC card as generic DPRAM/NOVRAM card im System Manager first )    bExecute            §џ       ,    Rising edge starts function block execution   tTimeOut         §џ           Max timeout for this command       bBusy            §џ              bError            §џ	              nErrid           §џ
              stInfo                 ST_NovRamAddrInfoEx   §џ                       n-X     џџџџ           FB_GETUPSSTATUS           fbRegQueryValue                FB_RegQueryValue ` §џ              step         ` §џ              i         ` §џ           
   risingEdge                 R_TRIG ` §џ              regNames   	                       
(*  Config REG_SZ's *)					'Model', 'Vendor',
(*  Status REG_SZ's *)					'FirmwareRev', 'SerialNumber',
(*  Status REG_DWORD's *)				'CommStatus','BatteryCapacity','BatteryStatus','TotalUPSRuntime','TcPowerFailCnt', 'TcChargeFlags','UtilityPowerStatus'            Model         Vendor         FirmwareRev         SerialNumber      
   CommStatus         BatteryCapacity         BatteryStatus         TotalUPSRuntime         TcPowerFailCnt         TcChargeFlags         UtilityPowerStatus ` §џ           	   regSZData    Q       Q  ` §џ           	   regDWData         ` §џ              delay           ( PT := T#300ms)       ,       TON ` §џ              tTimeOut    а   ` §џ           	   tmpStatus                         ST_UPSStatus ` §џ              sPort    Q       Q  ` §џ              sKey    Q       Q  ` §џ                 sNetId            
   T_AmsNetId   §џ              nPort           0    	   T_AmsPort   §џ           0 = Windows UPS service    bEnable            §џ                 bValid            §џ              bError            §џ	              nErrId           §џ
              stStatus                         ST_UPSStatus   §џ                       n-X      џџџџ           FB_KL1501CONFIG           rtRead                 R_TRIG    §џ              rtSet                 R_TRIG    §џ              bSetReq             §џ           
   tonTimeout                    TON    §џ              iStep            §џ              bSetConfigError             §џ              wReg32            §џ           	   wSetReg32            §џ            	   wFirmware            §џ!           	   pFirmware                  §џ"           	   sFirmware                §џ#              iDataIn0Saved            §џ$              iDataIn1Saved            §џ%                 bConfigurate            §џ       H   Rising edge starts configuration including read-configuration afterwards   bReadConfig            §џ       *   Rising edge reads the actual configuration   iSetCounterType           §џ       !   Counter-type to be set, see table   bSetBackwardCounting            §џ          Select backward-counting   tTimeout         §џ       =   Time-out-time for Reading/Configuration - initially set to 5s      bBusy            §џ
       '   Reading or configuration is in progress   bError            §џ       !   Error while reading/configuration   iErrorId           §џ          Id of the last upcoming error   iState           §џ       j   As long as the funcion-block is not busy, this variable shows the state of the terminal, otherwise it is 0   iDataIn0           §џ          As long as the funcion-block is not busy, this variable shows the dataIn0 of the terminal, otherwise it keeps the value previous to reding/configuration   iDataIn1           §џ          As long as the funcion-block is not busy, this variable shows the dataIn1 of the terminal, otherwise it keeps the value previous to reding/configuration   iDataIn           §џ       M   iDataIn1 and IDataIn0 put together as an UDINT, with iDataIn1 as High-Integer   iTerminalType           §џ       '   Terminal-type-number, in this case 3228   iSpecialType           §џ          Sub-type-number   iFirmwareVersion           §џ          Firmware in ASCII-code   sDescription    Q       Q    §џ       A   Terminal-type, special-type and firmware-version as readable text   sCounterType    Q       Q    §џ       (   Text-description of entered counter-type   bBackwardCounting            §џ       $   TRUE: Backward-counting was selected      stInData                 ST_KL1501InData  §џ(           Process image of the inputs. 	   stOutData                 ST_KL1501OutData  §џ)           Process image of the outputs.         n-X      џџџџ           FB_KL27X1CONFIG           rtRead                 R_TRIG    §џ%              rtSet                 R_TRIG    §џ&              bSetReq             §џ'           
   tonTimeout                    TON    §џ(              iStep            §џ)              bSetConfigError             §џ*              wReg32            §џ+           	   wSetReg32            §џ,              wReg35            §џ-           	   wSetReg35            §џ.              wReg36            §џ/           	   wSetReg36            §џ0              wReg37            §џ1           	   wSetReg37            §џ2              wReg38            §џ3           	   wSetReg38            §џ4              wReg39            §џ5           	   wSetReg39            §џ6              wReg40            §џ7           	   wSetReg40            §џ8              wReg41            §џ9           	   wSetReg41            §џ:           	   wFirmware            §џ;           	   pFirmware                  §џ<           	   sFirmware                §џ=                 bConfigurate            §џ       H   Rising edge starts configuration including read-configuration afterwards   bReadConfig            §џ       *   Rising edge reads the actual configuration   bSetDimRampAbsolute            §џ       b   FALSE: ramp-time refers to a step from 0..100%, TRUE: ramp-time refers to a step to the next value   iSetRampTime           §џ          Ramp-time to be set, see table   bSetWatchdogDisable            §џ       5   TRUE disables the watchdog for fieldbus-communication   iSetWatchdogTimeout           §џ          Watchdog-time in 10ms-units   iSetTimeoutOnValue           §џ	       D   Value to be set, if timeout occurs and lamp was previously turned on   iSetTimeoutOffValue           §џ
       E   Value to be set, if timeout occurs and lamp was previously turned off   iSetDimmerMode           §џ           Dimmer-mode to be set, see table   bSetOnAfterShortCircuit            §џ       <   Selects, if the lamp has to be turned on after short-circuit   bSetLineFrequency60Hz            §џ       3   FALSE sets the line-frequency to 50Hz, TRUE to 60Hz   tTimeout         §џ       =   Time-out-time for Reading/Configuration - initially set to 5s      bBusy            §џ       '   Reading or configuration is in progress   bError            §џ       !   Error while reading/configuration   iErrorId           §џ          Id of the last upcoming error   iState           §џ       j   As long as the funcion-block is not busy, this variable shows the state of the terminal, otherwise it is 0   iTerminalType           §џ          Terminal-type-number, e.g. 2751   iSpecialType           §џ          Sub-type-number   iFirmwareVersion           §џ          Firmware in ASCII-code   sDescription    Q       Q    §џ       A   Terminal-type, special-type and firmware-version as readable text   bDimRampAbsolute            §џ       E   TRUE: Dimramp was set to absolute - FALSE Dimramp was set to relative	   sRampTime    Q       Q    §џ       0   Ramp-time, which was set, according to the table   bWatchdogDisable            §џ          TRUE: Watchdog was disabled   tWatchdogTimeout           §џ          Entered Watchdog-time   iTimeoutOnValue           §џ          Timeout on-value, which was set   iTimeoutOffValue           §џ           Timeout off-value, which was set   sDimmerMode    Q       Q    §џ           Dimmer-mode, which was selected   sAfterShortCircuit    Q       Q    §џ!       2   Selected behaviour after short-circuit - on or off   sLineFrequency    Q       Q    §џ"       %   Selected line-frequency - 50 or 60 Hz      stInData                 ST_KL27x1InData  §џ@           Process image of the inputs. 	   stOutData                 ST_KL27x1OutData  §џA           Process image of the outputs.         n-X      џџџџ           FB_KL3208CONFIG           rtRead                 R_TRIG    §џ              rtSet                 R_TRIG    §џ              bSetReq             §џ           
   tonTimeout                    TON    §џ              iStep            §џ              bSetConfigError             §џ              wReg32            §џ           	   wSetReg32            §џ              wReg39            §џ           	   wSetReg39            §џ           	   wFirmware            §џ           	   pFirmware                  §џ            	   sFirmware                §џ!              iDataInSaved            §џ"                 bConfigurate            §џ       H   Rising edge starts configuration including read-configuration afterwards   bReadConfig            §џ       *   Rising edge reads the actual configuration   iSetSensorType           §џ           Sensor-type to be set, see table   tTimeout         §џ       =   Time-out-time for Reading/Configuration - initially set to 5s
      bBusy            §џ	       '   Reading or configuration is in progress   bError            §џ
       !   Error while reading/configuration   iErrorId           §џ          Id of the last upcoming error   iState           §џ       j   As long as the funcion-block is not busy, this variable shows the state of the terminal, otherwise it is 0   iDataIn           §џ          As long as the funcion-block is not busy, this variable shows the dataIn of the terminal, otherwise it keeps the value previous to reding/configuration   iTerminalType           §џ       '   Terminal-type-number, in this case 3208   iSpecialType           §џ          Sub-type-number   iFirmwareVersion           §џ          Firmware in ASCII-code   sDescription    Q       Q    §џ       A   Terminal-type, special-type and firmware-version as readable text   sSensorType    Q       Q    §џ       '   Text-description of entered sensor-type      stInData                 ST_KL3208InData  §џ%           Process image of the inputs. 	   stOutData                 ST_KL3208OutData  §џ&           Process image of the outputs.         n-X      џџџџ           FB_KL320XCONFIG           rtRead                 R_TRIG    §џ              rtSet                 R_TRIG    §џ              bSetReq             §џ           
   tonTimeout                    TON    §џ              iStep            §џ              bSetConfigError             §џ              wReg32            §џ           	   wSetReg32            §џ           	   wFirmware            §џ           	   pFirmware                  §џ           	   sFirmware                §џ               iDataInSaved            §џ!                 bConfigurate            §џ       H   Rising edge starts configuration including read-configuration afterwards   bReadConfig            §џ       *   Rising edge reads the actual configuration   iSetSensorType           §џ           Sensor-type to be set, see table   tTimeout         §џ       =   Time-out-time for Reading/Configuration - initially set to 5s      bBusy            §џ	       '   Reading or configuration is in progress   bError            §џ
       !   Error while reading/configuration   iErrorId           §џ          Id of the last upcoming error   iState           §џ       j   As long as the funcion-block is not busy, this variable shows the state of the terminal, otherwise it is 0   iDataIn           §џ          As long as the funcion-block is not busy, this variable shows the dataIn of the terminal, otherwise it keeps the value previous to reding/configuration   iTerminalType           §џ          Terminal-type-number, e.g. 3204   iSpecialType           §џ          Sub-type-number   iFirmwareVersion           §џ          Firmware in ASCII-code   sDescription    Q       Q    §џ       A   Terminal-type, special-type and firmware-version as readable text   sSensorType    Q       Q    §џ       '   Text-description of entered sensor-type   bTwoWiredConnection            §џ       *   Shows, if two-wired connection is selected      stInData                 ST_KL320xInData  §џ$           Process image of the inputs. 	   stOutData                 ST_KL320xOutData  §џ%           Process image of the outputs.         n-X      џџџџ           FB_KL3228CONFIG           rtRead                 R_TRIG    §џ              rtSet                 R_TRIG    §џ              bSetReq             §џ           
   tonTimeout                    TON    §џ              iStep            §џ              bSetConfigError             §џ              wReg32            §џ           	   wSetReg32            §џ           	   wFirmware            §џ           	   pFirmware                  §џ           	   sFirmware                §џ              iDataInSaved            §џ                  bConfigurate            §џ       H   Rising edge starts configuration including read-configuration afterwards   bReadConfig            §џ       *   Rising edge reads the actual configuration   iSetSensorType           §џ           Sensor-type to be set, see table   tTimeout         §џ       =   Time-out-time for Reading/Configuration - initially set to 5s
      bBusy            §џ	       '   Reading or configuration is in progress   bError            §џ
       !   Error while reading/configuration   iErrorId           §џ          Id of the last upcoming error   iState           §џ       j   As long as the funcion-block is not busy, this variable shows the state of the terminal, otherwise it is 0   iDataIn           §џ          As long as the funcion-block is not busy, this variable shows the dataIn of the terminal, otherwise it keeps the value previous to reding/configuration   iTerminalType           §џ       '   Terminal-type-number, in this case 3228   iSpecialType           §џ          Sub-type-number   iFirmwareVersion           §џ          Firmware in ASCII-code   sDescription    Q       Q    §џ       A   Terminal-type, special-type and firmware-version as readable text   sSensorType    Q       Q    §џ       '   Text-description of entered sensor-type      stInData                 ST_KL3228InData  §џ#           Process image of the inputs. 	   stOutData                 ST_KL3228OutData  §џ$           Process image of the outputs.         n-X      џџџџ           FB_NOVRAMREADWRITE     	      bInit             §џ           
   nInitDevId            §џ           	   bWantRead             §џ           
   bWantWrite             §џ              iStep            §џ           
   RisingRead                 R_TRIG    §џ              RisingWrite                 R_TRIG    §џ              stNovRamAddrInfo                ST_NovRamAddrInfo    §џ              fbAdsReadEx                        	   ADSREADEX    §џ                 nDevId           §џ       ^    Device id of the FCxxxx card. Map the FC card as generic DPRAM/NOVRAM card im System Manager    bRead            §џ       /    Rising edge starts read data block from NovRam   bWrite            §џ       .    Rising edge starts write data block to NovRam   cbSrcLen           §џ           Number of data bytes to write 	   cbDestLen           §џ           Number of data bytes to read   pSrcAddr           §џ       "    Address of the write data buffer 	   pDestAddr           §џ	       !    Address of the read data buffer    tTimeOut         §џ
           Max timeout for this command       bBusy            §џ           The fb is working    bError            §џ           The fb returns an error    nErrId           §џ           Error code    cbRead           §џ       '    Number of succesfully read data bytes    cbWrite           §џ       (    Number of succesfully write data bytes             n-X     џџџџ           FB_NOVRAMREADWRITEEX           bInit             §џ           
   nInitDevId            §џ           	   bWantRead             §џ           
   bWantWrite             §џ              bCopy             §џ              i            §џ              iStep            §џ           
   RisingRead                 R_TRIG    §џ              RisingWrite                 R_TRIG    §џ              stNovRamAddrInfo                 ST_NovRamAddrInfoEx    §џ!              fbAdsReadEx                        	   ADSREADEX    §џ"              pByte                  §џ$              pCard                  §џ%           
      nDevId           §џ       ^    Device id of the FCxxxx card. Map the FC card as generic DPRAM/NOVRAM card im System Manager    bRead            §џ       /    Rising edge starts read data block from NovRam   bWrite            §џ       .    Rising edge starts write data block to NovRam   cbSrcLen           §џ           Number of data bytes to write 	   cbDestLen           §џ           Number of data bytes to read   pSrcAddr           §џ       "    Address of the write data buffer 	   pDestAddr           §џ	       !    Address of the read data buffer 	   nReadOffs           §џ
       *    Offset in the DPRAM to start reading from
   nWriteOffs           §џ       (    Offset in the DPRAM to start writing to   tTimeOut           §џ           Max timeout for this command       bBusy            §џ           The fb is working    bError            §џ           The fb returns an error    nErrId           §џ           Error code    cbRead           §џ       '    Number of succesfully read data bytes    cbWrite           §џ       (    Number of succesfully write data bytes             n-X      џџџџ           FB_READADSTECSYSDATA           dwTemp            §џ              ptr    	                               §џ              delay                    TON    §џ              wPort    @      §џ           
   risingEdge                 R_TRIG    §џ              step            §џ              fbAdsRdWrtEx                          
   ADSRDWRTEX    §џ                 sNetId            
   T_AmsNetId   §џ              bEnable            §џ           
   tCycleTime    d      §џ                 bValid            §џ              bError            §џ	              nErrId           §џ
           	   stSysData                                 ST_AdsTecSysData   §џ                       n-X      џџџџ           FB_READINPUT_ANALOG           fbParameterinterface                                 FB_ASI_Parameterinterface    §џ!              bHiWord             §џ"              iParametervalue            §џ#              iParameterReadValue            §џ$              iParametergroup            §џ%              iErrCounter            §џ&              istate            §џ'                 iSlaveaddress           §џ              iChannel           §џ           
   bCycleMode            §џ       -   0: Acyclic , 1:Cyclic (permanent Read/Write)    bStart            §џ                 bBusy            §џ              bErr            §џ              iErrornumber           §џ              bValid            §џ           	   bOverflow            §џ           
   iReadValue           §џ                 stParameterBuffer                     ST_ParameterBuffer  §џ                   n-X      џџџџ           FB_WRITEOUTPUT_ANALOG           fbParameterinterface                                 FB_ASI_Parameterinterface    §џ              bHiWord             §џ               iParametervalue            §џ!              iParameterReadValue            §џ"              iParametergroup            §џ#              iErrCounter            §џ$              istate            §џ%           
   iReadValue            §џ'                 iSlaveaddress           §џ              iChannel           §џ              iSlavevalue           §џ           
   bCycleMode            §џ       -   0: Acyclic , 1:Cyclic (permanent Read/Write)    bStart            §џ                 bBusy            §џ              bErr            §џ              iErrornumber           §џ                 stParameterBuffer                     ST_ParameterBuffer  §џ                   n-X      џџџџ           IOF_CAN_LAYER2COMMAND        	   ADSWRITE1                          ADSWRITE    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              LEN           §џ              SRCADDR           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       n-X     џџџџ           IOF_DEVICERESET        
   ADSWRTCTL1       E    ( PORT := AMSPORT_R0_IO, ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0 )              	   T_AmsPort                        	   ADSWRTCTL ` §џ           
   RisingEdge                 R_TRIG ` §џ              state         ` §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              RESET            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       n-X     џџџџ           IOF_GETBOXADDRBYNAME           ADSRDWRTEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000004 )              	   T_AmsPort                       
   ADSRDWRTEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              state         ` §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              BOXNAME               T_MaxString   §џ              START            §џ              TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ              BOXADDR           §џ                       n-X     џџџџ           IOF_GETBOXADDRBYNAMEEX           ADSRDWRTEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000004 )              	   T_AmsPort                       
   ADSRDWRTEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              state         ` §џ              StrBuff           ` §џ                 NETID            
   T_AmsNetId   §џ           
   DEVICENAME               T_MaxString   §џ              BOXNAME               T_MaxString   §џ              START            §џ              TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ              BOXADDR           §џ                       n-X     џџџџ           IOF_GETBOXCOUNT        
   ADSREADEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000002 )              	   T_AmsPort                     	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              state         ` §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              BOXCOUNT           §џ                       n-X     џџџџ           IOF_GETBOXNAMEBYADDR           ADSRDWRTEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000003 )              	   T_AmsPort                       
   ADSRDWRTEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              state         ` §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              BOXADDR           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ              BOXNAME               T_MaxString   §џ                       n-X     џџџџ           IOF_GETBOXNETID           ADSRDWRTEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000006 )              	   T_AmsPort                       
   ADSRDWRTEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              state         ` §џ              tmpNetId   	                       ` §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              BOXADDR           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ              BoxNetId            
   T_AmsNetId   §џ                       n-X     џџџџ           IOF_GETDEVICECOUNT        
   ADSREADEX1       F    ( PORT:= AMSPORT_R0_IO, IDXGRP:= 16#00005000, IDXOFFS:= 16#00000002 )              	   T_AmsPort          P              	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              state         ` §џ                 NETID            
   T_AmsNetId   §џ              START            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ	              ERRID           §џ
              DEVICECOUNT           §џ                       n-X     џџџџ           IOF_GETDEVICEIDBYNAME           ADSRDWRTEX1       F    ( PORT:= AMSPORT_R0_IO, IDXGRP:= 16#00005000, IDXOFFS:= 16#00000003 )              	   T_AmsPort          P                
   ADSRDWRTEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              state         ` §џ                 NETID            
   T_AmsNetId   §џ           
   DEVICENAME               T_MaxString   §џ              START            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              DEVICEID           §џ                       n-X     џџџџ           IOF_GETDEVICEIDS        
   ADSREADEX1       F    ( PORT:= AMSPORT_R0_IO, IDXGRP:= 16#00005000, IDXOFFS:= 16#00000001 )              	   T_AmsPort          P              	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              state         ` §џ                 NETID            
   T_AmsNetId   §џ              LEN           §џ              DESTADDR           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ                       n-X     џџџџ           IOF_GETDEVICEINFOBYNAME           ADSRDWRTEX1       F    ( PORT:= AMSPORT_R0_IO, IDXGRP:= 16#00005000, IDXOFFS:= 16#00000003 )              	   T_AmsPort          P                
   ADSRDWRTEX ` §џ           
   ADSREADEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000005 )              	   T_AmsPort                     	   ADSREADEX ` §џ              tmpNetId   	                       ` §џ              state         ` §џ           
   RisingEdge                 R_TRIG ` §џ                 NETID            
   T_AmsNetId   §џ           
   DEVICENAME               T_MaxString   §џ              START            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              DEVICEID           §џ              DEVICENETID            
   T_AmsNetId   §џ                       n-X     џџџџ           IOF_GETDEVICENAME        
   ADSREADEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000001 )              	   T_AmsPort                     	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              state         ` §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ           
   DEVICENAME               T_MaxString   §џ                       n-X     џџџџ           IOF_GETDEVICENETID        
   ADSREADEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000005 )              	   T_AmsPort                     	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              state         ` §џ              tmpNetId   	                       ` §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              DeviceNetId            
   T_AmsNetId   §џ                       n-X     џџџџ           IOF_GETDEVICETYPE        
   ADSREADEX1       0    ( PORT:= AMSPORT_R0_IO, IDXOFFS:= 16#00000007 )              	   T_AmsPort                     	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              state         ` §џ              tmpDeviceType         ` §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              IODeviceType               IODEVICETYPES   §џ                       n-X     џџџџ           IOF_LB_BREAKLOCATIONTEST        
   ADSREADEX1                        	   ADSREADEX    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ              TestData   	                          §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              BREAK            §џ              BOXNO           §џ                       n-X     џџџџ           IOF_LB_PARITYCHECK        
   ADSREADEX1                        	   ADSREADEX    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              LEN           §џ              DESTADDR           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       n-X     џџџџ           IOF_LB_PARITYCHECKWITHRESET        
   ADSREADEX1                        	   ADSREADEX    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              LEN           §џ              DESTADDR           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       n-X     џџџџ           IOF_SER_DRIVE_BACKUP     2      iVALUE           §џ              ReadSercosParam                IOF_SER_IDN_Read    §џ              WriteSercosParam                IOF_SER_IDN_Write    §џ              OpenBackupFile                             FB_FileOpen    §џ!              CloseBackupFile                      FB_FileClose    §џ"              ReadBackupFile                            FB_FileRead    §џ#              WriteBackupFile                           FB_FileWrite    §џ$              eState               E_SercosBackupState    §џ&           
   sCheckData                 ST_SercosString    §џ(              wCRC16_CCITT            §џ)           	   wCheckSum            §џ*              bCheck_I             §џ,           	   bBackup_I             §џ-           
   bRestore_I             §џ.              bCheck_L             §џ/           	   bBackup_L             §џ0           
   bRestore_L             §џ1           
   bUpdateCRC             §џ2              bBackupDone             §џ4              bRestoreDone             §џ5              arrList   	  џџ                       §џ7              nListArrIdx            §џ8              sListAttrib        
                ST_SercosParamAttrib    §џ9              cbLen            §џ;              arrData   	  џџ                       §џ<              nIDN            §џ>              nCRCIDN           §џ?              bCRCIDNExist             §џ@              bCRCIDNTest            §џA              iIdx            §џB              sParamHeader                 ST_SercosParamHeader    §џD              cbSize            §џE              sFileHeader                  ST_SercosFileHeader    §џF           
   sParamData        
                ST_SercosParamData    §џG              iActListItem            §џI              iLastListItem            §џJ           
   bEndOfList             §џK           	   bFileOpen             §џM              hFile            §џN              nVersion           §џO              nRetVal            §џP              bWrongListType             §џR           
   bFileError             §џS           
   nFileErrId            §џT           	   bIdnError             §џU           	   nIdnErrId            §џV              nIdnAccessId            §џW              wSavedCRC16_CCITT           §џZ              wSavedCheckSum           §џ[              sSavedCheckData                 ST_SercosString   §џ\                 bCheck            §џ              bBackup            §џ              bRestore            §џ           
   bCRCEnable           §џ              bStdBackupList           §џ              sNetId            
   T_AmsNetId   §џ              nPort           §џ	              sComment               T_MaxString   §џ
              ePath           PATH_BOOTPATH    
   E_OpenPath   §џ           	   sPathName           'DRIVEPAR.BIN'       T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              bCheckOK            §џ       z   	Function block specific error codes:
	16#1005 = false backup parameter type 
	16#1006 = backup list was not IDN 192

            n-X     џџџџ           IOF_SER_DRIVE_BACKUPEX     2      iVALUE           §џ"              ReadSercosParam                IOF_SER_IDN_Read    §џ%              WriteSercosParam                IOF_SER_IDN_Write    §џ&              OpenBackupFile                             FB_FileOpen    §џ(              CloseBackupFile                      FB_FileClose    §џ)              ReadBackupFile                            FB_FileRead    §џ*              WriteBackupFile                           FB_FileWrite    §џ+              eState               E_SercosBackupState    §џ-           
   sCheckData                 ST_SercosString    §џ/              wCRC16_CCITT            §џ0           	   wCheckSum            §џ1              bCheck_I             §џ3           	   bBackup_I             §џ4           
   bRestore_I             §џ5              bCheck_L             §џ6           	   bBackup_L             §џ7           
   bRestore_L             §џ8           
   bUpdateCRC             §џ9              bBackupDone             §џ;              bRestoreDone             §џ<              nListArrIdx            §џ>              sListAttrib        
                ST_SercosParamAttrib    §џ?              cbLen            §џA              arrData   	  џџ                       §џB              nIDN            §џD              nCRCIDN           §џE              bCRCIDNExist             §џF              bCRCIDNTest            §џG              iIdx            §џH              sParamHeader                 ST_SercosParamHeader    §џJ              cbSize            §џK              sFileHeader                  ST_SercosFileHeader    §џL           
   sParamData        
                ST_SercosParamData    §џM              iActListItem            §џO              iLastListItem            §џP           
   bEndOfList             §џQ           	   bFileOpen             §џS              hFile            §џT              nVersion           §џU              nRetVal            §џV              bWrongListType             §џX           
   bFileError             §џY           
   nFileErrId            §џZ           	   bIdnError             §џ[           	   nIdnErrId            §џ\              nIdnAccessId            §џ]              iLargeParam            §џ^              wSavedCRC16_CCITT           §џa              wSavedCheckSum           §џb              sSavedCheckData                 ST_SercosString   §џc                 bCheck            §џ              bBackup            §џ              bRestore            §џ           
   bCRCEnable            §џ              bStdBackupList           §џ              bUserBackupList            §џ              sNetId            
   T_AmsNetId   §џ	              nPort           §џ
              sComment               T_MaxString   §џ              ePath           PATH_BOOTPATH    
   E_OpenPath   §џ           	   sPathName           'DRIVEPAR.BIN'       T_MaxString   §џ              tTimeout         §џ              bIgnoreParamErr            §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              bCheckOK            §џ              iSkippedParams           §џ              iHandledParams           §џ          	Function block specific error codes:
	16#1005 = false backup parameter type 
	16#1006 = backup list was not IDN 192 (standard backup) or 0 (userdefined)
      arrList                  ST_SercosParamList  §џ              arrSkippedList                   ST_SercosParamErrList  §џ                   n-X     џџџџ           IOF_SER_DRIVE_RESET        
   WriteBlock                          ADSWRITE    §џ              iState            §џ              iRepeats            §џ              nRetVal            §џ              bReset_I             §џ              Timeout           (PT := T#100ms)       d        TON    §џ              nAttrib            §џ              iValue            §џ                 sNetId            
   T_AmsNetId   §џ           net id of PC ('' = local PC)    nPort           §џ       a    see System Manager 'IO-Configuration | IO Devices | Sercos Mastert | Sercos Drive | ADS | Port'    bReset            §џ              tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       n-X     џџџџ           IOF_SER_GETPHASE        
   ADSREADEX1                        	   ADSREADEX    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              GET            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              PHASE           §џ                       n-X     џџџџ           IOF_SER_IDN_READ        	   ReadBlock                          ADSREAD    §џ              iState            §џ              iRepeats            §џ              nRetVal            §џ              dwDestAddr_I            §џ           
   bExecute_I             §џ              nMode_I            §џ               Timeout           (PT := T#100ms)       d        TON    §џ!              iVALUE           §џ$           Parameter Value 	   iFCNSTATE          §џ%           Function State    iNAME          §џ&           Parameter Name    iATTRIB          §џ'           Parameter Attribute    iUNIT          §џ(           Parameter Unit    iMIN          §џ)           Parameter Minimum    iMAX          §џ*           Parameter Maximum 	      sNetId            
   T_AmsNetId   §џ           ams net id    nIDN           §џ       ,    S: 0******* ********, P: 1******* ********    bExecute            §џ           starts read with rising edge    nPort           §џ           sercos axis ads port number    nMode           §џ       H    read: 0= Value, 2= Name, 3= Attribute, 4= Unit, 5= Minimum, 6= Maximum    nAttrib           §џ       +    parameter attribute if known, otherwise 0    cbLen           §џ	           max lenght of data buffer 
   dwDestAddr           §џ
           address of data buffer    tTimeout         §џ       >    timeout for complete parameter access (e.g. incl. attribute)       cbRead           §џ           	   nAttribRd           §џ              sAttrib        
                ST_SercosParamAttrib   §џ              bBusy            §џ              bError            §џ              nErrId           §џ       u   	Function block specific error codes:
	16#1003 =  Wrong parameter mode
	16#1004 = Data parameter wrong value size
            n-X     џџџџ           IOF_SER_IDN_WRITE        
   WriteBlock                          ADSWRITE    §џ           	   ReadBlock                          ADSREAD    §џ              iState            §џ              iRepeats            §џ              cbRead            §џ              cbWrite            §џ           
   dwDestAddr            §џ              nRetVal            §џ           
   bExecute_I             §џ              Timeout           (PT := T#100ms)       d        TON    §џ              iVALUE           §џ            Parameter Value    iATTRIB          §џ!           Parameter Attribute       sNetId            
   T_AmsNetId   §џ              nIDN           §џ       :    S: binary 0******* ********, P: binary 1******* ********    bExecute            §џ           starts write with rising edge    nPort           §џ           sercos axis ads port number    nAttrib           §џ           write: 0= Value    cbLen           §џ           max lenght of data buffer 	   dwSrcAddr           §џ	           address of data buffer    tTimeout         §џ
       >    timeout for complete parameter access (e.g. incl. attribute)    	   nAttribRd           §џ              sAttrib        
                ST_SercosParamAttrib   §џ              bBusy            §џ              bError            §џ              nErrId           §џ                       n-X     џџџџ           IOF_SER_RESETERR        	   ADSWRITE1                          ADSWRITE    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              RESET            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       n-X     џџџџ           IOF_SER_SAVEFLASH        	   ADSWRITE1                          ADSWRITE    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              SAVE            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       n-X     џџџџ           IOF_SER_SETPHASE        	   ADSWRITE1                          ADSWRITE    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ                 NETID            
   T_AmsNetId   §џ              DEVICEID           §џ              PHASE           §џ              SET            §џ              TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ                       n-X     џџџџ           SCIT_ACTIVATECONFIGURATION        	   ADSRDWRT1                            ADSRDWRT    §џ           
   BusyFlanke                 F_TRIG    §џ              StartFlanke                 R_TRIG    §џ           
   ReadResult                  ReadResult_t    §џ           	   WriteData                HLword_t    §џ                 NETID            
   T_AmsNetId   §џ              PORT           §џ              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              RESULT           §џ              ADDERRORINFO           §џ                       n-X     џџџџ           SCIT_ALARMSTOP        	   ADSRDWRT1                            ADSRDWRT    §џ           
   BusyFlanke                 F_TRIG    §џ              StartFlanke                 R_TRIG    §џ           
   ReadResult                  ReadResult_t    §џ                 NETID            
   T_AmsNetId   §џ              PORT           §џ              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              RESULT           §џ              ADDERRORINFO           §џ                       n-X     џџџџ           SCIT_CONFDEVERRALL        	   ADSRDWRT1                            ADSRDWRT    §џ           
   BusyFlanke                 F_TRIG    §џ              StartFlanke                 R_TRIG    §џ           
   ReadResult                  ReadResult_t    §џ           	   WriteData            §џ                 NETID            
   T_AmsNetId   §џ              PORT           §џ              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              RESULT           §џ              ADDERRORINFO           §џ                       n-X     џџџџ           SCIT_CONTROLACTIVECONFIGURATION        	   ADSRDWRT1                            ADSRDWRT    §џ           
   BusyFlanke                 F_TRIG    §џ              StartFlanke                 R_TRIG    §џ           
   ReadResult                  ReadResult_t    §џ           	   WriteData                    ControlActiveConfiguration_t    §џ                 NETID            
   T_AmsNetId   §џ              PORT           §џ              WRTRD            §џ              TMOUT         §џ              SWITCH_CODE           §џ           	   DEVICE_NO           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              RESULT           §џ              ADDERRORINFO           §џ                       n-X     џџџџ           SCIT_DEACTIVATECONFIGURATION        	   ADSRDWRT1                            ADSRDWRT    §џ           
   BusyFlanke                 F_TRIG    §џ              StartFlanke                 R_TRIG    §џ           
   ReadResult                  ReadResult_t    §џ           	   WriteData                HLword_t    §џ                 NETID            
   T_AmsNetId   §џ              PORT           §џ              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              RESULT           §џ              ADDERRORINFO           §џ                       n-X     џџџџ           SCIT_GETERRORINFO        	   ADSRDWRT1                            ADSRDWRT    §џ           
   BusyFlanke                 F_TRIG    §џ              StartFlanke                 R_TRIG    §џ           	   WriteData                HLword_t    §џ           
   ReadResult                      GetErrorInfo_t    §џ                 NETID            
   T_AmsNetId   §џ              PORT           §џ              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              RESULT           §џ           	   ERRORCODE           §џ              ADDERRORINFO           §џ                       n-X     џџџџ           SCIT_STARTDATATRANSFER        	   ADSRDWRT1                            ADSRDWRT    §џ           
   BusyFlanke                 F_TRIG    §џ              StartFlanke                 R_TRIG    §џ           
   ReadResult                  ReadResult_t    §џ                 NETID            
   T_AmsNetId   §џ              PORT           §џ              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              RESULT           §џ              ADDERRORINFO           §џ                       n-X     џџџџ           SCIT_STOPDATATRANSFER        	   ADSRDWRT1                            ADSRDWRT    §џ           
   BusyFlanke                 F_TRIG    §џ              StartFlanke                 R_TRIG    §џ           
   ReadResult                  ReadResult_t    §џ           	   WriteData            §џ                 NETID            
   T_AmsNetId   §џ              PORT           §џ              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              RESULT           §џ              ADDERRORINFO           §џ                       n-X     џџџџ    q   C:\TwinCAT\PLC\LIB\COMlibV2.lb6 @                                                                                          _RECEIVESTRING     
      RxString                §џ              state            §џ              c            §џ              l            §џ              l2            §џ              pl            §џ              sl            §џ              iTimeout            §џ              Receive                ReceiveByte    §џ              TimeoutTimer                    TOF    §џ                 Prefix    Q       Q    §џ              Suffix    Q       Q    §џ              Timeout           §џ              Reset            §џ              pReceivedString                 §џ       #    Pointer to variable length string    SizeReceivedString           §џ           variable string size       StringReceived            §џ              Busy            §џ              Error            
   ComError_t   §џ           	   RxTimeout            §џ              ErrorCountPrefix           §џ       +    invalid characters received before prefix    ReceivedPrefix    Q       Q    §џ       .    received prefix including invalid characters       RXbuffer                   	   COMbuffer  §џ                   фS      џџџџ           _SENDSTRING           pos            §џ              Send                SendByte    §џ              c            §џ              ls            §џ              
   SendString               §џ                 Busy            §џ              Error            
   ComError_t   §џ                 TXbuffer                   	   COMbuffer  §џ
                   фS      џџџџ           _STRNCPY           d            §џ              i            §џ	                 pTargetString                 §џ              pSourceString                 §џ              MaxSize           §џ                 _strncpy                                      фS      џџџџ           ASC           pChar                  §џ                 str    Q       Q    §џ                 ASC                                     фS      џџџџ           CHR           str1                §џ              pChar                  §џ                 c           §џ                 CHR    Q       Q                              фS      џџџџ           CLEARCOMBUFFER                       Buffer                   	   COMbuffer  §џ                   фS      џџџџ           COMRESET     	      TIME_OUT_VALUE    d      §џ              RESETMASK_STANDARD          §џ              RESETMASK_ALTERNATIVE          §џ              Timeout                    TON    §џ              state            §џ              pCTRL                  §џ              pSTATUS                  §џ           	   ResetMask            §џ              TriggerExecute                 R_TRIG    §џ                 Execute            §џ	              pComIn    	  A                            §џ
       .    pointer to any KL6 or COM-Port process image    pComOut    	  A                            §џ       .    pointer to any KL6 or COM-Port process image 	   SizeComIn           §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID            
   ComError_t   §џ                       фS      џџџџ           GET_COMLIB_VERSION               bGet            §џ                 Get_ComLib_Version                                         фS      џџџџ           KL6CONFIGURATION           TIME_OUT_VALUE    d      §џ              RESETMASK_STANDARD          §џ              RESETMASK_ALTERNATIVE          §џ              REGISTERACCESSMASK          §џ           2011-09-12 KSt    state            §џ              TriggerExecute                 R_TRIG    §џ              R32            §џ              R33            §џ              R34            §џ               CheckOK             §џ!              RegisterList   	  #                   ComRegisterData_t            §џ"              WriteRegisterList                KL6WriteRegisters    §џ#              Timeout                    TON    §џ$              pCTRL                  §џ%              pSTATUS                  §џ&           	   ResetMask            §џ'                 Execute            §џ              Mode               ComSerialLineMode_t   §џ              Baudrate           §џ       ?   	115200, 57600, 38400, 19200, 9600, 4800, 2400, 1200, 600, 300 
   NoDatabits           §џ          	7 or 8    Parity               ComParity_t   §џ       ,   	PARITY_NONE=0, PARITY_EVEN=1, PARITY_ODD=2    Stopbits           §џ          	1 or 2 	   Handshake               ComHandshake_t   §џ	       ;   	HANDSHAKE_NONE=0, HANDSHAKE_RTSCTS=1, HANDSHAKE_XONXOFF=2    ContinousMode            §џ
       ;    don't start transmission before transmit buffer is filled    pComIn    	  A                            §џ       &    for universal register communication    pComOut    	  A                            §џ       &    for universal register communication 	   SizeComIn           §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorId            
   ComError_t   §џ                       фS      џџџџ           KL6READREGISTERS           TIME_OUT_VALUE    d      §џ              REGISTERNUMBERMASK    ?      §џ               REGISTERREADMASK          §џ!              state            §џ$              TriggerExecute                 R_TRIG    §џ%              NumRegisters            §џ&              n            §џ'              Register            §џ(              Value            §џ)              Timeout                    TON    §џ*              pCTRL                  §џ+              pSTATUS                  §џ,          	NumRegistersInList: INT;   i            §џ.              SaveCTRL            §џ/           	      Execute            §џ              FirstRegister           §џ              RegisterCount           §џ              Mode               ComSerialLineMode_t   §џ              pComIn    	  A                            §џ       &    for universal register communication    pComOut    	  A                            §џ       &    for universal register communication 	   SizeComIn           §џ              pRegisterList    	  ?                    ComRegisterData_t                §џ              SizeRegisterList           §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorId            
   ComError_t   §џ                       фS      џџџџ           KL6WRITEREGISTERS           TIME_OUT_VALUE    d      §џ              REGISTERNUMBERMASK    ?      §џ              REGISTERWRITEMASK    Р      §џ              state            §џ"              TriggerExecute                 R_TRIG    §џ#              NumRegisters            §џ$              n            §џ%              Register            §џ&              Value            §џ'              Timeout                    TON    §џ(              pCTRL                  §џ)              pSTATUS                  §џ*              SaveCTRL            §џ+                 Execute            §џ              Mode               ComSerialLineMode_t   §џ              pComIn    	  A                            §џ       &    for universal register communication    pComOut    	  A                            §џ       &    for universal register communication 	   SizeComIn           §џ              pRegisterList    	  ?                    ComRegisterData_t                §џ              SizeRegisterList           §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorId            
   ComError_t   §џ                       фS      џџџџ           RECEIVEBYTE                   ByteReceived            §џ              ReceivedByte           §џ              Error            
   ComError_t   §џ                 RxBuffer                   	   COMbuffer  §џ                   фS      џџџџ           RECEIVEDATA           state            §џ              c            §џ              l            §џ              iTimeout            §џ              Receive                  ReceiveByte    §џ              TimeoutTimer                    TOF    §џ           	   ptrPrefix                  §џ              pData                  §џ              p1                  §џ              p2                  §џ               isEqual             §џ!              i            §џ"              pw            §џ#                 pPrefix                 §џ           	   LenPrefix           §џ              pSuffix                 §џ           	   LenSuffix           §џ              pReceiveData                 §џ              SizeReceiveData           §џ              Timeout           §џ	              Reset            §џ
                 DataReceived            §џ              busy            §џ              Error            
   ComError_t   §џ           	   RxTimeout            §џ              LenReceiveData           §џ                 RXbuffer                   	   COMbuffer  §џ                   фS      џџџџ           RECEIVESTRING           ReceiveStringStandard                                     _ReceiveString    §џ              ErrorCountPrefix            §џ       +    invalid characters received before prefix    ReceivedPrefix    Q       Q     §џ       .    received prefix including invalid characters       Prefix    Q       Q    §џ              Suffix    Q       Q    §џ              Timeout           §џ              Reset            §џ                 StringReceived            §џ	              Busy            §џ
              Error            
   ComError_t   §џ           	   RxTimeout            §џ                 ReceivedString     Q       Q   §џ              RXbuffer                   	   COMbuffer  §џ                   фS      џџџџ           RECEIVESTRING255           ReceiveStringStandard                                     _ReceiveString    §џ              ErrorCountPrefix            §џ       +    invalid characters received before prefix    ReceivedPrefix    Q       Q     §џ       .    received prefix including invalid characters       Prefix    Q       Q    §џ              Suffix    Q       Q    §џ              Timeout           §џ              Reset            §џ                 StringReceived            §џ	              Busy            §џ
              Error            
   ComError_t   §џ           	   RxTimeout            §џ                 ReceivedString               §џ              RXbuffer                   	   COMbuffer  §џ                   фS      џџџџ           SENDBYTE               SendByte           §џ                 Busy            §џ              Error            
   ComError_t   §џ                 TxBuffer                   	   COMbuffer  §џ                   фS      џџџџ           SENDDATA           pos            §џ              Send                  SendByte    §џ              c            §џ              dp                  §џ              dpw            §џ              	   pSendData                 §џ              Length           §џ                 Busy            §џ              Error            
   ComError_t   §џ                 TXbuffer                   	   COMbuffer  §џ                   фS      џџџџ        
   SENDSTRING           SendStringStandard                      _SendString    §џ              
   SendString    Q       Q    §џ                 Busy            §џ              Error            
   ComError_t   §џ                 TXbuffer                   	   COMbuffer  §џ
                   фS      џџџџ           SENDSTRING255           SendStringStandard                      _SendString    §џ              
   SendString               §џ                 Busy            §џ              Error            
   ComError_t   §џ                 TXbuffer                   	   COMbuffer  §џ
                   фS      џџџџ           SERIALLINECONTROL           ComPortDebugBuffer                 ComDebugBuffer    §џ              InvalidDataExchangeMode            §џ               RegisterMode            §џ!              pCTRL                  §џ"              pSTATUS                  §џ#              RxCount            §џ$              TxCount            §џ%           	   DataIndex            §џ&              DataCountMask            §џ'              DataCountShift            §џ(              ReceiveHandshakeBit            §џ)              TransmitHandshakeBit            §џ*              TransmitBufferSentBit            §џ+              ContinousModeStartBit            §џ,              ReceiveBufferFullBit            §џ-              ResetBit            §џ.              RR            §џ/              RA            §џ0              TR            §џ1              TA            §џ2              IA            §џ3              BUF_F            §џ4              noTAcounter            §џ5              initialized             §џ6              TransmitDataSent             §џ7              i            §џ8                 Mode               ComSerialLineMode_t   §џ              pComIn    	  A                            §џ       A    must meet the maximum size of a hardware related data structure    pComOut    	  A                            §џ       A    must meet the maximum size of a hardware related data structure 	   SizeComIn           §џ                 Error            §џ              ErrorID            
   ComError_t   §џ                 TxBuffer                   	   COMbuffer  §џ              RxBuffer                   	   COMbuffer  §џ                   фS      џџџџ    t   C:\TwinCAT\PLC\LIB\TcUtilities.lib @                                                                                         ARG_TO_CSVFIELD           pSrc               ` §џ           Pointer to the source buffer    pDest               ` §џ       #    Pointer to the destination buffer    cbMax         ` §џ           Max. number of input bytes    cbScan         ` §џ           Input stream data byte number    cbReturn         ` §џ           Number of result data bytes       in                 T_Arg   §џ       T    Input data in PLC format (any data type, string, integer, floating point value...)    bQM            §џ	       h    TRUE => Enclose result data in quotation marks, FALSE => Don't enclose result data in quotation marks.    pOutput           §џ
       /    Address of output buffer (destination buffer)    cbOutput           §џ       !    Max. byte size of output buffer       ARG_TO_CSVFIELD                                     КбБV      џџџџ        
   BCD_TO_DEC        
   RisingEdge                 R_TRIG ` §џ                 START            §џ              BIN           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ	              DOUT           §џ
       П   
	Error codes:
		0x00		: No Errors
		0x0F	: Parameter value NOT correct. Wrong BCD input value in Low Nibble.
		0xF0	: Parameter value NOT correct. Wrong BCD input value in High Nibble.
            КбБV      џџџџ           BE128_TO_HOST               in                T_UHUGE_INTEGER   §џ                 BE128_TO_HOST                T_UHUGE_INTEGER                             КбБV      џџџџ           BE16_TO_HOST               in           §џ                 BE16_TO_HOST                                     КбБV      џџџџ           BE32_TO_HOST           parr    	                            ` §џ                 in           §џ                 BE32_TO_HOST                                     КбБV      џџџџ           BE64_TO_HOST               in                T_ULARGE_INTEGER   §џ                 BE64_TO_HOST                T_ULARGE_INTEGER                             КбБV      џџџџ           BYTE_TO_BINSTR           bits   	                          §џ       6    Array of ASCII characters (inclusive null delimiter)    iSig            §џ           Number of significant bits    iPad            §џ           Number of padding zeros    i            §џ           	   Index7001                            in           §џ           BYTE input value 
   iPrecision           §џ       ,    Precision. Number of digits to be printed.       BYTE_TO_BINSTR               T_MaxString                             КбБV      џџџџ           BYTE_TO_DECSTR           dec   	                          §џ       6    Array of ASCII characters (inclusive null delimiter)    iSig            §џ           Number of significant decades    iPad            §џ           Number of padding zeros    i            §џ              digit            §џ           	   Index7001                            in           §џ           BYTE input value 
   iPrecision           §џ       ,    Precision. Number of digits to be printed.       BYTE_TO_DECSTR               T_MaxString                             КбБV      џџџџ           BYTE_TO_HEXSTR           hex   	                          §џ       6    array of ASCII characters (inclusive null delimiter)    iSig            §џ           number of significant nibbles    iPad            §џ           number of padding zeros    i            §џ           	   Index7001                            in           §џ           BYTE input value 
   iPrecision           §џ       ,    Precision. Number of digits to be printed.    bLoCase            §џ	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       BYTE_TO_HEXSTR               T_MaxString                             КбБV      џџџџ           BYTE_TO_LREALEX               in           §џ                 BYTE_TO_LREALEX                                                  КбБV      џџџџ           BYTE_TO_OCTSTR           oct   	                          §џ       6    Array of ASCII characters (inclusive null delimiter)    iSig            §џ           Number of significant nibbles    iPad            §џ           Number of padding zeros    i            §џ           	   Index7001                            in           §џ           BYTE input value 
   iPrecision           §џ       ,    Precision. Number of digits to be printed.       BYTE_TO_OCTSTR               T_MaxString                             КбБV      џџџџ           BYTEARR_TO_MAXSTRING               in   	  џ                       §џ                 BYTEARR_TO_MAXSTRING               T_MaxString                             КбБV     џџџџ           CSVFIELD_TO_ARG           pSrc               ` §џ           Pointer to the source buffer    pDest               ` §џ       $     Pointer to the destination buffer    cbMax         ` §џ           Max. number of output bytes    cbScan         ` §џ           Input stream data byte number    cbReturn         ` §џ           Number of result data bytes    bQMPrior          ` §џ       c    TRUE => Previous character was quotation mark. FALSE => Previous character was not quotation mark       pInput           §џ       G    Address of input buffer with data in CSV field format (source buffer )   cbInput           §џ	           Byte size of input data    bQM            §џ
       \    TRUE => Remove enclosing quotation marks. FALSE => Don't remove enclosing quotation marks.    out                 T_Arg   §џ       U    Output data in PLC format (any data type, string, integer, floating point value...)       CSVFIELD_TO_ARG                                     КбБV      џџџџ           CSVFIELD_TO_STRING           cbField         ` §џ                 in               T_MaxString   §џ       "    Input string in CSV field format    bQM            §џ	       \    TRUE => Remove enclosing quotation marks. FALSE => Don't remove enclosing quotation marks.       CSVFIELD_TO_STRING               T_MaxString                             КбБV      џџџџ           DATA_TO_HEXSTR           iCase         ` §џ              pCells    	  џ                          ` §џ              idx         ` §џ                 pData           §џ           Pointer to data buffer    cbData             U              §џ           Byte size of data buffer    bLoCase            §џ       9    Default: use "ABCDEF", if TRUE use "abcdef" characters.       DATA_TO_HEXSTR               T_MaxString                             КбБV     џџџџ        
   DCF77_TIME     "      DataBits   	  <                         §џ              BitNo            §џ              dtCurr            §џ              dtNext            §џ              tziCurr               E_TimeZoneID    §џ       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID    §џ       8    Time zone information extracted from previous telegram    tDiff            §џ           Two telegram time difference    bCheck             §џ              Step         ` §џ!           	   StartEdge                 R_TRIG ` §џ"              RisingPulse                 R_TRIG ` §џ$              FallingPulse                 F_TRIG ` §џ%           	   LongPulse                    TON ` §џ&           
   ShortPulse                    TON ` §џ'           
   DetectSync                    TOF ` §џ(              NoDCFSignal                    TON ` §џ)              DCFCycleLen                    TON ` §џ*           	   bIsRising          ` §џ,           
   bIsFalling          ` §џ-              bIsLong          ` §џ.              bIsShort          ` §џ/              Working          ` §џ0           	   DataValid          ` §џ2           
   ParitySum1         ` §џ3           
   ParitySum2         ` §џ4           
   ParitySum3         ` §џ5              i         ` §џ7           	   DummyByte         ` §џ8              DummyString    Q       Q  ` §џ9              Hour         ` §џ;              Minute         ` §џ<              Year         ` §џ=              Month         ` §џ>              Day         ` §џ?              	   DCF_PULSE            §џ           DCF77 pulse: 101010101...    RUN            §џ       *    Enable/disable function block execution.       BUSY            §џ           TRUE = Decoding in progress    ERR            §џ	       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           §џ
           Error code    ERRCNT           §џ           Error counter    READY            §џ       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           §џ           date and time information             КбБV      џџџџ           DCF77_TIME_EX     #      DataBits   	  <                         §џ           Decoded data bits    BitNo            §џ           Decoded bit number    dtCurr            §џ       %    Time extracted from latest telegram    dtNext            §џ            Supposed next time    tziCurr               E_TimeZoneID    §џ!       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID    §џ"       8    Time zone information extracted from previous telegram    tDiff            §џ#       )    Time difference of two latest telegrams    bCheck             §џ$       H    TRUE = Plausibility check over two telegrams enabled, FALSE = disabled    Step         ` §џ&           	   StartEdge                 R_TRIG ` §џ'              RisingPulse                 R_TRIG ` §џ)              FallingPulse                 F_TRIG ` §џ*           	   LongPulse                    TON ` §џ+           
   ShortPulse                    TON ` §џ,           
   DetectSync                    TOF ` §џ-              NoDCFSignal                    TON ` §џ.              DCFCycleLen                    TON ` §џ/           	   bIsRising          ` §џ1           
   bIsFalling          ` §џ2              bIsLong          ` §џ3              bIsShort          ` §џ4              Working          ` §џ5           	   DataValid          ` §џ7           
   ParitySum1         ` §џ8           
   ParitySum2         ` §џ9           
   ParitySum3         ` §џ:              i         ` §џ<           	   DummyByte         ` §џ=              DummyString    Q       Q  ` §џ>              Hour         ` §џ@              Minute         ` §џA              Year         ` §џB              Month         ` §џC              Day         ` §џD           	   DayOfWeek         ` §џE              	   DCF_PULSE            §џ           DCF77 pulse: 101010101...    RUN            §џ       *    Enable/disable function block execution.    TLP          §џ           Short/long pulse split point       BUSY            §џ	           TRUE = Decoding in progress    ERR            §џ
       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           §џ           Error code    ERRCNT           §џ           Error counter    READY            §џ       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           §џ           date and time information    DOW                         §џ       0     ISO 8601 day of week: 1 = Monday.. 7 = Sunday    TZI               E_TimeZoneID   §џ           time zone information    ADVTZI            §џ       1    MEZ->MESZ or MESZ->MEZ time change notification    LEAPSEC            §џ           TRUE = Leap second    RAWDT   	  <                        §џ           Raw decoded data bits             КбБV      џџџџ        
   DEC_TO_BCD        
   RisingEdge                 R_TRIG ` §џ                 START            §џ              DIN           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ	              BOUT           §џ
       h   
	Error codes:
		0x00		: No errors
		0xFF	: Parameter value NOT correct. Wrong DECIMAL input value.
            КбБV      џџџџ        
   DEG_TO_RAD               ANGLE                        §џ              
   DEG_TO_RAD                                                  КбБV      џџџџ           DINT_TO_DECSTR               in           §џ           
   iPrecision           §џ	                 DINT_TO_DECSTR               T_MaxString                             КбБV      џџџџ           DT_TO_FILETIME           ui64                T_ULARGE_INTEGER ` §џ                 DTIN           §џ                 DT_TO_FILETIME             
   T_FILETIME                             КбБV      џџџџ           DT_TO_SYSTEMTIME           sDT             ` §џ              nDay         ` §џ              b   	                 
    24(16#30)      0    ` §џ              TS                   
   TIMESTRUCT ` §џ           	   Index7001                            DTIN           §џ                 DT_TO_SYSTEMTIME                   
   TIMESTRUCT                             КбБV      џџџџ           DWORD_TO_BINSTR           bits   	                        ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant bits    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_BINSTR               T_MaxString                             КбБV      џџџџ           DWORD_TO_DECSTR           dec   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ              divider     Ъ; ` §џ              number         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_DECSTR               T_MaxString                             КбБV      џџџџ           DWORD_TO_HEXSTR           hex   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ              bLoCase            §џ	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       DWORD_TO_HEXSTR               T_MaxString                             КбБV      џџџџ           DWORD_TO_LREALEX               in           §џ                 DWORD_TO_LREALEX                                                  КбБV      џџџџ           DWORD_TO_OCTSTR           oct   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_OCTSTR               T_MaxString                             КбБV      џџџџ           F_ARGCMP               typeSafe            §џ              arg1                 T_Arg   §џ              arg2                 T_Arg   §џ                 F_ARGCMP                                     КбБV      џџџџ           F_ARGCPY               typeSafe            §џ                 F_ARGCPY                               dest                  T_Arg  §џ
              src                  T_Arg  §џ                   КбБV      џџџџ           F_ARGISZERO               arg                 T_Arg   §џ                 F_ARGIsZero                                      КбБV      џџџџ        	   F_BIGTYPE               pData           §џ            Address pointer of data buffer    cbLen           §џ           Byte length of data buffer    	   F_BIGTYPE                 T_Arg                             КбБV      џџџџ           F_BOOL                   F_BOOL                 T_Arg                       in            §џ                   КбБV      џџџџ           F_BYTE                   F_BYTE                 T_Arg                       in           §џ                   КбБV      џџџџ           F_BYTE_TO_CRC16_CCITT               value           §џ           Data value    crc           §џ       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_BYTE_TO_CRC16_CCITT                                     КбБV      џџџџ           F_CHECKSUM16        	   wChkSum_I         ` §џ	       %    internal ChkSum                        dataWord         ` §џ
       %    current data byte                      iIdx         ` §џ       %    current data buffer index              ptrData               ` §џ       %    pointer to current data byte           	   dwSrcAddr           §џ       %    address of data buffer                 cbLen           §џ       %    length of data buffer                  wChkSum           §џ       %    init value (16#0000) or last ChkSum       F_CheckSum16                                     КбБV      џџџџ           F_CRC16_CCITT           wCRC_I         ` §џ
       $    internal CRC                          dataWord         ` §џ       $    current data byte                     iIdx         ` §џ       $    current data buffer index             ptrData               ` §џ       $    pointer to current data byte          	   dwSrcAddr           §џ       $    address of data buffer                cbLen           §џ       $    length of data buffer                 wLastCRC           §џ       $    init value (16#FFFF) or last CRC16       F_CRC16_CCITT                                     КбБV      џџџџ           F_CREATEHASHTABLEHND           p                     T_HashTableEntry      ` §џ              i         ` §џ                 pEntries                     T_HashTableEntry        §џ       C    Pointer to the first entry of hash table database (element array) 	   cbEntries           §џ       ;    Byte size (length) of hash table database (element array)       F_CreateHashTableHnd                                hTable         	               T_HHASHTABLE  §џ           Hash table handle         КбБV      џџџџ           F_CREATELINKEDLISTHND           p                   T_LinkedListEntry      ` §џ           Temp. previous node    n                   T_LinkedListEntry      ` §џ           Temp. next node    i         ` §џ           loop iterator       pEntries                   T_LinkedListEntry        §џ       @    Pointer to the first linked list node database (element array) 	   cbEntries           §џ       <    Byte size (length) of linked list database (element array)       F_CreateLinkedListHnd                                hList         	               T_HLINKEDLIST  §џ           Linked list handle         КбБV      џџџџ           F_DATA_TO_CRC16_CCITT           i         ` §џ                 pData           §џ           Pointer to data    cbData           §џ           Length of data    crc           §џ       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_DATA_TO_CRC16_CCITT                                     КбБV      џџџџ           F_DINT                   F_DINT                 T_Arg                       in           §џ                   КбБV      џџџџ           F_DWORD                   F_DWORD                 T_Arg                       in           §џ                   КбБV      џџџџ           F_FORMATARGTOSTR     	      pOut               ` §џ              longword         ` §џ              double                      ` §џ              single          ` §џ              short         ` §џ              small         ` §џ              longint         ` §џ              iPaddingLen         ` §џ              iCurrLen         ` §џ           
      bSign            §џ           Sign prefix flag    bBlank            §џ           Blank prefix flag    bNull            §џ           Null prefix flag    bHash            §џ           Hash prefix flag    bLAlign            §џ       4    FALSE => Right align (default), TRUE => Left align    bWidth            §џ       C    FALSE => no width padding, TRUE => blank or zeros padding enabled    iWidth           §џ	           Width length parameter 
   iPrecision           §џ
           Precision length parameter    eFmtType               E_TypeFieldParam   §џ           Format type field parameter    arg                 T_Arg   §џ           Format argument       F_FormatArgToStr                               sOut                T_MaxString  §џ                   КбБV      џџџџ           F_GETDAYOFMONTHEX           dom         ` §џ           Day of month    dow         ` §џ           Day of week    n         ` §џ              dwYears         ` §џ              dwDays         ` §џ                 wYear     A  A  kx             §џ           Year: 1601..30827    wMonth                         §џ           Month: 1..12    wWOM                         §џ       Г     Week of month. Occurrence of the day of the week within the month (1..5, where 5 indicates the final occurrence during the month if that day of the week does not occur 5 times).   wDOW                           §џ       4    Day of week (0 = Sunday, 1 = Monday.. 6 = Saturday       F_GetDayOfMonthEx                                     КбБV      џџџџ           F_GETDAYOFWEEK           sysTime                   
   TIMESTRUCT ` §џ	                 in           §џ                 F_GetDayOfWeek                                     КбБV      џџџџ           F_GETDOYOFYEARMONTHDAY           bLY          ` §џ
                 wYear           §џ           Year: 0..2xxx    wMonth           §џ           Month 1..12    wDay           §џ           Day: 1..31       F_GetDOYOfYearMonthDay                                     КбБV      џџџџ           F_GETFLOATREC     
   	   ptrDouble    	                               §џ              fValue                         §џ
              fBegin                         §џ              nBegin            §џ              fDiv                         §џ              nDig            §џ              nDigit            §џ              fMaxPrecision                         §џ              i            §џ              nLastDecDigit            §џ                 fVal                        §џ           
   iPrecision           §џ              bRound            §џ                 F_GetFloatRec              
   T_FloatRec                             КбБV      џџџџ           F_GETMAXMONTHDAYS               wYear           §џ	              wMonth           §џ
                 F_GetMaxMonthDays                                     КбБV      џџџџ           F_GETMONTHOFDOY           bLY          ` §џ	              wMonth         ` §џ
                 wYear           §џ           Year: 0..2xxx    wDOY           §џ           Year's day number: 1..366       F_GetMonthOfDOY                                     КбБV      џџџџ           F_GETVERSIONTCUTILITIES               nVersionElement           §џ       d   
	Possible nVersionElement parameter:
	1	:	major number
	2	:	minor number
	3	:	revision number
      F_GetVersionTcUtilities                                     КбБV      џџџџ           F_GETWEEKOFTHEYEAR           date_sec         ` §џ           date seconds    dow         ` §џ	           day of week    year         ` §џ
              KWStart         ` §џ              first    yG ` §џ              ff                      ` §џ                 in           §џ                 F_GetWeekOfTheYear                                     КбБV      џџџџ           F_HUGE                   F_HUGE                 T_Arg                       in                 T_HUGE_INTEGER  §џ                   КбБV      џџџџ           F_INT                   F_INT                 T_Arg                       in           §џ                   КбБV      џџџџ           F_LARGE                   F_LARGE                 T_Arg                       in                 T_LARGE_INTEGER  §џ                   КбБV      џџџџ           F_LREAL                   F_LREAL                 T_Arg                       in                        §џ                   КбБV      џџџџ           F_LTRIM           pChar               ` §џ              pStr                T_MaxString      ` §џ	                 in               T_MaxString   §џ                 F_LTrim               T_MaxString                             КбБV      џџџџ           F_PVOID                   F_PVOID                 T_Arg                       in                PVOID  §џ                   КбБV      џџџџ           F_REAL                   F_REAL                 T_Arg                       in            §џ                   КбБV      џџџџ           F_RTRIM           n         ` §џ              pChar               ` §џ	                 in               T_MaxString   §џ                 F_RTrim               T_MaxString                             КбБV      џџџџ           F_SINT                   F_SINT                 T_Arg                       in           §џ                   КбБV      џџџџ           F_STRING                   F_STRING                 T_Arg                       in                T_MaxString  §џ                   КбБV      џџџџ        
   F_SWAPREAL           pReal    	                               §џ              pResult    	                               §џ                 fVal            §џ              
   F_SwapReal                                      КбБV      џџџџ           F_SWAPREALEX           pIN    	                            ` §џ              wSave         ` §џ	                     F_SwapRealEx                                fVal            §џ                   КбБV      џџџџ        	   F_TOLCASE           pDest               ` §џ              idx                   MIN_SBCS_TABLE   MAX_SBCS_TABLE ` §џ	                 in               T_MaxString   §џ              	   F_ToLCase               T_MaxString                             КбБV     џџџџ        	   F_TOUCASE           pDest               ` §џ              idx                   MIN_SBCS_TABLE   MAX_SBCS_TABLE ` §џ	                 in               T_MaxString   §џ              	   F_ToUCase               T_MaxString                             КбБV     џџџџ           F_TRANSLATEFILETIMEBIAS           ui64In                T_ULARGE_INTEGER ` §џ       E    Input file time as 64 bit unsigned integer (number of 100ns ticks)     ui64Bias                T_ULARGE_INTEGER ` §џ       ?    Bias value as 64 bit unsigned integer (number of 100ns ticks)    ui64Out                T_ULARGE_INTEGER ` §џ       @    Local time as 64 bit unsigned integer (number of 100ns ticks)        in             
   T_FILETIME   §џ       1    Input time in file time format to be translated    bias           §џ       y    Bias value in minutes. The bias is the difference, in minutes, between Coordinated Universal Time (UTC) and local time.    toUTC            §џ       U    TRUE => Translate from local time to UTC, FALSE => Translate from UTC to local Time       F_TranslateFileTimeBias             
   T_FILETIME                             КбБV      џџџџ           F_UDINT                   F_UDINT                 T_Arg                       in           §џ                   КбБV      џџџџ           F_UHUGE                   F_UHUGE                 T_Arg                       in                 T_UHUGE_INTEGER  §џ                   КбБV      џџџџ           F_UINT                   F_UINT                 T_Arg                       in           §џ                   КбБV      џџџџ           F_ULARGE                   F_ULARGE                 T_Arg                       in                 T_ULARGE_INTEGER  §џ                   КбБV      џџџџ           F_USINT                   F_USINT                 T_Arg                       in           §џ                   КбБV      џџџџ           F_WORD                   F_WORD                 T_Arg                       in           §џ                   КбБV      џџџџ           F_YEARISLEAPYEAR               wYear           §џ                 F_YearIsLeapYear                                      КбБV      џџџџ           FB_ADDROUTEENTRY        
   fbAdsWrite       P    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_ADDREMOTE, IDXOFFS := 0 )              	   T_AmsPort         !                 ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ           	   dataEntry                ST_AmsRouteSystemEntry ` §џ                 sNetID            
   T_AmsNetID   §џ       &    TwinCAT network address (ams net id)    stRoute                    ST_AmsRouteEntry   §џ       !    Structure with route parameters    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ                       КбБV     џџџџ           FB_AMSLOGGER        
   fbAdsWrite       [    ( PORT:= AMSPORT_AMSLOGGER, IDXGRP:= AMSLOGGER_IGR_GENERAL, IDXOFFS:= AMSLOGGER_IOF_MODE )              	   T_AmsPort                          ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              stReq                ST_AmsLoggerReq ` §џ                 sNetId           ''    
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    eMode           AMSLOGGER_RUN       E_AmsLoggerMode   §џ              sCfgFilePath           ''       T_MaxString   §џ              bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrId           §џ                       КбБV     џџџџ           FB_BASICPID           nERR_NOERROR           §џ           no error						   nERR_INVALIDPARAM          §џ           invalid parameter				   nERR_INVALIDCYCLETIME          §џ           invalid cycle time				   fE               0.0            §џ            error input					   fE_1               0.0            §џ!           error input z^(-1)				   fY               0.0            §џ"           control output				   fY_1               0.0            §џ#           control output  z^(-1)			   fYP               0.0            §џ$           P-part						   fYI               0.0            §џ%           I-part						   fYI_1               0.0            §џ&           I-part  z^(-1)					   fYD               0.0            §џ'           D-T1-part					   fYD_1               0.0            §џ(           D-T1-part  z^(-1)				   bInit            §џ*       %    initialization flag for first cycle	   bIsIPart             §џ+           I-part active ?				   bIsDPart             §џ,           D-part active ?				   fDi               0.0            §џ.           internal I param				   fDd               0.0            §џ/           internal D param				   fCd               0.0            §џ0           internal D param				   fCtrlCycleTimeOld               0.0            §џ2              fKpOld               0.0            §џ3              fTnOld               0.0            §џ4              fTvOld               0.0            §џ5              fTdOld               0.0            §џ6                 fSetpointValue                        §џ           setpoint value							   fActualValue                        §џ           actual value							   bReset            §џ           controller values    fCtrlCycleTime                        §џ	       (    controller cycle time in seconds [s]			   fKp                        §џ           proportional gain Kp	(P)					   fTn                        §џ           integral gain Tn (I) [s]						   fTv                        §џ       "    derivative gain Tv (D-T1) [s]				   fTd                        §џ       (    derivative damping time Td (D-T1) [s]		      fCtrlOutput                        §џ           controller output command				   nErrorStatus           §џ       1    controller error output (0: no error; >0:error)	            КбБV      џџџџ           FB_BUFFEREDTEXTFILEWRITER           fbFile                FB_TextFileRingBuffer ` §џ           
   closeTimer                    TON ` §џ           auto close timer    bRemove          ` §џ              nStep         ` §џ                 sNetId           ''    
   T_AmsNetId ` §џ           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString ` §џ	       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath ` §џ
           default: Open generic file    bAppend         ` §џ       )    TRUE = append lines, FALSE = not append 
   tAutoClose       ` §џ              tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ                 fbBuffer                 FB_StringRingBuffer` §џ           string ring buffer         КбБV     џџџџ           FB_CONNECTSCOPESERVER           stRecordDesc       d    (nRunMode:=0, nSopMode:=0, bStoreOnDisk:=FALSE, bUseLocalServer:=FALSE, bStartServerFromFile:=TRUE)                                #   ST_ScopeServerRecordModeDescription    §џ              nState            §џ              nErrorState            §џ           
   fbAdsWrite                          ADSWRITE    §џ              fbQueryRegistry                FB_RegQueryValue    §џ              sScopeServerDir                §џ              sScopeServerPath                §џ              fbStartServer                NT_StartProcess    §џ              fbWait                    TON    §џ               bTriggerServerStart            §џ!              nDwellTimeCounter            §џ"              nPort           27110    	   T_AmsPort   §џ%              Connect_IdxGrp     u     §џ&          0x7500      sNetId           ''    
   T_AmsNetId   §џ              bExecute            §џ              sConfigFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ              bError            §џ              nErrorId           §џ                       КбБV     џџџџ           FB_CSVMEMBUFFERREADER           state         ` §џ              getBufferIndex         ` §џ              scanPtr               ` §џ              scanSize         ` §џ              bField          ` §џ              cbCopied         ` §џ           
   bFirstChar          ` §џ              bDQField          ` §џ           	   bDQBefore          ` §џ              pField         ` §џ       U    If successfull then this variable returns the address of the first/next field value    cbField         ` §џ       W    If successfull then this variable returns the byte size of the first/next field value    bEOF          ` §џ           TRUE => End of field found    bBreak          ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType   §џ       )    Command type: read first or next field ?   pBuffer           §џ       #    Address ( pointer) of data buffer    cbBuffer           §џ           Max. byte size of data buffer       bOk            §џ	       &    TRUE => Successfull, FALSE => Failed    getValue           ''       T_MaxString   §џ
       N    If successfull then this output returns the first/next field value as string    pValue           §џ       s    Pointer to the first value byte (HINT: String values are not null terminated. Empty string returns Null pointer )    cbValue           §џ           Field value byte size    bCRLF            §џ       .    TRUE => End of record separator found (CRLF)    cbRead           §џ       )    Number of successfully parse data bytes             КбБV      џџџџ           FB_CSVMEMBUFFERWRITER           fbReader                                    FB_CSVMemBufferReader ` §џ              temp   	  ,                    ` §џ           Temp buffer    cbTemp         ` §џ       %    Number of data bytes in temp buffer    cbCopied         ` §џ       9    Number of data bytes copied to the external data buffer    bNewLine         ` §џ           TRUE => start with new line       eCmd           eEnumCmd_First       E_EnumCmdType   §џ       *    Command type: write first or next field ?   putValue           ''       T_MaxString   §џ       &    New first/next field value as string    pValue           §џ       C    OPTIONAL: Pointer to external buffer containing field value data.    cbValue           §џ       F    OPTIONAL: Byte size of external buffer containing field value data.     bCRLF            §џ       0    TRUE = > Append end of record separator (CRLF)    pBuffer           §џ	       #    Address ( pointer) of data buffer    cbBuffer           §џ
           Max. byte size of data buffer       bOk            §џ       &    TRUE => Successfull, FALSE => Failed    cbSize           §џ           Number fo used data bytes    cbFree           §џ           Number of free data bytes    nFields           §џ           Number of fields    nRecords           §џ           Number of records    cbWrite           §џ       +    Number of successfully written data bytes             КбБV      џџџџ           FB_DBGOUTPUTCTRL           fbFormat                FB_FormatString ` §џ              fbBuffer                FB_StringRingBuffer ` §џ              fbFile       +    (ePath := PATH_BOOTPATH, bAppend := TRUE )                 PATH_GENERIC    
   E_OpenPath                      FB_BufferedTextFileWriter ` §џ              buffer   	  '                   ` §џ              state         ` §џ              nItems         ` §џ              k         ` §џ               bInit         ` §џ!           Hex logging    i         ` §џ$              cells   	                               ` §џ%              pCells                T_MaxString      ` §џ&              cbL1         ` §џ'              cbL2         ` §џ'              idx         ` §џ'              pSrc1               ` §џ(              pSrc2               ` §џ(                 dwCtrl         ` §џ       &    Debug message target: DBG_OUTPUT_LOG    sFormat           ''       T_MaxString ` §џ           Debug message format string    arg1                 T_Arg ` §џ           Format string argument    arg2                 T_Arg ` §џ              arg3                 T_Arg ` §џ	              arg4                 T_Arg ` §џ
              arg5                 T_Arg ` §џ              arg6                 T_Arg ` §џ              arg7                 T_Arg ` §џ              arg8                 T_Arg ` §џ              arg9                 T_Arg ` §џ              arg10                 T_Arg ` §џ              sFilter           ''       T_MaxString ` §џ                 bError          ` §џ              nError         ` §џ           	   nOverflow         ` §џ                       КбБV     џџџџ           FB_DISCONNECTSCOPESERVER        
   fbAdsWrite                          ADSWRITE    §џ              nState            §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       КбБV     џџџџ           FB_ENUMFINDFILEENTRY        
   fbAdsRdWrt       B    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_FFILEFIND )              	   T_AmsPort                         ADSRDWRT ` §џ           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_CLOSEHANDLE )              	   T_AmsPort         o              ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ           	   dataEntry                            ST_AmsFindFileSystemEntry ` §џ              eFindCmd               E_EnumCmdType ` §џ                 sNetId            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id) 	   sPathName               T_MaxString   §џ       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ              bError            §џ              nErrID           §џ              bEOE            §џ           End of enumeration 
   stFindFile                     ST_FindFileEntry   §џ           Find file entry             КбБV     џџџџ           FB_ENUMFINDFILELIST           fbEnum                              FB_EnumFindFileEntry ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              cbEntry         ` §џ              nEntries         ` §џ              pEntry                      ST_FindFileEntry      ` §џ                 sNetId            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id) 	   sPathName               T_MaxString   §џ       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command 	   pFindList           §џ       &    POINTER TO ARRAY OF ST_FindFileEntry 
   cbFindList           §џ       (    Byte size of ARRAY OF ST_FindFileEntry    bExecute            §џ	       6    Rising edge on this input activates the fb execution    tTimeout         §џ
           Max fb execution time       bBusy            §џ              bError            §џ              nErrID           §џ              bEOE            §џ           End of enumeration 
   nFindFiles           §џ           Number of find files             КбБV     џџџџ           FB_ENUMROUTEENTRY        	   fbAdsRead       Z    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_ENUMREMOTE (*, IDXGRP := index *) )              	   T_AmsPort         #             ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              index    џџџџ ` §џ           	   dataEntry                ST_AmsRouteSystemEntry ` §џ                 sNetID            
   T_AmsNetID   §џ       '    TwinCAT network address (ams net id )    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ              bEOE            §џ       l    End of enumeration. This value is TRUE after the first read that attempts to read next non existing entry.    stRoute                    ST_AmsRouteEntry   §џ       !    Structure with route parameters             КбБV     џџџџ           FB_ENUMSTRINGNUMBERS           pSrc               ` §џ              pDest               ` §џ              pNext               ` §џ              char         ` §џ              state         ` §џ              bEat          ` §џ                 sSearch               T_MaxString   §џ           Source string    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command    eType           eNumGroup_Float       E_NumGroupTypes   §џ           String number format type       sNumber               T_MaxString   §џ           Found string number    nPos           §џ	       )    <> 0 => Next scan/search start position    bEOS            §џ
           TRUE = End of string             КбБV      џџџџ           FB_FILERINGBUFFER           fbOpen                             FB_FileOpen ` §џ              fbClose                      FB_FileClose ` §џ              fbWrite                           FB_FileWrite ` §џ              fbRead                            FB_FileRead ` §џ               fbSeek                         FB_FileSeek ` §џ!              nStep         ` §џ"       X    0=idle, 1=init, 10,11=open, 20,21=seek, 30,31=read, 40,41=write, 50,51=close, 100=exit    bInit          ` §џ#       5    TRUE=reading length chunk, FALSE=reading data chunk    bExit          ` §џ$       O    FALSE=repeat reading/writing, TRUE=abort reading/writing, go to the exit step    bReopen          ` §џ%       t    Open mode: TRUE=try to open existing file, FALSE=create new file, if open fails => try to create and open new file    bOpen          ` §џ&       %    TRUE=file opened, FALSE=file closed    bGet          ` §џ'       $    TRUE=get entry, FALSE=remove entry    bOW          ` §џ(       b    TRUE=removing oldest entry (bOverwrite=TRUE), FALSE=don't remove oldest entry (bOverwrite=FALSE)    cbOW         ` §џ)       /    Temp length of ovwerwritten length/data chunk    cbMoved         ` §џ*       =    Number of successfully read/written length/data chunk bytes    ptrSaved         ` §џ+       M    Seek pointer previous position (used by A_GetHead or read buffer underflow)    ptrMax         ` §џ,       D    Seek pointer max. position = SIZEOF(ring buffer header) + cbBuffer    eCmd           eFileRBuffer_None       E_FileRBufferCmd ` §џ-              eOldCmd           eFileRBuffer_None       E_FileRBufferCmd ` §џ.                 sNetId           ''    
   T_AmsNetId   §џ           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString   §џ       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath   §џ           default: Open generic file    nID           §џ           user defined version ID    cbBuffer          §џ           max. file buffer byte size 
   bOverwrite            §џ	       :    FALSE = don't overwrite, TRUE = overwrite oldest entries 
   pWriteBuff           §џ
       "    pointer to external write buffer 
   cbWriteLen           §џ       $    byte size of external write buffer 	   pReadBuff           §џ       !    pointer to external read buffer 	   cbReadLen           §џ       #    byte size of external read buffer    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrID           §џ       х    ADS or function specific error codes:
	16#8000	= (File) buffer empty or overflow 
	16#8001 = (Application) buffer underflow (cbReadLen to small),  	
	16#8002	= Buffer is not opened  
	16#8003	= Invalid input parameter value    cbReturn           §џ       !    number of recend read data bytes   stHeader                          ST_FileRBufferHead   §џ           buffer status             КбБV     џџџџ            FB_FILETIMETOTZSPECIFICLOCALTIME           fbBase       !    ( wStdYear := 0, wDldYear := 0 )     "   FB_TranslateUtcToLocalTimeByZoneID ` §џ           Underlaid base function block       in             
   T_FILETIME   §џ           Time to be converted (UTC, file time format), 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601   tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out             
   T_FILETIME   §џ       *    Converted time in local file time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            КбБV      џџџџ           FB_FORMATSTRING     	      pFormat               ` §џ           pointer to the format string    pOut               ` §џ           pointer to the result string 
   iRemOutLen         ` §џ       $    Max remaining length of sOut buffer   bValid          ` §џ       8    if set, the string character is valid format parameter    stFmt                              ST_FormatParameters ` §џ           
   nArrayElem         ` §џ           	   nArgument         ` §џ              parArgs   	  
                     T_Arg              ` §џ              sArgStr               T_MaxString ` §џ                 sFormat               T_MaxString   §џ              arg1                 T_Arg   §џ              arg2                 T_Arg   §џ              arg3                 T_Arg   §џ              arg4                 T_Arg   §џ              arg5                 T_Arg   §џ              arg6                 T_Arg   §џ	              arg7                 T_Arg   §џ
              arg8                 T_Arg   §џ              arg9                 T_Arg   §џ              arg10                 T_Arg   §џ                 bError            §џ              nErrId           §џ              sOut               T_MaxString   §џ                       КбБV     џџџџ           FB_GETADAPTERSINFO     
   	   fbAdsRead       f    ( PORT:=AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_IPHELPERAPI, IDXOFFS:= IPHELPERAPI_ADAPTERSINFO )              	   T_AmsPort         Н                ADSREAD ` §џ           
   fbRegQuery       P    ( sSubKey:= '\Software\Beckhoff\TwinCAT\Remote', sValName := 'DefaultAdapter' )        FB_RegQueryValue ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              cbInfo         ` §џ              idx         ` §џ              info   	                                      ST_IP_ADAPTER_INFO         ` §џ           buffer for 12 entries    pInfo                                 ST_IP_ADAPTER_INFO      ` §џ           
   nRealCount         ` §џ           	   sDefaultA               T_MaxString ` §џ                 sNetID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ	              bError            §џ
              nErrID           §џ              arrAdapters   	                                    ST_IpAdapterInfo           §џ              nCount           §џ           Max. number of found adapters    nGet           §џ       %    Number of read adapter info entries             КбБV     џџџџ           FB_GETDEVICEIDENTIFICATION        	   iDataSize       @` §џ           
   byTagStart    <    ` §џ           '<'    byTagEnd    >    ` §џ           '>' 
   byTagSlash    /    ` §џ           '/' 	   fbAdsRead                          ADSREAD ` §џ              bExecutePrev          ` §џ              iState         ` §џ              iData   	                      ` §џ           
   strActPath             ` §џ              iLoopEndIdx         ` §џ              iStructSize         ` §џ              strHardwareCPU             ` §џ              strTags   	  	        )       )          ` §џ           	   iTagsSize   	  	                     ` §џ              iCurrTag   	  (                     ` §џ               iCurrTagData   	  P                     ` §џ!           	   iPathSize         ` §џ"              iTagIdx         ` §џ$              iCurrTagIdx         ` §џ%              iDataIdx         ` §џ&              iCurrTagDataIdx         ` §џ'              k         ` §џ(              iMinCurrData         ` §џ)           	   iFirstIdx         ` §џ*              iLastIdx         ` §џ+           	   bTagStart          ` §џ-              bTagEnd          ` §џ.           	   bTagSlash          ` §џ/              bTagOpen          ` §џ0                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ              sNetId            
   T_AmsNetId   §џ           ams net id of target system       bBusy            §џ              bError            §џ	              nErrorID           §џ
           
   stDevIdent                              ST_DeviceIdentification   §џ       5    structure with available device identification data             КбБV     џџџџ           FB_GETDEVICEIDENTIFICATIONEX        	   iDataSize       @` §џ           
   byTagStart    <    ` §џ           '<'    byTagEnd    >    ` §џ           '>' 
   byTagSlash    /    ` §џ           '/' 	   fbAdsRead                          ADSREAD ` §џ              bExecutePrev          ` §џ              iState         ` §џ              iData   	                      ` §џ           
   strActPath             ` §џ              iLoopEndIdx         ` §џ              iStructSize         ` §џ              strHardwareCPU             ` §џ              strTags   	  	        )       )          ` §џ           	   iTagsSize   	  	                     ` §џ              iCurrTag   	  (                     ` §џ               iCurrTagData   	  P                     ` §џ!           	   iPathSize         ` §џ"              iTagIdx         ` §џ$              iCurrTagIdx         ` §џ%              iDataIdx         ` §џ&              iCurrTagDataIdx         ` §џ'              k         ` §џ(              iMinCurrData         ` §џ)           	   iFirstIdx         ` §џ*              iLastIdx         ` §џ+           	   bTagStart          ` §џ-              bTagEnd          ` §џ.           	   bTagSlash          ` §џ/              bTagOpen          ` §џ0                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ              sNetId            
   T_AmsNetId   §џ           Ams net id of target system       bBusy            §џ              bError            §џ	              nErrorID           §џ
           
   stDevIdent                              ST_DeviceIdentificationEx   §џ       5    structure with available device identification data             КбБV     џџџџ           FB_GETHOSTADDRBYNAME           fbAdsRW       j    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP:= SYSTEMSERVICE_IPHELPERAPI, IDXOFFS:= IPHELPERAPI_IPADDRBYHOSTNAME )              	   T_AmsPort         Н                
   ADSRDWRTEX ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id) 	   sHostName           ''       T_MaxString   §џ       1    String containing host name. E.g. 'DataServer1'    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout    ШЏ     §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ              sAddr           ''    
   T_IPv4Addr   §џ       S    String containing an (Ipv4) Internet Protocol dotted address. E.g. '172.16.7.199'    arrAddr           0, 0, 0, 0       T_IPv4AddrArr   §џ       C    Byte array containing an (Ipv4) Internet Protocol dotted address.             КбБV     џџџџ           FB_GETHOSTNAME        	   fbAdsRead       R    ( PORT :=  AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_IPHOSTNAME, IDXOFFS := 0 )              	   T_AmsPort         О                 ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ	              bError            §џ
              nErrID           §џ           	   sHostName               T_MaxString   §џ           The local host name             КбБV     џџџџ           FB_GETLOCALAMSNETID           fbRegQueryValue       W    ( sNetId:= '', sSubKey := 'SOFTWARE\Beckhoff\TwinCAT\System', sValName := 'AmsNetId' )        FB_RegQueryValue ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              tmpBytes               T_AmsNetIdArr ` §џ                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeOut         §џ           Max fb execution time       bBusy            §џ              bError            §џ	              nErrId           §џ
           
   AddrString           '0.0.0.0.0.0'    
   T_AmsNetId   §џ       -    TwinCAT -specific network address as string 	   AddrBytes           0,0,0,0,0,0       T_AmsNetIdArr   §џ       3    TwinCAT-specific network address as array of byte             КбБV     џџџџ           FB_GETROUTERSTATUSINFO        	   fbAdsRead       &    ( PORT:= 1, IDXGRP:= 1, IDXOFFS:= 1 )              	   T_AmsPort                          ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              adsRes   	                       ` §џ                 sNetId           ''    
   T_AmsNetID   §џ           Ams net id    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ	              bError            §џ
              nErrID           §џ              info                   ST_TcRouterStatusInfo   §џ       #    TwinCAT Router status information             КбБV     џџџџ           FB_GETTIMEZONEINFORMATION        	   fbAdsRead       p    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS := TIMESERVICE_TIMEZONINFORMATION )              	   T_AmsPort                         ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              res                ST_AmsGetTimeZoneInformation ` §џ                 sNetID            
   T_AmsNetID   §џ       &    TwinCAT network address (ams net id)    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ              bError            §џ	              nErrID           §џ
              tzID               E_TimeZoneID   §џ              tzInfo                     ST_TimeZoneInformation   §џ                       КбБV     џџџџ           FB_HASHTABLECTRL           p                     T_HashTableEntry      ` §џ              n                     T_HashTableEntry      ` §џ              nHash         ` §џ                 key           §џ       d    Entry key: used by A_Lookup, A_Remove method, the key.lookup variable is also used by A_Add method    putValue           §џ           Entry value 	   putPosPtr                     T_HashTableEntry        §џ	                 bOk            §џ           TRUE = success, FALSE = error    getValue           §џ           	   getPosPtr                     T_HashTableEntry        §џ       R    returned by A_GetFirstEntry, A_GetNextEntry, A_Add, A_Lookup and A_Remove method       hTable         	               T_HHASHTABLE  §џ           Hash table handle variable         КбБV      џџџџ           FB_LINKEDLISTCTRL           p                   T_LinkedListEntry      ` §џ           Temp. previous node    n                   T_LinkedListEntry      ` §џ           Temp. next node       putValue           §џ           Linked list node value 	   putPosPtr                   T_LinkedListEntry        §џ           Linked list node pointer       bOk            §џ           TRUE = success, FALSE = error    getValue           §џ           Linked list node value 	   getPosPtr                   T_LinkedListEntry        §џ           Linked list node pointer       hList         	               T_HLINKEDLIST  §џ           Linked list table handle         КбБV      џџџџ           FB_LOCALSYSTEMTIME     	      rtrig                 R_TRIG ` §џ              state         ` §џ              fbNT             
   NT_GetTime ` §џ              fbTZ                          FB_GetTimeZoneInformation ` §џ              fbSET                NT_SetTimeToRTCTime ` §џ              fbRTC                RTC_EX2 ` §џ              timer                    TON ` §џ              nSync         ` §џ              bNotSup          ` §џ                 sNetID           ''    
   T_AmsNetID   §џ       +    The target TwinCAT system network address    bEnable            §џ       `    Enable/start cyclic time synchronisation (output is synchronized to Local Windows System Time)    dwCycle           Q            §џ       &    Time synchronisation cycle (seconds)    dwOpt          §џ       R    Additional option flags: If bit 0 is set => Synchronize Windows Time to RTC time    tTimeout         §џ       J    Max. ADS function block execution time (internal communication timeout).       bValid            §џ       \    TRUE => The systemTime and tzID output is valid, FALSE => systemTime and tzID is not valid 
   systemTime                   
   TIMESTRUCT   §џ       "    Local Windows System Time struct    tzID           eTimeZoneID_Invalid       E_TimeZoneID   §џ       )    Daylight/standard time zone information             КбБV     џџџџ           FB_MEMBUFFERMERGE           pDest         ` §џ              cbDest         ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType   §џ              pBuffer           §џ           Pointer to destination buffer    cbBuffer           §џ       &    Max. byte size of destination buffer    pSegment           §џ       .    Pointer to data segment (optional, may be 0) 	   cbSegment           §џ       -    Number of data segments (optional, may be 0)      bOk            §џ       M    TRUE => Successfull, FALSE => End of enumeration or invalid input parameter    cbSize           §џ           Data buffer fill state             КбБV      џџџџ           FB_MEMBUFFERSPLIT           pSrc         ` §џ              cbSrc         ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType   §џ              pBuffer           §џ           Pointer to source data buffer    cbBuffer           §џ       !    Byte size of source data buffer    cbSize           §џ           Max. segment byte size       bOk            §џ
       N    TRUE => Successfull, FALSE => End of segmentation or invalid input parameter    pSegment           §џ           Pointer to data segment 	   cbSegment           §џ           Byte size of data segment    bEOS            §џ       7    TRUE = End/last segment, FALSE = Next segment follows             КбБV      џџџџ           FB_MEMRINGBUFFER           idxLast         ` §џ            byte index of last buffer byte    idxFirst         ` §џ       "    byte buffer of first buffer byte    idxGet         ` §џ              pTmp         ` §џ              cbTmp         ` §џ              cbCopied         ` §џ                 pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pRead           §џ	           pointer to read data buffer    cbRead           §џ
           byte size of read data buffer    pBuffer           §џ       #    pointer to ring buffer data bytes    cbBuffer           §џ           max. ring buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    nCount           §џ           number of fifo entries    cbSize           §џ       "    current byte length of fifo data    cbReturn           §џ       О    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             КбБV      џџџџ           FB_MEMRINGBUFFEREX           idxLast         ` §џ       *    byte index of last (newest) buffer entry    idxFirst         ` §џ       +    byte index of first (oldest) buffer entry    idxGet         ` §џ           temporary index    idxEnd         ` §џ       "    index of unused/free end segment    cbEnd         ` §џ       &    byte size of unused/free end segment    cbAdd         ` §џ!                 pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pBuffer           §џ       #    pointer to ring buffer data bytes    cbBuffer           §џ           max. ring buffer byte size       bOk            §џ       W    TRUE = new entry added or get, freed succesfully, FALSE = fifo overflow or fifo empty    pRead           §џ       (    A_GetHead returns pointer to read data    cbRead           §џ       *    A_GetHead returns byte size of read data    nCount           §џ           number of fifo entries    cbSize           §џ       "    current byte length of fifo data    cbFree           §џ            biggest available free segment             КбБV      џџџџ           FB_MEMSTACKBUFFER               pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pRead           §џ	           pointer to read data buffer    cbRead           §џ
           byte size of read data buffer    pBuffer           §џ       #    pointer to LIFO buffer data bytes    cbBuffer           §џ           max. LIFO buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = LIFO overflow or LIFO empty    nCount           §џ           number of LIFO entries    cbSize           §џ       "    current byte length of LIFO data    cbReturn           §џ       О    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             КбБV      џџџџ           FB_REGQUERYVALUE           fbAdsRdWrtEx       [    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_REG_HKEYLOCALMACHINE, IDXOFFS := 0 )              	   T_AmsPort         Ш                  
   ADSRDWRTEX ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              s1Len         ` §џ              s2Len         ` §џ              ptr         ` §џ              cbBuff         ` §џ              tmpBuff                ST_HKeySrvRead ` §џ                 sNetId            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    sSubKey               T_MaxString   §џ       #    HKEY_LOCAL_MACHINE \ sub key name    sValName               T_MaxString   §џ           Value name    cbData           §џ           Number of data bytes to read    pData           §џ       $    Points to registry key data buffer    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeOut         §џ	           Max fb execution time       bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ       '    Number of succesfully read data bytes             КбБV     џџџџ           FB_REGSETVALUE        
   fbAdsWrite       [    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_REG_HKEYLOCALMACHINE, IDXOFFS := 0 )              	   T_AmsPort         Ш                  ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              s1Len         ` §џ              s2Len         ` §џ              s3Len         ` §џ              ptr         ` §џ              nType         ` §џ              cbBuff         ` §џ              cbRealWrite         ` §џ              tmpBuff                  ST_HKeySrvWrite ` §џ                 sNetId            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    sSubKey               T_MaxString   §џ       #    HKEY_LOCAL_MACHINE \ sub key name    sValName               T_MaxString   §џ           Value name    eValType               E_RegValueType   §џ           Value type    cbData           §џ           Size of value data in bytes    pData           §џ           Pointer to value data buffer   bExecute            §џ	       6    Rising edge on this input activates the fb execution    tTimeOut         §џ
           Max fb execution time       bBusy            §џ              bError            §џ              nErrId           §џ              cbWrite           §џ       +    Number of successfully written data bytes             КбБV     џџџџ           FB_REMOVEROUTEENTRY        
   fbAdsWrite       P    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_DELREMOTE, IDXOFFS := 0 )              	   T_AmsPort         "                 ADSWRITE ` §џ                 sNetID            
   T_AmsNetID   §џ       '    TwinCAT network address (ams net id )    sName                 §џ           Route name as string    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ                       КбБV     џџџџ           FB_RESETSCOPESERVERCONTROL        
   fbAdsWrite                          ADSWRITE    §џ              nState            §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       КбБV     џџџџ           FB_SAVESCOPESERVERDATA           nState            §џ           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SCOPESERVER, IDXGRP := 16#750E, IDXOFFS := 0 )              	   T_AmsPort         u                 ADSWRITE    §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ           	   sSaveFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ	              bDone            §џ
              bError            §џ              nErrorId           §џ                       КбБV     џџџџ           FB_SCOPESERVERCONTROL           eCurrentState           SCOPE_SERVER_IDLE       E_ScopeServerState    §џ           	   fbConnect                                   FB_ConnectScopeServer    §џ              fbStart                FB_StartScopeServer    §џ              fbStop                FB_StopScopeServer    §џ              fbSave        
                FB_SaveScopeServerData    §џ              fbDisconnect        	               FB_DisconnectScopeServer    §џ              fbReset        	               FB_ResetScopeServerControl    §џ                  sNetId            
   T_AmsNetId   §џ           	   eReqState               E_ScopeServerState   §џ              sConfigFile    Q       Q    §џ           	   sSaveFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ              bError            §џ              nErrorId           §џ                       КбБV     џџџџ           FB_SETTIMEZONEINFORMATION        
   fbAdsWrite       o    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS	:= TIMESERVICE_TIMEZONINFORMATION )              	   T_AmsPort                         ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              req                ST_AmsGetTimeZoneInformation ` §џ                 sNetID           ''    
   T_AmsNetID   §џ       &    TwinCAT network address (ams net id)    tzInfo       ]   ( (*West Euoropa Standard Time *)
					bias:=-60,
					standardName:='W. Europe Standard Time',
					standardDate:=(wYear:=0, wMonth:=10, wDayOfWeek:=0, wDay:=5, wHour:=3),
					standardBias:=0,
					daylightName:='W. Europe Daylight Time',
					daylightDate:=(wYear:=0, wMonth:=3, wDayOfWeek:=0, wDay:=5, wHour:=2),
					daylightBias:=-60 )    Фџџџ        W. Europe Standard Time          
   TIMESTRUCT             
                                W. Europe Daylight Time          
   TIMESTRUCT                                 Фџџџ   ST_TimeZoneInformation   §џ              bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ              bError            §џ              nErrID           §џ                       КбБV     џџџџ           FB_STARTSCOPESERVER           nState            §џ           
   fbAdsWrite                          ADSWRITE    §џ              nDummy   	                    0,0                     §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       КбБV     џџџџ           FB_STOPSCOPESERVER           nState            §џ           
   fbAdsWrite                          ADSWRITE    §џ              nDummy   	                    0,0                     §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       КбБV     џџџџ           FB_STRINGRINGBUFFER           fbBuffer                              FB_MemRingBuffer ` §џ       4    Internal (low level) buffer control function block    
   bOverwrite            §џ       8    TRUE = overwrite oldest entry, FALSE = don't overwrite    putValue           ''       T_MaxString   §џ       %    String to add (write) to the buffer    pBuffer           §џ	       #    Pointer to ring buffer data bytes    cbBuffer           §џ
           Max. ring buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    getValue           ''       T_MaxString   §џ       #    String removed (read) from buffer    nCount           §џ           Number of fifo entries    cbSize           §џ       "    Current byte length of fifo data             КбБV      џџџџ        "   FB_SYSTEMTIMETOTZSPECIFICLOCALTIME           fbBase             "   FB_TranslateUtcToLocalTimeByZoneID ` §џ           Underlaid base function block       in                   
   TIMESTRUCT   §џ       p    Time to be converted (UTC, system time format). Structure that specifies the system time since January 1, 1601    tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out                   
   TIMESTRUCT   §џ       ,    Converted time in local system time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            КбБV      џџџџ           FB_TEXTFILERINGBUFFER           fbOpen                             FB_FileOpen ` §џ              fbClose                      FB_FileClose ` §џ              fbPuts        	               FB_FilePuts ` §џ              nStep         ` §џ       @    0=idle, 1=init, 10,11=open, 40,41=write, 50,51=close, 100=exit    eCmd           eFileRBuffer_None       E_FileRBufferCmd ` §џ                 sNetId           ''    
   T_AmsNetId ` §џ           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString ` §џ       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath ` §џ           default: Open generic file    bAppend         ` §џ       #    TRUE = append, FALSE = not append    putLine           ''       T_MaxString ` §џ	              cbBuffer        ` §џ
       5    max. file buffer byte size(RESERVED for future use)    tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ              bOpened          ` §џ       )    TRUE = file opened, FALSE = file closed    getLine           ''       T_MaxString ` §џ                       КбБV     џџџџ        "   FB_TRANSLATELOCALTIMETOUTCBYZONEID           inLocal                   
   TIMESTRUCT ` §џ       9    Input time in local system time format (time structure) 	   tziSommer                   
   TIMESTRUCT ` §џ       A    tzInfo.daylightDate transition time in local system time format 	   tziWinter                   
   TIMESTRUCT ` §џ       A    tzInfo.standardDate transition time in local system time Format    tziLocalSommer             
   T_FILETIME ` §џ       ?    tzInfo.daylightDate transition time in local file time format    tziLocalWinter             
   T_FILETIME ` §џ       ?    tzInfo.standardDate transition time in local file time Format    tziLocalSommerJump             
   T_FILETIME ` §џ              tziLocalWinterJump             
   T_FILETIME ` §џ              ui64LocalIn                T_ULARGE_INTEGER ` §џ       (    Local input time as unsigned 64 number    ui64LocalSommer                T_ULARGE_INTEGER ` §џ       5    Local tzInfo.daylightDate as unsigned 64 bit number    ui64LocalWinter                T_ULARGE_INTEGER ` §џ       5    Local tzInfo.standardDate as unsigned 64 bit number    in_to_s         ` §џ       <    Input time[Local] to tzInfo.daylightDate[Local] cmp result    in_to_w         ` §џ       <    Input time[Local] to tzInfo.standardDate[Local] cmp result    s_to_w         ` §џ       E    tzInfo.daylightDate[Local] to tzInfo.standardDate[Local] cmp result    in_to_s_jump         ` §џ        2    Input time[Local] to tzInfo jump time cmp result    in_to_w_jump         ` §џ!       2    Input time[Local] to tzInfo jump time cmp result    iStandardBias         ` §џ#              iDaylightBias         ` §џ$              ui64PreviousIn                T_ULARGE_INTEGER ` §џ&              ui64FallDiff                T_ULARGE_INTEGER ` §џ'           	   bFallDiff          ` §џ(           Nur zu Testzwecken    dtSommerJump         ` §џ*              dtWinterJump         ` §џ+                 in             
   T_FILETIME   §џ       /    Time to be converted (Local file time format)    tzInfo                     ST_TimeZoneInformation   §џ           Time zone information    wDldYear           §џ       p    Optional daylightDate.wYear value. If 0 => not used (default) else used only if tzInfo.daylightDate.wYear = 0.    wStdYear           §џ       p    Optional standardDate.wYear value. If 0 => not used (default) else used only if tzInfo.standardDate.wYear = 0.       out             
   T_FILETIME   §џ
       '    Converted time (UTC file time format)    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ       +    Detected daylight saving time information    bB            §џ            FALSE => A time, TRUE => B time   bias           §џ           Bias value in minutes             КбБV      џџџџ        "   FB_TRANSLATEUTCTOLOCALTIMEBYZONEID           inUtc                   
   TIMESTRUCT ` §џ       7    Input time in UTC system time format (time structure)    bInAsStruct          ` §џ       k    TRUE => inUtc is valid/converted to UTC system time format, FALSE => inUtc is not valid/not converted yet 	   tziSommer                   
   TIMESTRUCT ` §џ       A    tzInfo.daylightDate transition time in local system time format 	   tziWinter                   
   TIMESTRUCT ` §џ       A    tzInfo.standardDate transition time in local system time Format    tziLocalSommer             
   T_FILETIME ` §џ       ?    tzInfo.daylightDate transition time in local file time format    tziLocalWinter             
   T_FILETIME ` §џ       ?    tzInfo.standardDate transition time in local file time Format    tziUtcSommer             
   T_FILETIME ` §џ       =    tzInfo.daylightDate transition time in UTC file time format    tziUtcWinter             
   T_FILETIME ` §џ       =    tzinfo.standardDate transition time in UTC file time format 	   ui64UtcIn                T_ULARGE_INTEGER ` §џ       &    UTC input time as unsigned 64 number    ui64UtcSommer                T_ULARGE_INTEGER ` §џ       3    UTC tzInfo.daylightDate as unsigned 64 bit number    ui64UtcWinter                T_ULARGE_INTEGER ` §џ       3    UTC tzInfo.standardDate as unsigned 64 bit number    in_to_s         ` §џ       8    Input time[UTC] to tzInfo.daylightDate[UTC] cmp result    in_to_w         ` §џ       8    Input time[UTC] to tzInfo.standardDate[UTC] cmp result    s_to_w         ` §џ        A    tzInfo.daylightDate[UTC] to tzInfo.standardDate[UTC] cmp result    out_to_s         ` §џ!       =    Output time[local] to tzInfo.daylightDate[local] cmp result    out_to_w         ` §џ"       =    Output time[local] to tzInfo.standardDate[local] cmp result       in             
   T_FILETIME   §џ       .    Time to be converted (UTC, file time format)    tzInfo                     ST_TimeZoneInformation   §џ           Time zone information    wDldYear           §џ       p    Optional daylightDate.wYear value. If 0 => not used (default) else used only if tzInfo.daylightDate.wYear = 0.    wStdYear           §џ       p    Optional standardDate.wYear value. If 0 => not used (default) else used only if tzInfo.standardDate.wYear = 0.       out             
   T_FILETIME   §џ
       (    Converted time (local file time format)   eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ       0    Detected daylight saving time/zone information    bB            §џ            FALSE => A time, TRUE => B time   bias           §џ           Bias value in minutes             КбБV      џџџџ            FB_TZSPECIFICLOCALTIMETOFILETIME           fbBase       !    ( wStdYear := 0, wDldYear := 0 )                                         "   FB_TranslateLocalTimeToUtcByZoneID ` §џ           Underlaid base function block       in             
   T_FILETIME   §џ       }    Time zone's specific local file time. 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601   tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out             
   T_FILETIME   §џ       E    Converted time in Coordinated Universal Time (UTC) file time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            КбБV      џџџџ        "   FB_TZSPECIFICLOCALTIMETOSYSTEMTIME           fbBase                                         "   FB_TranslateLocalTimeToUtcByZoneID ` §џ           Underlaid base function block       in                   
   TIMESTRUCT   §џ       g    Time zone's specific local system time. Structure that specifies the system time since January 1, 1601   tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out                   
   TIMESTRUCT   §џ       8    Coordinated Universal Time (UTC) in system time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            КбБV      џџџџ           FB_WRITEPERSISTENTDATA           fbAdsWrtCtl       9    ( ADSSTATE := ADSSTATE_SAVECFG, LEN := 0, SRCADDR := 0 )                          	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ       l    Contains the ADS port number of the PLC run-time system whose persistent data is to be stored (801, 811...)   START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time    MODE           SPDM_2PASS       E_PersistentMode   §џ       D    =SPDM_2PASS: optimized boost; =SPDM_VAR_BOOST: boost per variable;       BUSY            §џ              ERR            §џ              ERRID           §џ                       КбБV     џџџџ           FILETIME_TO_DT           ui64                T_ULARGE_INTEGER ` §џ	                 fileTime             
   T_FILETIME   §џ           Windows file time.       FILETIME_TO_DT                                     КбБV      џџџџ           FILETIME_TO_SYSTEMTIME     	      D         ` §џ              M         ` §џ              Y         ` §џ           
   uiPastDays                T_ULARGE_INTEGER ` §џ	              uiPastYears                T_ULARGE_INTEGER ` §џ
              uiRemainder                T_ULARGE_INTEGER ` §џ           
   dwPastDays         ` §џ              dwPastYears         ` §џ           
   dwYearDays         ` §џ                 fileTime             
   T_FILETIME   §џ                 FILETIME_TO_SYSTEMTIME                   
   TIMESTRUCT                             КбБV      џџџџ           FIX16_TO_LREAL               in                 T_FIX16   §џ                 FIX16_TO_LREAL                                                  КбБV      џџџџ           FIX16_TO_WORD               in                 T_FIX16   §џ           16 bit fixed point number       FIX16_TO_WORD                                     КбБV      џџџџ           FIX16ADD               augend                 T_FIX16   §џ              addend                 T_FIX16   §џ                 FIX16Add                 T_FIX16                             КбБV      џџџџ        
   FIX16ALIGN               in                 T_FIX16   §џ       #    16 bit signed fixed point number.    n                           §џ       ,    Number of fractional bits (decimal places)    
   FIX16Align                 T_FIX16                             КбБV      џџџџ           FIX16DIV           tmpA         ` §џ	                 dividend                 T_FIX16   §џ              divisor                 T_FIX16   §џ                 FIX16Div                 T_FIX16                             КбБV      џџџџ           FIX16MUL           tmp         ` §џ	                 multiA                 T_FIX16   §џ              multiB                 T_FIX16   §џ                 FIX16Mul                 T_FIX16                             КбБV      џџџџ           FIX16SUB               minuend                 T_FIX16   §џ           
   subtrahend                 T_FIX16   §џ                 FIX16Sub                 T_FIX16                             КбБV      џџџџ           GETREMOTEPCINFO        	   fbAdsRead       #    ( PORT:=1, IDXGRP:=3, IDXOFFS:=1 )              	   T_AmsPort                          ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ           
   RouterInfo   	  c            
                ST_AmsRouterInfoEntry         ` §џ              iIndex         ` §џ                 NETID            
   T_AmsNetId   §џ       D    Target NetID, usually left as empty string for reading local infos    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ       
    Ads busy    ERR            §џ	           Ads error    ERRID           §џ
           Ads Error    RemotePCInfo               REMOTEPCINFOSTRUCT   §џ       N    field with all NetIDДs and PC names found in router, ordered as router gives             КбБV     џџџџ           GUID_TO_REGSTRING           sGuid    Q       Q     §џ                 in                  GUID   §џ           Structure with GUID       GUID_TO_REGSTRING    '       '                              КбБV      џџџџ           GUID_TO_STRING           sRetVal    Q       Q     §џ              nDummyW            §џ	              nDummyDW            §џ
              sHex               T_MaxString    §џ                 stIn                  GUID   §џ           Structure with a GUID       GUID_TO_STRING    Q       Q                              КбБV      џџџџ           GUIDSEQUALBYVAL               guidA                  GUID   §џ              guidB                  GUID   §џ                 GuidsEqualByVal                                      КбБV      џџџџ           HEXASCNIBBLE_TO_BYTE               asc           §џ       R   Ascii code of hexadecimal nibble character, ASC('0'..'9' or 'a'..'f' or 'A'..'F')       HEXASCNIBBLE_TO_BYTE                                     КбБV      џџџџ           HEXCHRNIBBLE_TO_BYTE               chr               §џ       8    One string character: '0'..'9' or 'a'..'f' or 'A'..'F'       HEXCHRNIBBLE_TO_BYTE                                     КбБV      џџџџ           HEXSTR_TO_DATA           pSrc               ` §џ
              pDest               ` §џ              ascii         ` §џ              nibble         ` §џ              bAdd          ` §џ              bLN          ` §џ           hi/lo nibble       sHex               T_MaxString   §џ           Hex string to convert    pData           §џ           Pointer to destination buffer    cbData           §џ       !    Byte size of destination buffer       HEXSTR_TO_DATA                                     КбБV      џџџџ           HOST_TO_BE128               in                T_UHUGE_INTEGER   §џ                 HOST_TO_BE128                T_UHUGE_INTEGER                             КбБV      џџџџ           HOST_TO_BE16               in           §џ                 HOST_TO_BE16                                     КбБV      џџџџ           HOST_TO_BE32           parr    	                            ` §џ                 in           §џ                 HOST_TO_BE32                                     КбБV      џџџџ           HOST_TO_BE64               in                T_ULARGE_INTEGER   §џ                 HOST_TO_BE64                T_ULARGE_INTEGER                             КбБV      џџџџ           INT64_TO_LREAL               in                T_LARGE_INTEGER   §џ                 INT64_TO_LREAL                                                  КбБV      џџџџ        
   INT64ADD64           bOV          ` §џ	                 i64a                T_LARGE_INTEGER   §џ              i64b                T_LARGE_INTEGER   §џ              
   Int64Add64                T_LARGE_INTEGER                             КбБV      џџџџ           INT64ADD64EX               augend                T_LARGE_INTEGER   §џ              addend                T_LARGE_INTEGER   §џ                 Int64Add64Ex                T_LARGE_INTEGER                       bOV            §џ       3    TRUE => arithmetic overflow, FALSE => no overflow         КбБV      џџџџ        
   INT64CMP64               i64a                T_LARGE_INTEGER   §џ              i64b                T_LARGE_INTEGER   §џ	              
   Int64Cmp64                                     КбБV      џџџџ           INT64DIV64EX           bIsNegative          ` §џ           
   sRemainder                T_ULARGE_INTEGER ` §џ                 dividend                T_LARGE_INTEGER   §џ              divisor                T_LARGE_INTEGER   §џ                 Int64Div64Ex                T_LARGE_INTEGER                    	   remainder                 T_LARGE_INTEGER  §џ                   КбБV      џџџџ           INT64ISZERO               i64                T_LARGE_INTEGER   §џ                 Int64IsZero                                      КбБV      џџџџ           INT64NEGATE               i64                T_LARGE_INTEGER   §џ                 Int64Negate                T_LARGE_INTEGER                             КбБV      џџџџ           INT64NOT               i64                T_LARGE_INTEGER   §џ                 Int64Not                T_LARGE_INTEGER                             КбБV      џџџџ        
   INT64SUB64               i64a                T_LARGE_INTEGER   §џ       	    minuend    i64b                T_LARGE_INTEGER   §џ           substrahend    
   Int64Sub64                T_LARGE_INTEGER                             КбБV      џџџџ           ISFINITE        	   ptrDouble    	                            ` §џ           	   ptrSingle               ` §џ	                 x                 T_ARG   §џ                 IsFinite                                      КбБV      џџџџ           LARGE_INTEGER            
   dwHighPart           §џ           	   dwLowPart           §џ                 LARGE_INTEGER                T_LARGE_INTEGER                             КбБV      џџџџ           LARGE_TO_ULARGE               in                T_LARGE_INTEGER   §џ                 LARGE_TO_ULARGE                T_ULARGE_INTEGER                             КбБV      џџџџ           LREAL_TO_FIX16               in                        §џ           LREAL number to convert    n                          §џ       ,    Number of fractional bits (decimal places)       LREAL_TO_FIX16                 T_FIX16                             КбБV      џџџџ           LREAL_TO_FMTSTR           rec              
   T_FloatRec ` §џ              pOut               ` §џ              iStart         ` §џ              iEnd         ` §џ              i         ` §џ                 in                        §џ
           
   iPrecision           §џ              bRound            §џ                 LREAL_TO_FMTSTR    џ      џ                             КбБV      џџџџ           LREAL_TO_INT64               in                        §џ                 LREAL_TO_INT64                T_LARGE_INTEGER                             КбБV      џџџџ           LREAL_TO_UINT64           f64                      ` §џ                 in                        §џ                 LREAL_TO_UINT64                T_ULARGE_INTEGER                             КбБV      џџџџ           MAXSTRING_TO_BYTEARR           cbCopy         ` §џ           	   Index7001                            in               T_MaxString   §џ                 MAXSTRING_TO_BYTEARR   	  џ                                                 КбБV     џџџџ           NT_ABORTSHUTDOWN           fbAdsWrtCtl       N    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_POWERGOOD, DEVSTATE := 0 )              	   T_AmsPort         
               	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
                       КбБV     џџџџ        
   NT_GETTIME        	   fbAdsRead       i    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS := TIMESERVICE_DATEANDTIME )              	   T_AmsPort                         ADSREAD ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
              TIMESTR                   
   TIMESTRUCT   §џ           Local windows system time             КбБV     џџџџ        	   NT_REBOOT           fbAdsWrtCtl       M    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_SHUTDOWN, DEVSTATE := 1 )              	   T_AmsPort                       	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    DELAY           §џ           Reboot delay time [seconds]    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       КбБV     џџџџ           NT_SETLOCALTIME        
   fbAdsWrite       d    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP:= SYSTEMSERVICE_TIMESERVICES, IDXOFFS:=TIMESERVICE_DATEANDTIME)              	   T_AmsPort                         ADSWRITE ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    TIMESTR                   
   TIMESTRUCT   §џ           New local system time    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       КбБV     џџџџ           NT_SETTIMETORTCTIME        
   fbAdsWrite       :    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := 4, IDXOFFS := 0 )              	   T_AmsPort                           ADSWRITE ` §џ           
   fbRegQuery       K    ( sSubKey := 'Software\Beckhoff\TwinCAT\System', sValName := 'NumOfCPUs' )                        T_MaxString                    T_MaxString                   FB_RegQueryValue ` §џ           	   fbTrigger                 R_TRIG ` §џ              bTmp         ` §џ              state         ` §џ              bInit         ` §џ           	   numOfCPUs         ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    SET            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
                       КбБV     џџџџ           NT_SHUTDOWN           fbAdsWrtCtl       M    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_SHUTDOWN, DEVSTATE := 0 )              	   T_AmsPort                        	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    DELAY           §џ           Shutdown delay time [seconds]    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       КбБV     џџџџ           NT_STARTPROCESS        
   fbAdsWrite       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP:=SYSTEMSERVICE_STARTPROCESS, IDXOFFS:=0 )              	   T_AmsPort         є                 ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              LenPath         ` §џ              LenDir         ` §џ           
   LenComLine         ` §џ              req                  ST_AmsStartProcessReq ` §џ           data buffer       NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PATHSTR               T_MaxString   §џ              DIRNAME               T_MaxString   §џ           	   COMNDLINE               T_MaxString   §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ              ERRID           §џ                       КбБV     џџџџ           OTSTRUCT_TO_TIME           tmpMilli         ` §џ                 OTIN                    OTSTRUCT   §џ                 OTSTRUCT_TO_TIME                                     КбБV      џџџџ           PBOOL_TO_BOOL               in                  §џ                 PBOOL_TO_BOOL                                      КбБV      џџџџ           PBYTE_TO_BYTE               in                 §џ                 PBYTE_TO_BYTE                                     КбБV      џџџџ           PDATE_TO_DATE               in                 §џ                 PDATE_TO_DATE                                     КбБV      џџџџ           PDINT_TO_DINT               in                 §џ                 PDINT_TO_DINT                                     КбБV      џџџџ        	   PDT_TO_DT               in                 §џ              	   PDT_TO_DT                                     КбБV      џџџџ           PDWORD_TO_DWORD               in                 §џ                 PDWORD_TO_DWORD                                     КбБV      џџџџ           PHUGE_TO_HUGE               in                 T_HUGE_INTEGER        §џ                 PHUGE_TO_HUGE                T_HUGE_INTEGER                             КбБV      џџџџ           PINT_TO_INT               in                 §џ                 PINT_TO_INT                                     КбБV      џџџџ           PLARGE_TO_LARGE               in                 T_LARGE_INTEGER        §џ                 PLARGE_TO_LARGE                T_LARGE_INTEGER                             КбБV      џџџџ           PLC_READSYMINFO        	   fbAdsRead       3    ( IDXGRP := ADSIGRP_SYM_UPLOADINFO, IDXOFFS := 0 )       №                 ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              SymInfoStruct   	                       ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ              SYMCOUNT           §џ              SYMSIZE           §џ                       КбБV     џџџџ           PLC_READSYMINFOBYNAME           fbReadEx                PLC_ReadSymInfoByNameEx ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              SYMNAME               T_MaxString   §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ	           Max fb execution time       BUSY            §џ              ERR            §џ              ERRID           §џ              SYMINFO                     SYMINFOSTRUCT   §џ                       КбБV     џџџџ           PLC_READSYMINFOBYNAMEEX        
   fbAdsRdWrt       5    ( IDXGRP := ADSIGRP_SYM_INFOBYNAMEEX, IDXOFFS := 0 )       	№                   ADSRDWRT ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              symInfoBuffer                            ST_AmsSymbolInfoEntry ` §џ           
   nameLength         ` §џ           
   typeLength         ` §џ              commentLength         ` §џ              nameAdrOffset         ` §џ              typeAdrOffset         ` §џ              commentAdrOffset         ` §џ              nameCpyLength         ` §џ              typeCpyLength         ` §џ               commentCpyLength         ` §џ!              endOfBufAdrOffset         ` §џ"                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              SYMNAME               T_MaxString   §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ	           Max fb execution time       BUSY            §џ              ERR            §џ              ERRID           §џ              SYMINFO                     SYMINFOSTRUCT   §џ              OVTYPE            §џ       @    TRUE => Type name string length overflow, FALSE => no overflow 	   OVCOMMENT            §џ       >    TRUE => Comment string length overflow, FALSE => no overflow             КбБV     џџџџ        	   PLC_RESET           fbAdsWrtCtl       F    ( ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              RESET            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       КбБV     џџџџ        	   PLC_START           fbAdsWrtCtl       D    ( ADSSTATE := ADSSTATE_RUN, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       КбБV     џџџџ           PLC_STOP           fbAdsWrtCtl       E    ( ADSSTATE := ADSSTATE_STOP, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              STOP            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       КбБV     џџџџ           PLREAL_TO_LREAL               in                              §џ                 PLREAL_TO_LREAL                                                  КбБV      џџџџ           PMAXSTRING_TO_MAXSTRING               in                T_MaxString        §џ                 PMAXSTRING_TO_MAXSTRING               T_MaxString                             КбБV      џџџџ           PREAL_TO_REAL               in                  §џ                 PREAL_TO_REAL                                      КбБV      џџџџ           PROFILER     
      MAX_DATABUFF_SIZE    d   @  §џ              RisingEdgeStart                 R_TRIG ` §џ              RisingEdgeReset                 R_TRIG ` §џ              FallingEdgeStart                 F_TRIG ` §џ              GETCPUACCOUNT1                GETCPUACCOUNT ` §џ              OldCpuCntDW         ` §џ              MeasureData   	  d                     ` §џ              TimeSum         ` §џ              MaxData        ` §џ              idx         ` §џ                 START            §џ       0   rising edge starts measurement and falling stops   RESET            §џ                 BUSY            §џ              DATA                   PROFILERSTRUCT   §џ                       КбБV     џџџџ           PSINT_TO_SINT               in                 §џ                 PSINT_TO_SINT                                     КбБV      џџџџ           PSTRING_TO_STRING               in     Q       Q         §џ                 PSTRING_TO_STRING    Q       Q                              КбБV      џџџџ           PTIME_TO_TIME               in                 §џ                 PTIME_TO_TIME                                     КбБV      џџџџ           PTOD_TO_TOD               in                 §џ                 PTOD_TO_TOD                                     КбБV      џџџџ           PUDINT_TO_UDINT               in                 §џ                 PUDINT_TO_UDINT                                     КбБV      џџџџ           PUHUGE_TO_UHUGE               in                 T_UHUGE_INTEGER        §џ                 PUHUGE_TO_UHUGE                T_UHUGE_INTEGER                             КбБV      џџџџ           PUINT64_TO_UINT64               in                 T_ULARGE_INTEGER        §џ                 PUINT64_TO_UINT64                T_ULARGE_INTEGER                             КбБV      џџџџ           PUINT_TO_UINT               in                 §џ                 PUINT_TO_UINT                                     КбБV      џџџџ           PULARGE_TO_ULARGE               in                 T_ULARGE_INTEGER        §џ                 PULARGE_TO_ULARGE                T_ULARGE_INTEGER                             КбБV      џџџџ           PUSINT_TO_USINT               in                 §џ                 PUSINT_TO_USINT                                     КбБV      џџџџ           PVOID_TO_BINSTR               in               PVOID   §џ       -    PVOID input value (pointer) to be converted 
   iPrecision           §џ       ,    Precision. Number of digits to be printed.       PVOID_TO_BINSTR               T_MaxString                             КбБV      џџџџ           PVOID_TO_DECSTR               in               PVOID   §џ       -    PVOID input value (pointer) to be converted 
   iPrecision           §џ       ,    Precision. Number of digits to be printed.       PVOID_TO_DECSTR               T_MaxString                             КбБV      џџџџ           PVOID_TO_HEXSTR               in               PVOID   §џ       -    PVOID input value (pointer) to be converted 
   iPrecision           §џ       ,    Precision. Number of digits to be printed.    bLoCase            §џ	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       PVOID_TO_HEXSTR               T_MaxString                             КбБV      џџџџ           PVOID_TO_OCTSTR               in               PVOID   §џ       -    PVOID input value (pointer) to be converted 
   iPrecision           §џ       ,    Precision. Number of digits to be printed.       PVOID_TO_OCTSTR               T_MaxString                             КбБV      џџџџ           PVOID_TO_STRING               in               PVOID   §џ                 PVOID_TO_STRING               T_MaxString                             КбБV      џџџџ           PWORD_TO_WORD               in                 §џ                 PWORD_TO_WORD                                     КбБV      џџџџ        
   RAD_TO_DEG               ANGLE                        §џ              
   RAD_TO_DEG                                                  КбБV      џџџџ           REGSTRING_TO_GUID               in    '       '    §џ       A    String containig GUID, '{xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx}'       REGSTRING_TO_GUID                  GUID                             КбБV      џџџџ           ROUTETRANSPORT_TO_STRING               eType               E_RouteTransportType   §џ                 ROUTETRANSPORT_TO_STRING    Q       Q                              КбБV      џџџџ           RTC           fbGetCpuCounter                 GETCPUCOUNTER ` §џ           
   risingEdge                 R_TRIG ` §џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              init         ` §џ                 EN            §џ              PDT           §џ                 Q            §џ              CDT           §џ	                       КбБV      џџџџ           RTC_EX           fbGetCpuCounter                 GETCPUCOUNTER ` §џ           
   risingEdge                 R_TRIG ` §џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              init         ` §џ                 EN            §џ              PDT           §џ              PMSEK           §џ                 Q            §џ	              CDT           §џ
              CMSEK           §џ                       КбБV      џџџџ           RTC_EX2     	      fbGetCpuCounter                 GETCPUCOUNTER ` §џ           
   risingEdge                 R_TRIG ` §џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              dateTime         ` §џ              init         ` §џ                 EN            §џ              PDT                   
   TIMESTRUCT   §џ              PMICRO           §џ                 Q            §џ	              CDT       ;    ( wYear := 1970, wMonth := 1, wDay := 1, wDayOfWeek := 4 )    В                  
   TIMESTRUCT   §џ
              CMICRO           §џ                       КбБV      џџџџ           SCOPEASCIIEXPORT        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ           	   sFilePath               T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       КбБV     џџџџ        	   SCOPEEXIT        
   fbAdsWrite                          ADSWRITE    §џ           
   RisingEdge                 R_TRIG    §џ              step            §џ              fbDelay                    TON    §џ                 bExecute            §џ       -    Rising edge starts function block execution    tTimeOut         §џ       >    Maximum time allowed for the execution of the function block       bBusy            §џ              bError            §џ              iErrorId           §џ	                       КбБV     џџџџ           SCOPEGETRECORDLEN        	   fbAdsRead                          ADSREAD    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ           
   fRecordLen                        §џ	                       КбБV      џџџџ           SCOPEGETSTATE        	   fbAdsRead                          ADSREAD    §џ              State            §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ              bOnline            §џ	                       КбБV      џџџџ           SCOPELOADFILE        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ           	   sFilePath               T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       КбБV     џџџџ           SCOPEMANUALTRIGGER        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       КбБV      џџџџ           SCOPESAVEAS        
   RisingEdge                 R_TRIG ` §џ           
   fbAdsWrite       D    ( NETID := '', PORT := 14000, IDXGRP := 16#2000, IDXOFFS := 16#11 )             
   T_AmsNetId                 	   T_AmsPort                           ADSWRITE ` §џ              step         ` §џ                 bExecute            §џ       -    Rising edge starts function block execution 	   sFilePath               T_MaxString   §џ           e.g. c:\Axis1.scp   tTimeout         §џ       >    Maximum time allowed for the execution of the function block       bBusy            §џ              bError            §џ	              iErrorId           §џ
                       КбБV     џџџџ           SCOPESETOFFLINE        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       КбБV      џџџџ           SCOPESETONLINE        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       КбБV      џџџџ           SCOPESETRECORDLEN        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ           
   fRecordLen                        §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ	                       КбБV      џџџџ           SCOPEVIEWEXPORT        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ           	   sFilePath               T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       КбБV     џџџџ           STRING_TO_CSVFIELD           cbField         ` §џ                 in               T_MaxString   §џ       !    Input data in PLC string format    bQM            §џ	       l    TRUE => Enclose result string in quotation marks, FALSE => Don't enclose result string in quotation marks.       STRING_TO_CSVFIELD               T_MaxString                             КбБV      џџџџ           STRING_TO_GUID           b   	  #                        §џ	              g                  GUID    §џ
              n            §џ              nibble            §џ           	   Index7001                            in    %       %    §џ       @    String containing GUID, 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'       STRING_TO_GUID                  GUID                             КбБV      џџџџ           STRING_TO_PVOID           ui32            §џ                 in    Q       Q    §џ       .    String containing the 32 bit pointer address       STRING_TO_PVOID               PVOID                             КбБV      џџџџ           STRING_TO_SYSTEMTIME           b   	                    16#31, 16#36, 16#30, 16#31, 	(* year 1601 *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* month *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* day *)
								16#2D(*-*), 16#30, 16#30(*00*),	(* hour *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* minute *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* second *)
								16#2E(*.*), 16#30, 16#30, 16#30(*000*), (* milliseconds *)
								16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` §џ           null delimiter    ts       *    ( wYear := 1601, wMonth := 1, wDay := 1 )    A               
   TIMESTRUCT ` §џ              n         ` §џ              bFmt          ` §џ              dwYears         ` §џ              dwDays         ` §џ           	   Index7001                            in               §џ       1    Input string, format: '2007-03-05-17:35:09.223'       STRING_TO_SYSTEMTIME                   
   TIMESTRUCT                             КбБV      џџџџ           STRING_TO_UINT64           ptr               ` §џ              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER ` §џ	                 in               §џ                 STRING_TO_UINT64                T_ULARGE_INTEGER                             КбБV      џџџџ           SYSTEMTIME_TO_DT           b   	                 ќ    16#44, 16#54, 16#23(*DT#*),
										16#31, 16#39, 16#37, 16#30(*1970*),
										16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#00      D      T      #      1      9      7      0      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0           ` §џ              str             ` §џ
              nSeconds         ` §џ           	   Index7001                            TIMESTR                   
   TIMESTRUCT   §џ                 SYSTEMTIME_TO_DT                                     КбБV      џџџџ           SYSTEMTIME_TO_FILETIME           tmp1                T_ULARGE_INTEGER ` §џ	              tmp2                T_ULARGE_INTEGER ` §џ
              pastDays         ` §џ              i         ` §џ              
   systemTime                   
   TIMESTRUCT   §џ                 SYSTEMTIME_TO_FILETIME             
   T_FILETIME                             КбБV      џџџџ           SYSTEMTIME_TO_STRING           b   	                 Љ   16#31, 16#36, 16#30, 16#31(*1601*),		(* year *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* month *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* day *)
										16#2D(*-*), 16#30, 16#30(*00*),				(* hour *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* minute *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* second *)
										16#2E(*.*), 16#30, 16#30, 16#30(*000*),		(* milliseconds *)
										16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` §џ           	   Index7001                            in                   
   TIMESTRUCT   §џ                 SYSTEMTIME_TO_STRING                                         КбБV      џџџџ        	   TC_CONFIG           fbAdsWrtCtl       e    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_RECONFIG, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )              	   T_AmsPort                                	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    SET            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       КбБV     џџџџ           TC_CPUUSAGE        	   fbAdsRead       5    ( PORT:= AMSPORT_R0_RTIME, IDXGRP:= 1, IDXOFFS:= 6 )              	   T_AmsPort                          ADSREAD ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ              USAGE           §џ          in %            КбБV     џџџџ        
   TC_RESTART           fbAdsWrtCtl       b    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )              	   T_AmsPort                                	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    RESTART            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       КбБV     џџџџ           TC_STOP           fbAdsWrtCtl       a    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_STOP, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )              	   T_AmsPort                                	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    STOP            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       КбБV     џџџџ           TC_SYSLATENCY        	   fbAdsRead       8    ( PORT := AMSPORT_R0_RTIME, IDXGRP := 1, IDXOFFS := 2 )              	   T_AmsPort                          ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              tmpData   	                      ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ              ACTUAL           §џ           Actual latency in Еs    MAXIMUM           §џ           Maximum latency in Еs             КбБV     џџџџ           TIME_TO_OTSTRUCT           tmpMilli         ` §џ                 TIN           §џ                 TIME_TO_OTSTRUCT                    OTSTRUCT                             КбБV      џџџџ           UDINT_TO_LREALEX               in           §џ                 UDINT_TO_LREALEX                                                  КбБV      џџџџ           UINT32X32TO64           Tmp1         ` §џ	              Tmp2         ` §џ
              Tmp3         ` §џ              Tmp4         ` §џ              DW1         ` §џ              DW2         ` §џ              DW3         ` §џ              DW4         ` §џ                 ui32a           §џ              ui32b           §џ                 UInt32x32To64                T_ULARGE_INTEGER                             КбБV      џџџџ           UINT64_TO_LREAL               in                T_ULARGE_INTEGER   §џ                 UINT64_TO_LREAL                                                  КбБV      џџџџ           UINT64_TO_STRING        	   remainder                T_ULARGE_INTEGER ` §џ              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER ` §џ	                 in                T_ULARGE_INTEGER   §џ                 UINT64_TO_STRING                                         КбБV      џџџџ           UINT64ADD64           bOV          ` §џ	                 ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ                 UInt64Add64                T_ULARGE_INTEGER                             КбБV      џџџџ           UINT64ADD64EX               augend                T_ULARGE_INTEGER   §џ              addend                T_ULARGE_INTEGER   §џ                 UInt64Add64Ex                T_ULARGE_INTEGER                       bOV            §џ       3    TRUE => arithmetic overflow, FALSE => no overflow         КбБV      џџџџ        	   UINT64AND               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64And                T_ULARGE_INTEGER                             КбБV      џџџџ           UINT64CMP64               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ	                 UInt64Cmp64                                     КбБV      џџџџ           UINT64DIV16EX        	   pDividend    	                            ` §џ              pResult    	                            ` §џ              rest         ` §џ                 dividend                T_ULARGE_INTEGER   §џ              divisor           §џ                 UInt64Div16Ex                T_ULARGE_INTEGER                    	   remainder                 T_ULARGE_INTEGER  §џ                   КбБV      џџџџ           UINT64DIV64        	   remainder                T_ULARGE_INTEGER ` §џ	                 dividend                T_ULARGE_INTEGER   §џ              divisor                T_ULARGE_INTEGER   §џ                 UInt64Div64                T_ULARGE_INTEGER                             КбБV      џџџџ           UINT64DIV64EX           msBit       /    ( dwHighPart := 16#80000000, 	dwLowPart := 0 )               T_ULARGE_INTEGER ` §џ              bitShift         ` §џ              cmp         ` §џ              in   	                      T_ULARGE_INTEGER         ` §џ              out   	                      T_ULARGE_INTEGER         ` §џ           
   cbReturned         ` §џ           	   Index7001                            dividend                T_ULARGE_INTEGER   §џ              divisor                T_ULARGE_INTEGER   §џ                 UInt64Div64Ex                T_ULARGE_INTEGER                    	   remainder                 T_ULARGE_INTEGER  §џ                   КбБV      џџџџ           UINT64ISZERO               ui64                T_ULARGE_INTEGER   §џ                 UInt64isZero                                      КбБV      џџџџ           UINT64LIMIT               ui64min                T_ULARGE_INTEGER   §џ              ui64in                T_ULARGE_INTEGER   §џ              ui64max                T_ULARGE_INTEGER   §џ                 UInt64Limit                T_ULARGE_INTEGER                             КбБV      џџџџ        	   UINT64MAX               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64Max                T_ULARGE_INTEGER                             КбБV      џџџџ        	   UINT64MIN               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64Min                T_ULARGE_INTEGER                             КбБV      џџџџ           UINT64MOD64               dividend                T_ULARGE_INTEGER   §џ              divisor                T_ULARGE_INTEGER   §џ                 UInt64Mod64                T_ULARGE_INTEGER                             КбБV      џџџџ           UINT64MUL64           bOV          ` §џ	                 multiplicand                T_ULARGE_INTEGER   §џ           
   multiplier                T_ULARGE_INTEGER   §џ                 UInt64Mul64                T_ULARGE_INTEGER                             КбБV      џџџџ           UINT64MUL64EX           bCarry          ` §џ           	   bSumCarry          ` §џ              n         ` §џ              m         ` §џ                 multiplicand                T_ULARGE_INTEGER   §џ           
   multiplier                T_ULARGE_INTEGER   §џ                 UInt64Mul64Ex                T_ULARGE_INTEGER                       bOV            §џ       3    TRUE => Arithmetic overflow, FALSE => no overflow         КбБV      џџџџ        	   UINT64NOT               ui64                T_ULARGE_INTEGER   §џ              	   UInt64Not                T_ULARGE_INTEGER                             КбБV      џџџџ           UINT64OR               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ                 UInt64Or                T_ULARGE_INTEGER                             КбБV      џџџџ        	   UINT64ROL           bMSB          ` §џ	                 ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Rol                T_ULARGE_INTEGER                             КбБV      џџџџ        	   UINT64ROR           bLSB          ` §џ	                 ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Ror                T_ULARGE_INTEGER                             КбБV      џџџџ        	   UINT64SHL               ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Shl                T_ULARGE_INTEGER                             КбБV      џџџџ        	   UINT64SHR               ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Shr                T_ULARGE_INTEGER                             КбБV      џџџџ           UINT64SUB64               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ                 UInt64Sub64                T_ULARGE_INTEGER                             КбБV      џџџџ        	   UINT64XOR               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64Xor                T_ULARGE_INTEGER                             КбБV      џџџџ           UINT_TO_LREALEX               in           §џ                 UINT_TO_LREALEX                                                  КбБV      џџџџ           ULARGE_INTEGER            
   dwHighPart           §џ           	   dwLowPart           §џ                 ULARGE_INTEGER                T_ULARGE_INTEGER                             КбБV      џџџџ           ULARGE_TO_LARGE               in                T_ULARGE_INTEGER   §џ                 ULARGE_TO_LARGE                T_LARGE_INTEGER                             КбБV      џџџџ           USINT_TO_LREALEX               in           §џ                 USINT_TO_LREALEX                                                  КбБV      џџџџ           WORD_TO_BINSTR           bits   	                          §џ       6    Array of ASCII characters (inclusive null delimiter)    iSig            §џ           Number of significant bits    iPad            §џ           Number of padding zeros    i            §џ           	   Index7001                            in           §џ           WORD input value 
   iPrecision           §џ       ,    Precision. Number of digits to be printed.       WORD_TO_BINSTR               T_MaxString                             КбБV      џџџџ           WORD_TO_DECSTR           dec   	                          §џ       6    Array of ASCII characters (inclusive null delimiter)    iSig            §џ           Number of significant decades    iPad            §џ           Number of padding zeros    i            §џ              digit            §џ           	   Index7001                            in           §џ           WORD input value 
   iPrecision           §џ       ,    Precision. Number of digits to be printed.       WORD_TO_DECSTR               T_MaxString                             КбБV      џџџџ           WORD_TO_FIX16               in           §џ           16 bit fixed point number    n                           §џ           number of fractional bits       WORD_TO_FIX16                 T_FIX16                             КбБV      џџџџ           WORD_TO_HEXSTR           hex   	                          §џ       6    array of ASCII characters (inclusive null delimiter)    iSig            §џ           number of significant nibbles    iPad            §џ           number of padding zeros    i            §џ           	   Index7001                            in           §џ           WORD input value 
   iPrecision           §џ       ,    Precision. Number of digits to be printed.    bLoCase            §џ	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       WORD_TO_HEXSTR               T_MaxString                             КбБV      џџџџ           WORD_TO_LREALEX               in           §џ                 WORD_TO_LREALEX                                                  КбБV      џџџџ           WORD_TO_OCTSTR           oct   	                          §џ       6    Array of ASCII characters (inclusive null delimiter)    iSig            §џ           Number of significant nibbles    iPad            §џ           Number of padding zeros    i            §џ           	   Index7001                            in           §џ           WORD input value 
   iPrecision           §џ       ,    Precision. Number of digits to be printed.       WORD_TO_OCTSTR               T_MaxString                             КбБV      џџџџ           WRITEPERSISTENTDATA           fbAdsWrtCtl       H    ( ADSSTATE := ADSSTATE_SAVECFG, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ       l    Contains the ADS port number of the PLC run-time system whose persistent data is to be stored (801, 811...)   START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ
              ERR            §џ              ERRID           §џ                       КбБV     џџџџ    R    @                                                                                          F_CRC16           Cnt            ^           ёїхђїшъ сшђют       pData                 ^           ѓърчрђхыќ эр сыюъ фрээћѕ    Size           ^           №рчьх№ сыюър  фрээћѕ       F_CRC16                                     lS]  @    џџџџ           FB_GET_CO2_MH_Z19B        
   SendBuffer   	                          d              ReceiveBuffer   	                          d              Clear               ClearComBuffer    d              state            d              tmcheck                    TON    d              w_CO2            d                     co2            d              done            d                       UЭ{]  @    џџџџ           FB_GET_CURRENT     	      Clear               ClearComBuffer    b              crctest            b           
   arrReceive   	                    0,0,0,0,0,0,0,0,0,0,0,0                                                                                           b              arrSend   	                    0,0,0,0,0,0                                                 b              state            b              dw_DATA            b              tmcheck                    TON    b              CRC_calc            b              CRC_get           b                 byte1           b              byte2           b              byte3           b                 current1            b
              current2            b              current3            b              done            b                       lS]  @    џџџџ           FB_GET_ENERGY           Clear               ClearComBuffer    _              crctest            _           
   arrReceive   	                ,    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0                                                                                                                                                                 _              arrSend   	                ,    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0                                                                                                                                                                 _              state            _              dw_DATA            _              E_active           0    _           
   E_reactive           0    _              tmcheck                    TON    _              CRC_calc            _              CRC_get           _                 byte1           _              byte2           _              byte3           _                 energy            _	              done            _
                       lS]  @    џџџџ           FB_GET_POWER     	      Clear               ClearComBuffer    c              crctest            c           
   arrReceive   	                    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0                                                                                                                c              arrSend   	                    0,0,0,0,0,0                                                 c              state            c              dw_DATA            c              tmcheck                    TON    c              CRC_calc            c              CRC_get           c                 byte1           c              byte2           c              byte3           c                 power_total            c	              power1            c
              power2            c              power3            c              done            c                       lS]  @    џџџџ           FB_GET_SUPPLY     	      Clear               ClearComBuffer    a              crctest            a           
   arrReceive   	                    0,0,0,0,0,0,0,0,0,0,0,0                                                                                           a              arrSend   	                    0,0,0,0,0,0                                                 a              state            a              dw_DATA            a              tmcheck                    TON    a              CRC_calc            a              CRC_get           a                 byte1           a              byte2           a              byte3           a                 supply1            a
              supply2            a              supply3            a              done            a                       lS]  @    џџџџ           FB_MQTT_CONTROLLER_V10           iState            А              fbSocketConnect                            FB_SocketConnect    А              fbSocketClose        
                FB_SocketClose    А              fbMqttTelegramConnect                FB_MqttTelegram_Connect_V10    А               fbMqttTelegramPingReq                FB_MqttTelegram_PingReq_V10    А!           
   fbMqttSend                FB_Mqtt_Send_V10    А"              fbMqttReceive                FB_Mqtt_Receive_V10    А#           	   C_STARTUP           А&           	   C_CONNECT    d      А'              C_CONNECT_WAIT    n      А(              C_CLOSE    Ш      А)              C_CLOSE_WAIT    в      А*              C_IDLE    є     А+                 bActive            А              sMqttClientId               А              sMqttUserId               А              sMqttPassword               А              sMqttBrokerIP               А              nMqttBrokerPort    [     А                 bBusy            А                 stMqttSettings                                     ST_MqttSettings  А                   lS]  @    џџџџ           FB_MQTT_DECODELENGTH_V10           index            Д              diMultiplier            Д              dwValue            Д                 stMqttTelegram                ST_MqttTelegram   Д                 dwLength           Д
              bAmount           Д                       lS]  @    џџџџ           FB_MQTT_ENCODELENGTH_V10           dwWorkLength            Е              dwCopyLength            Е                 dwLength           Е                 bLength1           Е
              bLength2           Е              bLength3           Е              bLength4           Е              bAmount           Е                       lS]  @    џџџџ           FB_MQTT_PUBLISH_V10           bFirstPublishDone             Џ              bMustPublish             Џ           
   sLastValue                Џ              iState            Џ              iLengthTopic            Џ              iLengthValue            Џ              wTopicLength            Џ              stMqttTelegram                ST_MqttTelegram    Џ              fbMqttEncodeLength                      FB_Mqtt_EncodeLength_V10    Џ              bLength1            Џ              bLength2            Џ              bLength3            Џ              bLength4            Џ              bLengthAmount            Џ           	   C_STARTUP           Џ"              C_BUILD_TELEGRAM    d      Џ#              C_SEND_WAIT    n      Џ$              C_IDLE    є     Џ%                 sTopic               Џ              sValue               Џ              bRetain           Џ	                 bBusy            Џ                 stMqttSettings                                     ST_MqttSettings  Џ                   lS]  @    џџџџ           FB_MQTT_RECEIVE_V10           fbSocketReceive                           FB_SocketReceive    Ж              fbMqttDecodeLength                    FB_Mqtt_DecodeLength_V10    Ж              stReceiveBuffer                ST_MqttTelegram    Ж              iState            Ж              iLengthPosition            Ж              index            Ж              dwDataLength            Ж              wTopicLength            Ж              dwValueLength            Ж           	   C_STARTUP           Ж              C_RECEIVE_HEADER    d      Ж              C_RECEIVE_HEADER_WAIT    n      Ж              C_RECEIVE_LENGTH    x      Ж              C_RECEIVE_LENGTH_WAIT          Ж              C_RECEIVE_DATA    Ш      Ж              C_RECEIVE_DATA_WAIT    в      Ж              C_IDLE    є     Ж                      bBusy            Ж                 stMqttSettings                                     ST_MqttSettings  Ж
                   lS]  @    џџџџ           FB_MQTT_SEND_V10           fbSocketSend                          FB_SocketSend    З              tPingReq            З              iState            З              stSendTelegram                ST_MqttTelegram    З           	   C_STARTUP           З              C_SEND    d      З              C_SEND_WAIT    n      З              C_IDLE    є     З                     bBusy            З                 stMqttSettings                                     ST_MqttSettings  З
                   lS]  @    џџџџ           FB_MQTT_SUBSCRIBE_V10           iState            Б              bSubscribeSent             Б              bSubAckReceived             Б              iTopicLength            Б              wTopicLength            Б              stMqttTelegram                ST_MqttTelegram    Б              fbMqttEncodeLength                      FB_Mqtt_EncodeLength_V10    Б              bLength1            Б              bLength2            Б              bLength3            Б              bLength4            Б              bLengthAmount            Б              wPackageIdentifier            Б               wTelegramPackageIdentifier            Б!           	   C_STARTUP           Б$              C_BUILD_TELEGRAM    d      Б%              C_SEND_WAIT    n      Б&              C_CHECK_TELEGRAM    Ш      Б'              C_IDLE    є     Б(                 sTopic               Б              bAccept            Б       7    When false, subscribe but do not set bNewValue output       sValue               Б           	   bNewValue            Б              bBusy            Б                 stMqttSettings                                     ST_MqttSettings  Б                   lS]  @    џџџџ           FB_MQTTTELEGRAM_CONNECT_V10           iState            В
              idLength            В              iuLength            В              ipLength            В              ipos            В              stMqttTelegram                ST_MqttTelegram    В              fbMqttEncodeLength                      FB_Mqtt_EncodeLength_V10    В              bLength1            В              bLength2            В              bLength3            В              bLength4            В              bLengthAmount            В           	   C_STARTUP           В              C_BUILD_CONNECT    d      В              C_SEND_WAIT    n      В              C_IDLE    є     В                         stMqttSettings                                     ST_MqttSettings  В                   lS]  @    џџџџ           FB_MQTTTELEGRAM_PINGREQ_V10           iState            Г
           	   bMustSend             Г              bPingReqSent             Г              stMqttTelegram                ST_MqttTelegram    Г           	   C_STARTUP           Г              C_BUILD_PING    d      Г              C_SEND_WAIT    n      Г              C_IDLE    є     Г                         stMqttSettings                                     ST_MqttSettings  Г                   lS]  @    џџџџ           FC_MQTT_CLEARTELEGRAM_V10                   FC_Mqtt_ClearTelegram_V10                                stMqttTelegram                 ST_MqttTelegram  И              stMqttSettings                                     ST_MqttSettings  И                   lS]  @    џџџџ           FC_MQTT_COPYTELEGRAM_V10                   FC_Mqtt_CopyTelegram_V10                                stMqttSrcTelegram                 ST_MqttTelegram  Й              stMqttDestTelegram                 ST_MqttTelegram  Й              stMqttSettings                                     ST_MqttSettings  Й	                   lS]  @    џџџџ           MAIN           INITVAR             #                                lS]  @    џџџџ           MQTT     4      FB_Mqtt_Controller                                   FB_Mqtt_Controller_V10    P              stMqttSettings                                    ST_MqttSettings    P              bMqttControllerBusy             P              FB_Mqtt_Publish1                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish2                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish3                                     FB_Mqtt_Publish_V10    P	              FB_Mqtt_Publish4                                     FB_Mqtt_Publish_V10    P
              FB_Mqtt_Publish5                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish6                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish7                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish8                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish9                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish10                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish11                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish12                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish13                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish14                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish15                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish16                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish17                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish18                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish19                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish20                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish21                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish22                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish23                                     FB_Mqtt_Publish_V10    P              FB_Mqtt_Publish24                                     FB_Mqtt_Publish_V10    P              bPublishBusy1             P               bPublishBusy2             P!              bPublishBusy3             P"              bPublishBusy4             P#              bPublishBusy5             P$              bPublishBusy6             P%              bPublishBusy7             P&              bPublishBusy8             P'              bPublishBusy9             P(              bPublishBusy10             P)              bPublishBusy11             P*              bPublishBusy12             P+              bPublishBusy13             P,              bPublishBusy14             P-              bPublishBusy15             P.              bPublishBusy16             P/              bPublishBusy17             P0              bPublishBusy18             P1              bPublishBusy19             P2              bPublishBusy20             P3              bPublishBusy21             P4              bPublishBusy22             P5              bPublishBusy23             P6              bPublishBusy24             P7              START             P8                               lS]  @    џџџџ           POLIV           Period_pomp_garden_delay                  E    Чрфх№цър тъыўїхэшџ эрёюёр яюёых ёшуэрыр эр юђъ№ћђшх ъырярэр=15 ёхъ.    tTimerValue_zapad                          Timer_poliv_zapad                    TON                  Timer_poliv_zapadQ                           tTimerValue_terrasa            	              Timer_poliv_terrasa                    TON    
              Timer_poliv_terrasaQ                           tTimerValue_south                          Timer_poliv_south                    TON                  Timer_poliv_southQ                           TON_pomp_garden                    TON                  pomp_garden_start                           tTimerValue                                           lS]  @    џџџџ        	   RS485READ     P   
   password_1   	                   6(1)                    *    яр№юыќ ъ ьх№ъѓ№шџь, яю ѓьюыїрэшў 6 хфшэші   crctest                       
   arrReceive   	                                       arrSend   	                                       MBdata_kitchen   	                         
           	   FtrigBusy                 F_TRIG                  timeoutvalue    є             9    timeout while waiting for an answer of the modbus slave    state                          busy                           LastErrorstate                          LastModbusError        
                ST_ModbusErrorDiagnostics                  CounterError                          CounterSuccess                          Timer1                    TON                  Timer1Q                        	   Timer_day                    TON               
   Timer_dayQ                           tmCheck                    TON                  get_co2_mh_z19b_1floor                      FB_GET_CO2_MH_Z19B                  get_co2_mh_z19b_2floor                      FB_GET_CO2_MH_Z19B               
   get_supply                              FB_GET_SUPPLY                  get_current                              FB_GET_CURRENT               	   get_power                               FB_GET_POWER                  get_energy_E_T1                              FB_GET_ENERGY                  get_energy_E_T2                              FB_GET_ENERGY                   get_energy_M1T1                              FB_GET_ENERGY    !              get_energy_M1T2                              FB_GET_ENERGY    "              get_energy_M2T1                              FB_GET_ENERGY    #              get_energy_M2T2                              FB_GET_ENERGY    $              get_energy_M3T1                              FB_GET_ENERGY    %              get_energy_M3T2                              FB_GET_ENERGY    &              get_energy_M4T1                              FB_GET_ENERGY    '              get_energy_M4T2                              FB_GET_ENERGY    (              get_energy_M5T1                              FB_GET_ENERGY    )              get_energy_M5T2                              FB_GET_ENERGY    *              get_energy_M6T1                              FB_GET_ENERGY    +              get_energy_M6T2                              FB_GET_ENERGY    ,              get_energy_M7T1                              FB_GET_ENERGY    -              get_energy_M7T2                              FB_GET_ENERGY    .              get_energy_M8T1                              FB_GET_ENERGY    /              get_energy_M8T2                              FB_GET_ENERGY    0              get_energy_M9T1                              FB_GET_ENERGY    1              get_energy_M9T2                              FB_GET_ENERGY    2              get_energy_M10T1                              FB_GET_ENERGY    3              get_energy_M10T2                              FB_GET_ENERGY    4              get_energy_M11T1                              FB_GET_ENERGY    5              get_energy_M11T2                              FB_GET_ENERGY    6              get_energy_M12T1                              FB_GET_ENERGY    7              get_energy_M12T2                              FB_GET_ENERGY    8              get_co2_mh_z19b_1floor_done             :              get_co2_mh_z19b_2floor_done             ;              get_supply_done             <              get_current_done             =              get_power_done             >              get_energy_E_T1_done             ?              get_energy_E_T2_done             @              get_energy_M1T1_done             A              get_energy_M1T2_done             B              get_energy_M2T1_done             C              get_energy_M2T2_done             D              get_energy_M3T1_done             E              get_energy_M3T2_done             F              get_energy_M4T1_done             G              get_energy_M4T2_done             H              get_energy_M5T1_done             I              get_energy_M5T2_done             J              get_energy_M6T1_done             K              get_energy_M6T2_done             L              get_energy_M7T1_done             M              get_energy_M7T2_done             N              get_energy_M8T1_done             O              get_energy_M8T2_done             P              get_energy_M9T1_done             Q              get_energy_M9T2_done             R              get_energy_M10T1_done             S              get_energy_M10T2_done             T              get_energy_M11T1_done             U              get_energy_M11T2_done             V              get_energy_M12T1_done             W              get_energy_M12T2_done             X                               lS]  @    џџџџ           SECURITY           TRIG_PIR_terrasa                 F_TRIG                  TRIG_PIR_zapad                 F_TRIG                  TRIG_PIR_vostok                 F_TRIG                  TRIG_PIR_sport                 F_TRIG                  TRIG_GERKON_drovnik                 F_TRIG                  TRIG_sensor_smoke_1floor                 F_TRIG                  trig_mem_terrasa             
              trig_mem_zapad                           trig_mem_vostok                           trig_mem_sport                           trig_mem_drovnik                           trig_mem_sensor_smoke_1floor                                            
Ђk]  @    џџџџ           SENSORS           Period_sensors_read           Q       U    зрёђюђр я№шётюхэшџ чэрїхэшщ рэрыюуютћѕ ђхьях№рђѓ№эћѕ фрђїшъют ё ьюфѓыхщ KL, ёхъѓэфћ    Timer                    TON    Q              TimerQ             Q              tTimerValue            Q                               lS]  @    џџџџ           THERMOCONTROL        
   period_sec    x       ]       #    зрёђюђр №рсюђћ ђх№ьюёђрђр, ёхъѓэфћ
   gisterezis    ЭЬL>   0.2    ]       '   Ушёђх№хчшё ђх№ьюёђрђр, у№рфѓёћ іхыќёшџ    Timer1                    TON    ]              Timer1Q             ]              state            ]              tTimerValue            ]                               lS]  @    џџџџ           VENTCONTROL           Temperature_max_to_heat      A   17           ]    Ьръёшьрыќэрџ ђхьях№рђѓ№р эр№ѓцэхую тючфѓѕр я№ш ъюђю№ющ №рч№хјхэю тъыўїрђќ тючфѓѕюэру№хтрђхыќ
   gisterezis    ЭЬL>   0.2           F    Ушёђх№хчшё  №рч№хјхэшџ тъыўїхэшџ тючфѓѕюэру№хтрђхыџ, у№рфѓёћ іхыќёшџ    vent_valve_opened                    ;   Яюёых ях№хчру№ѓчъш ЯЫЪ ёїшђрхь їђю я№шђюїэћщ ъырярэ чръ№ћђ    Period_start_delay    <              X    Т№хьџ чрфх№цъш тъыўїхэшџ тхэђшыџђю№р яюёых ёшуэрыр эр юђъ№ћђшх я№шђюїэюую ъырярэр, ёхъ    Period_stop_delay    <                  Т№хьџ чрфх№цъш юђъыўїхэшџ тхэђшыџђю№р яюёых ёшуэрыр эр юёђрэют тхэђшыџішш - фыџ юёђѓцхэшџ №рчюу№хђћѕ внЭют тючфѓѕюэру№хтрђхыџ, ёхъ    Timer1                    TON           T    врщьх№ чрфх№цъш тъыўїхэшџ тхэђшыџђю№р яюёых ёшуэрыр эр юђъ№ћђшх я№шђюїэюую ъырярэр    Timer2                    TON    	           врщьх№ чрфх№цъш юђъыўїхэшџ тхэђшыџђю№р яюёых ёшуэрыр эр юёђрэют тхэђшыџішш - фыџ юёђѓцхэшџ №рчюу№хђћѕ внЭют тючфѓѕюэру№хтрђхыџ    Timer1Q             
              Timer2Q                           tTimerValue1                          tTimerValue2                                           lS]  @    џџџџ        	   VENTPOWER        
   Vent_power      №A   30    '        @    Яюёых ях№хчру№ѓчъш ЯЫЪ чрфрИь эрїрыќэѓў ьюљэюёђќ ѓёыютэћѕ 30%     CO2_old      ЭC   410    '        d    Яюёых ях№хчру№ѓчъш ЯЫЪ чрфрИь я№шэѓфшђхыќэю яюёыхфэхх чэрїхэшх CO2 = 410 (рсёюыўђэю ётхцшщ тючфѓѕ)    Period_vent_switch    <       '        T    зрёђюђр ях№хъыўїхэшџ №хцшьют №рсюђћ тхэђшыџђю№р яю яюърчрэшџь фрђїшъют CO2, ёхъѓэфћ   Timer1                    TON    '               Timer1Q             '               count            '               CO2_max             ' 	              tTimerValue            ' 
                               lS]  @    џџџџ            
 е  * [  '      ь  єџџџ]  Ў  Џ  М  Б  В  Г  Д  Е  Ж  З  И  Й  К  Л  А  Ѓ  Є       ћџџџ  \  _  ^  a  b  c       §џџџ  P    #   Q  d  ( Рќ     K   Юќ    K   мќ    K   ъќ    K   џќ                §        +     КЛlocalhost   дpLv   аЧ        АЄк№пиЌ    ЧPе џљ§џ  Ч   	   ФЧ    џџ Ч    Чт№@ ре *^Мw           Sт№@                         .пuuў  ж >]Мwт№@ >]Мw            р<ж       т№@          т№@  и D№   єж D№ оdџџџџ з §-№     ,   ,                                                        K        @   lS]сў /*BECKCONFI3*/
        !Lе @   @           3               2   Standard            	Ђk]     Ц               VAR_GLOBAL
END_VAR
                                                                                  "   , AN             Standard2         MAINџџџџ               Ђk]                 $ћџџџ, 8д                                  Standard 7ц\	7ц\                                       	Ђk]     TI :t#ms           VAR_CONFIG
END_VAR
                                                                                   '              ,   p           Global_Variables lS]	lS]        Ь            џ  
VAR_GLOBAL


	Clear					: ClearComBuffer;
	MB						: ModbusRtuMaster_KL6x22B;
	TxBufferCom1			: ComBuffer;
	RxBufferCom1			: ComBuffer;
	SerialLineControlCom1		: SerialLineControl;
	ReceiveDataCom1		: ReceiveData;
	SendDataCom1			: SendData;
	Merc_address			: BYTE:=97;
	Sensor_CO2_high	 		: BYTE;	(*бђр№јшщ срщђ фрђїшър MH-Z19B*)
	Sensor_CO2_low 			: BYTE;	(*Ьырфјшщ срщђ фрђїшър MH-Z19B*)
	iobroker					: iobroker_Struct;
	MB_vars					: stMB;
	Mercury					: stMercury;


	HW_temp_first_floor					AT %IW40:WORD;	(* Фрђїшъ ђхьях№рђѓ№ћ 1 §ђрц *)
	HW_temp_second_floor				AT %IW42:WORD;	(* Фрђїшъ ђхьях№рђѓ№ћ 2 §ђрц *)
	HW_temp_underfloor					AT %IW44:WORD;	(* Фрђїшъ ђхьях№рђѓ№ћ яюфяюы 1 §ђрц *)
	HW_temp_sport						AT %IW46:WORD;	(* Фрђїшъ ђхьях№рђѓ№ћ ёяю№ђчры *)

	HW_temp_sport_underfloor				AT %IW48:WORD;	(* Фрђїшъ ђхьях№рђѓ№ћ яюфяюы ёяю№ђчры *)
	HW_temp_sauna						AT %IW50:WORD;	(* Фрђїшъ ђхьях№рђѓ№ћ ёрѓэр*)
	HW_temp_street						AT %IW52:WORD;	(* Фрђїшъ ђхьях№рђѓ№ћ ѓышір *)
	HW_temp_vent						AT %IW54:WORD;	(* Фрђїшъ ђхьях№рђѓ№ћ я№шђюър тхэђшыџішш *)

	HW_PIR_terrasa						AT %IX56.0:BOOL;		(*PIR фрђїшъ ђх№№рёр *)
	HW_PIR_zapad						AT %IX56.1:BOOL;		(*PIR фрђїшъ чрярф *)
	HW_PIR_vostok						AT %IX56.2:BOOL;		(*PIR фрђїшъ тюёђюъ *)
	HW_PIR_sport						AT %IX56.3:BOOL;		(*PIR фрђїшъ ёяю№ђчры *)

	HW_GERKON_drovnik					AT %IX56.4:BOOL;		(*Ух№ъюэ ф№ютэшъ *)
	HW_GERKON_door					AT %IX56.5:BOOL;		(*Ух№ъюэ фтх№ќ *)
	HW_sensor_smoke_1floor				AT %IX56.6:BOOL;		(*Фрђїшъ фћьр 1 §ђрц *)
	HW_sensor_smoke_2floor				AT %IX56.7:BOOL;		(*Фрђїшъ фћьр 2 §ђрц *)

	HW_button_light_terrasa				AT %IX57.0:BOOL;		(* Ъэюяър я№юцхъђю№ ђх№№рёр  *)
	HW_button_security					AT %IX57.1:BOOL;		(* Ъэюяър юѕ№рэр  *)
	HW_button_vorota						AT %IX57.2:BOOL;		(* Ъэюяър юђъ№ћђшџ тю№юђ  *)
	HW_button_kalitka					AT %IX57.3:BOOL;		(* Ъэюяър юђъ№ћђшџ ърышђъш  *)

	HW_button_poliv_terrasa				AT %IX57.4:BOOL;		(* Ъэюяър яюышт ђх№№рёр 2 їрёр  *)
	HW_button_poliv_zapad				AT %IX57.5:BOOL;		(* Ъэюяър яюышт чрярф  2 їрёр  *)
	HW_button_poliv_south				AT %IX57.6:BOOL;		(* Ъэюяър яюышт ўу 2 їрёр  *)
(*	HW_reserved						AT %IX57.7:BOOL;	*)	(*   *)

	HW_sensor_supply					AT %IX58.0:BOOL;		(* Фрђїшъ эря№џцхэшх  *)


	HW_heat_first_floor					AT %QX0.0:BOOL;		(* Юђюяыхэшх 1 §ђрц *)
	HW_heat_second_floor				AT %QX0.1:BOOL;		(* Юђюяыхэшх 2 §ђрц *)
	HW_heat_sport						AT %QX0.2:BOOL;		(* Юђюяыхэшх ёяю№ђчры *)
	HW_heat_underfloor					AT %QX0.3:BOOL;		(* Юђюяыхэшх яюфяюы *)
	HW_heat_sauna						AT %QX0.4:BOOL;		(* Юђюяыхэшх ёрѓэр *)
	HW_heat_bathroom					AT %QX0.5:BOOL;		(* Юђюяыхэшх фѓјхтрџ *)
	HW_heat_pipe						AT %QX0.6:BOOL;		(* Юђюяыхэшх тюфюя№ютюф *)
	HW_vent_underfloor					AT %QX0.7:BOOL;		(* Тхэђшыџішџ яюфяюыр *)

	HW_vorota							AT %QX1.0:BOOL;		(* Тю№юђр *)
	HW_kalitka							AT %QX1.1:BOOL;		(* Ърышђър *)
	HW_pomp_house						AT %QX1.2:BOOL;		(* Эрёюё тюфюёэрсцхэшџ фюьр *)
	HW_pomp_garden					AT %QX1.3:BOOL;		(* Эрёюё яюыштр *)
	HW_light_garden						AT %QX1.4:BOOL;		(* Я№юцхъђю№ фтю№ *)
	HW_light_terrasa						AT %QX1.5:BOOL;		(* бтхђ ђх№№рёр *)
	HW_switch_security					AT %QX1.6:BOOL;		(* ахых юѕ№рэр *)
	HW_switch_RS485					AT %QX1.7:BOOL:=TRUE;		(* RS485 line *)


	HW_vent_valve_input					AT %QX2.0:BOOL;		(* Ъырярэ я№шђюїэющ тхэђшыџішш *)
	HW_vent_valve_output					AT %QX2.1:BOOL;		(* Ъырярэ тћђџцэющ тхэђшыџішш *)
	HW_trans_power						AT %QX2.2:BOOL;		(*Яюфрїр ђюър эр ђ№рэёєю№ьрђю№ ш №хых внЭ-р *)
	HW_vent_in_heat						AT %QX2.3:BOOL;		(* Яюфюу№хт я№шђюър - внЭ *)
	HW_vent_in_heat_level				AT %QX2.4:BOOL;		(* Яюфюу№хт я№шђюър эюїэющ №хцшь   -5 Ъ внЭ *)
	HW_vent_in_trans_105_130				AT %QX2.5:BOOL:=FALSE;  (* Эря№џцхэшх 110 шыш 130 Т *)
	HW_vent_in_trans_160_220				AT %QX2.6:BOOL:=FALSE;  (* Эря№џцхэшх 160 шыш 220 Т *)
	HW_vent_in_trans_LO_HI				AT %QX2.7:BOOL:=FALSE;  (* Эря№џцхэшх 110/130  шыш 160/220 Т *)

	HW_poliv_terrasa						AT %QX3.0:BOOL;		(* яюышт ђх№№рёр  *)
	HW_poliv_zapad						AT %QX3.1:BOOL;		(* яюышт чрярф   *)
	HW_poliv_south						AT %QX3.2:BOOL;		(* яюышт ўу   *)


END_VAR


                                                                                               '             ,               Global_Variables_persistent Ђk]	Ђk]    , , , ,           VAR_GLOBAL PERSISTENT

	(*USER VARIABLES NEED TO BE ATTACHED TO %Q TO ENABLE SAVE IT IN NOVRAM, FOR CX ONLY *)

	Target_CO2_mem					AT %Q*:		INT;

	First_floor_temp_target_mem		AT %Q*:		INT;
	Second_floor_temp_target_mem		AT %Q*:		INT;
	Sport_temp_target_mem			AT %Q*:		INT;
	Sauna_temp_target_mem			AT %Q*:		INT;
	Underfloor_temp_target_mem		AT %Q*:		INT;
	Underfloor_humidity_target_mem	AT %Q*:		INT;

	Pomp_house_mem				AT %Q*:		BOOL;
	Pomp_garden_mem				AT %Q*:		BOOL;

	Light_garden_mem				AT %Q*:		BOOL;

	Vent_mem						AT %Q*:		BOOL;
	Vent_heat_mem					AT %Q*:		INT;
	Vent_heat_level_mem				AT %Q*:		BOOL;


END_VAR


                                                                                               '           [  ,   &           TwinCAT_Configuration lS]	Ђk][     §џЧ          Ќ  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.MB.InData AT %IB60 : MB_KL6inData22B;
	.MB.OutData AT %QB32 : MB_KL6outData22B;
	.Target_CO2_mem AT %QB6 : INT;
	.First_floor_temp_target_mem AT %QB56 : INT;
	.Second_floor_temp_target_mem AT %QB60 : INT;
	.Sport_temp_target_mem AT %QB62 : INT;
	.Sauna_temp_target_mem AT %QB72 : INT;
	.Underfloor_temp_target_mem AT %QB64 : INT;
	.Underfloor_humidity_target_mem AT %QB76 : INT;
	.Pomp_house_mem AT %QX68.0 : BOOL;
	.Pomp_garden_mem AT %QX74.0 : BOOL;
	.Light_garden_mem AT %QX66.1 : BOOL;
	.Vent_mem AT %QX28.0 : BOOL;
	.Vent_heat_mem AT %QB8 : INT;
	.Vent_heat_level_mem AT %QX28.3 : BOOL;
END_VAR                                                                                               '           ь  ,   Ј           Variable_ConfigurationlS]	lS]ь       Ь            i   
VAR_CONFIG
	MB.InData AT %IB12 : MB_KL6inData22B;
	MB.OutData AT %QB12 : MB_KL6outData22B;

END_VAR                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   Ў  , A  N            iobroker_Struct lS]	lS]                     W	  TYPE iobroker_Struct  :
STRUCT
	Vent_status				: 	INT;
	Valve_status				: 	INT;
	First_floor_temp 			:	REAL;
	First_floor_temp_target 		:	INT;
	First_floor_hum 			:	REAL;
	First_floor_CO2			:	REAL;
	Kitchen_room_temp		:	REAL;
	Kitchen_room_hum		:	REAL;
	Second_floor_temp 		:	REAL;
	Second_floor_temp_target 	:	INT;
	Second_floor_CO2 		:	REAL;
	Sport_temp	 			:	REAL;
	Sport_temp_target			:	INT;
	Sauna_temp	 			:	REAL;
	Sauna_temp_target		:	INT;
	Underfloor_temp			:	REAL;
	Underfloor_temp_target	:	INT;
	Underfloor_humidity		:	REAL;
	Underfloor_humidity_target	:	INT;
	Sport_underfloor_temp		:	REAL;
	Street_temp				:	REAL;
	Vent_temp				:	REAL;
	PIR_terrasa				:	BOOL:=TRUE;
	PIR_zapad				:	BOOL:=TRUE;
	PIR_vostok				:	BOOL:=TRUE;
	PIR_sport				:	BOOL:=TRUE;
	GERKON_drovnik			:	BOOL:=TRUE;
	Vent_input_level			:	INT;  (*  0-220 V  *)
	Vent_output_level			:	INT; (*0-100%*)
	Temp_vent_in			:	REAL;
	Vent_valve_status			:	INT;
	Security_status			:	BOOL;
	Target_CO2				:	INT;
	Vent						:	BOOL;
	Vent_underfloor			:	BOOL;
	Vent_out					:	BOOL;
	Vent_heat				:	INT;
	Vent_heat_level			:	BOOL;
	Vorota					:	BOOL;
	Vorota_open				:	BOOL;
	Kalitka					:	BOOL;
	Smoke					:	BOOL;
	Sensor_supply			:	BOOL;
	Pomp_house				:	BOOL;
	Pomp_garden			:	BOOL;
	Light_garden				:	BOOL;
	Poliv_zapad				:	BOOL;
	Poliv_terrasa				:	BOOL;
	Poliv_south				:	BOOL;
	Poliv_zapad_minutes		:	INT;
	Poliv_terrasa_minutes		:	INT;
	Poliv_south_minutes		:	INT;
	Uv1						:	REAL;
	Uv2						:	REAL;
	Uv3						:	REAL;
	Pw1						:	REAL;
	Pw2						:	REAL;
	Pw3						:	REAL;
	Pw_total					:	REAL;
	Ia1						:	REAL;
	Ia2						:	REAL;
	Ia3						:	REAL;
	E_T1					:	REAL;
	E_T2					:	REAL; (* 64 values*)

(*	M1T1					:	DWORD:=0;
	M1T2					:	DWORD:=0; (* 66 values*)

	M2T1					:	DWORD:=0; (* 67 values*)
	M2T2					:	DWORD:=0;
	M3T1					:	DWORD:=0;
	M3T2					:	DWORD:=0;
	M4T1					:	DWORD:=0; (* 70 values*)
	M4T2					:	DWORD:=0;
	M5T1					:	DWORD:=0;
	M5T2					:	DWORD:=0;
	M6T1					:	DWORD:=0;
	M6T2					:	DWORD:=0;
	M7T1					:	DWORD:=0;
	M7T2					:	DWORD:=0;
	M8T1					:	DWORD:=0;
	M8T2					:	DWORD:=0;
	M9T1					:	DWORD:=0;
	M9T2					:	DWORD:=0;
	M10T1					:	DWORD:=0;
	M10T2					:	DWORD:=0;
	M11T1					:	DWORD:=0;
	M11T2					:	DWORD:=0;
	M12T1					:	DWORD:=0;
	M12T2					:	DWORD:=0;   (* 86 values*)
*)

END_STRUCT
END_TYPE             К  , $'Њ           ST_MqttReceivedPublishTelegram lS]	lS]       "           ј   (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '' *)
(* @OBJECTFLAGS := '0, 8' *)
TYPE ST_MqttReceivedPublishTelegram :
STRUCT
	sTopic		: STRING[255];
	sValue		: STRING[255];
	bHasData	: BOOL;
END_STRUCT
END_TYPE
(* @END_DECLARATION := '0' *)             Л  , '$           ST_MqttSettings lS]	lS]       "           '  (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '' *)
(* @OBJECTFLAGS := '0, 8' *)
TYPE ST_MqttSettings :
STRUCT
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
(* @END_DECLARATION := '0' *)             М  , 4A           ST_MqttTelegram lS]	lS]       "           ц   (* @NESTEDCOMMENTS := 'Yes' *)
(* @PATH := '' *)
(* @OBJECTFLAGS := '0, 8' *)
TYPE ST_MqttTelegram :
STRUCT
	arMqttData 	: ARRAY[0..544] OF BYTE;
	nDataLength	: UDINT := 0;
END_STRUCT
END_TYPE
(* @END_DECLARATION := '0' *               ,   ЂA           stMB lS]	lS]        $ Џ            TYPE stMB :
STRUCT

	M1T1							AT %MW0	:REAL;  (* modbus address 12288 *)
	M1T2							AT %MW4	:REAL;
	M2T1							AT %MW8	:REAL;
	M2T2							AT %MW12	:REAL;
	M3T1							AT %MW16	:REAL;
	M3T2							AT %MW20	:REAL;
	M4T1							AT %MW24	:REAL;
	M4T2							AT %MW28	:REAL;
	M5T1							AT %MW32	:REAL;
	M5T2							AT %MW36	:REAL;
	M6T1							AT %MW40	:REAL;
	M6T2							AT %MW44	:REAL;
	M7T1							AT %MW48	:REAL;
	M7T2							AT %MW52	:REAL;
	M8T1							AT %MW56	:REAL;
	M8T2							AT %MW60	:REAL;
	M9T1							AT %MW64	:REAL;
	M9T2							AT %MW68	:REAL;
	M10T1							AT %MW72	:REAL;
	M10T2							AT %MW76	:REAL;
	M11T1							AT %MW80	:REAL;
	M11T2							AT %MW84	:REAL;
	M12T1							AT %MW88	:REAL;
	M12T2							AT %MW92	:REAL;

END_STRUCT
END_TYPE             \  , Ж Ж Тz        	   stMercury lS]	lS]                         TYPE stMercury :
STRUCT

	M1T1					:	REAL;
	M1T2					:	REAL;
	M2T1					:	REAL;
	M2T2					:	REAL;
	M3T1					:	REAL;
	M3T2					:	REAL;
	M4T1					:	REAL;
	M4T2					:	REAL;
	M5T1					:	REAL;
	M5T2					:	REAL;
	M6T1					:	REAL;
	M6T2					:	REAL;
	M7T1					:	REAL;
	M7T2					:	REAL;
	M8T1					:	REAL;
	M8T2					:	REAL;
	M9T1					:	REAL;
	M9T2					:	REAL;
	M10T1					:	REAL;
	M10T2					:	REAL;
	M11T1					:	REAL;
	M11T2					:	REAL;
	M12T1					:	REAL;
	M12T2					:	REAL;

END_STRUCT
END_TYPE              ^  ,     Ф           F_CRC16 lS]	lS]        §џ]          Ш   FUNCTION F_CRC16 : WORD
VAR_INPUT
	pData: POINTER TO BYTE;		(* ѓърчрђхыќ эр сыюъ фрээћѕ *)
	Size: WORD;						(* №рчьх№ сыюър  фрээћѕ *)
END_VAR
VAR
	Cnt: BYTE;							(* ёїхђїшъ сшђют *)
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
END_WHILE               d  , 4 4 H&           FB_GET_CO2_MH_Z19B UЭ{]	UЭ{]        В          $  FUNCTION_BLOCK FB_GET_CO2_MH_Z19B
VAR_INPUT

END_VAR

VAR_OUTPUT
	co2				: REAL;
	done			: BOOL;
END_VAR

VAR
	SendBuffer		: ARRAY[0..8] OF BYTE;
	ReceiveBuffer	: ARRAY[0..13] OF BYTE;
	Clear			: ClearComBuffer;
	state			: INT:= 0;
	tmcheck			: TON;
	w_CO2		:	WORD;
END_VAR
Ї  tmcheck();

CASE state OF

0:
	done:=FALSE;
	Clear(Buffer := RxBufferCom1);
	SendBuffer[0] := 16#FF;
	SendBuffer[1] := 16#01; (* Address *)
	SendBuffer[2] := 16#86;
	SendBuffer[3] := 16#00;
	SendBuffer[4] := 16#00;
	SendBuffer[5] := 16#00;
	SendBuffer[6] := 16#00;
	SendBuffer[7] := 16#00;	(* Checksum *)
	SendBuffer[8] := 16#79;	(* Checksum *)

	SendDataCom1(pSendData:=ADR(SendBuffer),length:=9,TXbuffer:=TXBufferCom1,Busy=>,Error=>);

	tmCheck(in:=FALSE);
	tmCheck(in:=TRUE,pt:=t#2s);
	state:=1;

1: (*юђтхђ*)

	ReceiveDataCom1(pPrefix:=,LenPrefix:=,pSuffix:=,LenSuffix:=,pReceiveData:=ADR(ReceiveBuffer),SizeReceiveData:=9,TImeOut:=t#1s,Reset:=,RXbuffer:=RxBufferCom1,DataReceived=>,busy=>,RxTimeout=>,LenReceiveData=>);

	IF ReceiveDataCom1.Error <> 0 THEN
		state:=9;
	END_IF

	IF ReceiveDataCom1.DataReceived THEN
		state:=2;
	ELSIF tmcheck.Q THEN
		 state:=9;
	END_IF;



2:(*№рёјшє№ютър*)
	IF (ReceiveBuffer [0] = 16#FF AND ReceiveBuffer [1] = 16#86 ) THEN
		Sensor_CO2_high := ReceiveBuffer [2];
		Sensor_CO2_low := ReceiveBuffer [3];
		MEMCPY(ADR(w_CO2),ADR(ReceiveBuffer[3]),1);
		MEMCPY(ADR(w_CO2)+1,ADR(ReceiveBuffer[2]),1);
		IF (WORD_TO_REAL(w_CO2)<>0 AND WORD_TO_REAL(w_CO2)<5001) THEN
			co2 := WORD_TO_REAL(w_CO2);
			state:=10;
		ELSE
			state:=9;
		END_IF
	ELSE
		state:=9;
	END_IF

9:
	co2:=0;
	done := TRUE;
	state:=0;
10:
	done := TRUE;
	state:=0;

END_CASE;
               b  , а а фъ           FB_GET_CURRENT lS]	lS]       $          ё  FUNCTION_BLOCK FB_GET_CURRENT
VAR_INPUT
	byte1			: BYTE;
	byte2			: BYTE;
	byte3			: BYTE;

END_VAR

VAR_OUTPUT
	current1			: REAL;
	current2			: REAL;
	current3			: REAL;
	done			: BOOL;
END_VAR

VAR
	Clear			: ClearComBuffer;
	crctest			: WORD;
	arrReceive		: ARRAY[1..12] OF BYTE := 0,0,0,0,0,0,0,0,0,0,0,0;
	arrSend			: ARRAY[1..6] OF BYTE:= 0,0,0,0,0,0;
	state			: INT:= 0;
	dw_DATA		: DWORD:=0;
	tmcheck			: TON;
	CRC_calc		: WORD:=0;
	CRC_get			: WORD:=1;
END_VAR
%  tmcheck();

CASE state OF

0:
	done:=FALSE;
	Clear(Buffer := RxBufferCom1);
	arrSend[1]:=Merc_address;
	arrSend[2]:=byte1;
	arrSend[3]:=byte2;
	arrSend[4]:=byte3;

	crctest:=F_CRC16(ADR(arrSend), 4);
	MEMCPY(ADR(arrSend)+4,ADR(crctest),2);

	SendDataCom1(pSendData:=ADR(arrSend),length:=6,TXbuffer:=TXBufferCom1 );

	tmCheck(in:=FALSE);
	tmCheck(in:=TRUE,pt:=t#2s);
	state:=1;

1: (*юђтхђ*)

	ReceiveDataCom1(pReceiveData:=ADR(arrReceive),SizeReceiveData:=12,TImeOut:=t#2s,Reset:=,RXbuffer:=RxBufferCom1);

	IF ReceiveDataCom1.Error <> 0 THEN
		state:=9;
	END_IF

	IF ReceiveDataCom1.DataReceived THEN
		state:=2;
	ELSIF tmcheck.Q THEN state:=9;
	END_IF;


2:(*№рёјшє№ютър*)

	CRC_calc := F_CRC16(ADR(arrReceive), 10);
	MEMCPY(ADR(CRC_get),ADR(arrReceive[11]),1);
	MEMCPY(ADR(CRC_get)+1,ADR(arrReceive[12]),1);


	IF (  arrReceive[1] = Merc_address  AND CRC_calc = CRC_get ) THEN

			MEMCPY(ADR(dw_DATA),ADR(arrReceive[3]),1);
			MEMCPY(ADR(dw_DATA)+1,ADR(arrReceive[4]),1);
			arrReceive[2]:=arrReceive[2] AND 16#3F;
			MEMCPY(ADR(dw_DATA)+2,ADR(arrReceive[2]),1);
			current1 :=DWORD_TO_REAL(dw_DATA)/1000;  (*Рьях№*)

			MEMCPY(ADR(dw_DATA),ADR(arrReceive[6]),1);
			MEMCPY(ADR(dw_DATA)+1,ADR(arrReceive[7]),1);
			arrReceive[5]:=arrReceive[5] AND 16#3F;
			MEMCPY(ADR(dw_DATA)+2,ADR(arrReceive[5]),1);
			current2:=DWORD_TO_REAL(dw_DATA)/1000;  (*Рьях№*)

			MEMCPY(ADR(dw_DATA),ADR(arrReceive[9]),1);
			MEMCPY(ADR(dw_DATA)+1,ADR(arrReceive[10]),1);
			arrReceive[8]:=arrReceive[8] AND 16#3F;
			MEMCPY(ADR(dw_DATA)+2,ADR(arrReceive[8]),1);
			current3 :=DWORD_TO_REAL(dw_DATA)/1000;  (*Рьях№*)
			state:=10;
		ELSE state:=9;
	END_IF;

9:
	current1:=0;
	current2:=0;
	current3:=0;
	done := TRUE;
	state:=0;
10:
	done := TRUE;
	state:=0;

END_CASE;
               _  , а а мВ           FB_GET_ENERGY lS]	lS]      
	rr PNT        5  FUNCTION_BLOCK FB_GET_ENERGY
VAR_INPUT
	byte1			: BYTE;
	byte2			: BYTE;
	byte3			: BYTE;
END_VAR

VAR_OUTPUT
	energy			: REAL;
	done			: BOOL;
END_VAR

VAR

	Clear				: ClearComBuffer;
	crctest				: WORD;
	arrReceive			: ARRAY[1..22] OF BYTE := 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
	arrSend				: ARRAY[1..22] OF BYTE:= 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
	state				: INT:= 0;
	dw_DATA			: DWORD:=0;
	E_active				: REAL:=0;
	E_reactive			: REAL:=0;
	tmcheck				: TON;
	CRC_calc			: WORD:=0;
	CRC_get				: WORD:=1;
END_VAR
u  tmcheck();

CASE state OF

0:
	done:=FALSE;
	Clear(Buffer := RxBufferCom1);
	arrSend[1]:=Merc_address;
	arrSend[2]:=byte1;
	arrSend[3]:=byte2;
	arrSend[4]:=byte3;

	crctest:=F_CRC16(ADR(arrSend), 4);
	MEMCPY(ADR(arrSend)+4,ADR(crctest),2);

	SendDataCom1(pSendData:=ADR(arrSend),length:=6,TXbuffer:=TXBufferCom1 );

	tmCheck(in:=FALSE);
	tmCheck(in:=TRUE,pt:=t#2s);
	state:=1;

1: (*юђтхђ*)

	ReceiveDataCom1(pReceiveData:=ADR(arrReceive),SizeReceiveData:=19,TImeOut:=t#2s,Reset:=,RXbuffer:=RxBufferCom1);

	IF ReceiveDataCom1.Error <> 0 THEN
		state:=9;
	END_IF

	IF ReceiveDataCom1.DataReceived THEN
		state:=2;
	ELSIF tmcheck.Q THEN state:=9;
	END_IF;


2:(*№рёјшє№ютър*)
	CRC_calc := F_CRC16(ADR(arrReceive), 17);
	MEMCPY(ADR(CRC_get),ADR(arrReceive[18]),1);
	MEMCPY(ADR(CRC_get)+1,ADR(arrReceive[19]),1);

	IF (  arrReceive[1] = Merc_address  AND CRC_calc = CRC_get ) THEN
			MEMCPY(ADR(dw_DATA),ADR(arrReceive[4]),2);
			MEMCPY(ADR(dw_DATA)+2,ADR(arrReceive[2]),2);
			E_active:=DWORD_TO_REAL(dw_DATA)/1000;(*ръђштэрџ ьюљ*)
			MEMCPY(ADR(dw_DATA),ADR(arrReceive[12]),2);
			MEMCPY(ADR(dw_DATA)+2,ADR(arrReceive[10]),2);
			E_reactive:=DWORD_TO_REAL(dw_DATA)/1000; (*№хръђштэрџ ьюљэюёђќ*)
			energy:=E_active;
			state:=10;
		ELSE state:=9;
	END_IF;
9:
	energy:=0;
	done := TRUE;
	state:=0;
10:
	done := TRUE;
	state:=0;

END_CASE;
               c  , ъ ъ ў           FB_GET_POWER lS]	lS]       5it(DOf          FUNCTION_BLOCK FB_GET_POWER
VAR_INPUT
	byte1			: BYTE;
	byte2			: BYTE;
	byte3			: BYTE;
END_VAR

VAR_OUTPUT
	power_total		: REAL;
	power1			: REAL;
	power2			: REAL;
	power3			: REAL;
	done			: BOOL;
END_VAR

VAR
	Clear				: ClearComBuffer;
	crctest				: WORD;
	arrReceive			: ARRAY[1..15] OF BYTE := 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;
	arrSend				: ARRAY[1..6] OF BYTE:= 0,0,0,0,0,0;
	state				: INT:= 0;
	dw_DATA			: DWORD:=0;
	tmcheck				: TON;
	CRC_calc			: WORD:=0;
	CRC_get				: WORD:=1;
END_VAR
њ  tmcheck();

CASE state OF

0:
	done:=FALSE;
	Clear(Buffer := RxBufferCom1);
	arrSend[1]:=Merc_address;
	arrSend[2]:=byte1;
	arrSend[3]:=byte2;
	arrSend[4]:=byte3;

	crctest:=F_CRC16(ADR(arrSend), 4);
	MEMCPY(ADR(arrSend)+4,ADR(crctest),2);

	SendDataCom1(pSendData:=ADR(arrSend),length:=6,TXbuffer:=TXBufferCom1 );

	tmCheck(in:=FALSE);
	tmCheck(in:=TRUE,pt:=t#2s);
	state:=1;

1: (*юђтхђ*)

	ReceiveDataCom1(pReceiveData:=ADR(arrReceive),SizeReceiveData:=15,TImeOut:=t#2s,Reset:=,RXbuffer:=RxBufferCom1);

	IF ReceiveDataCom1.Error <> 0 THEN
		state:=9;
	END_IF

	IF ReceiveDataCom1.DataReceived THEN
		state:=2;
	ELSIF tmcheck.Q THEN state:=9;
	END_IF;


2:(*№рёјшє№ютър*)
	CRC_calc := F_CRC16(ADR(arrReceive), 13);
	MEMCPY(ADR(CRC_get),ADR(arrReceive[14]),1);
	MEMCPY(ADR(CRC_get)+1,ADR(arrReceive[15]),1);


	IF (  arrReceive[1] = Merc_address  AND CRC_calc = CRC_get ) THEN
			MEMCPY(ADR(dw_DATA),ADR(arrReceive[3]),1);
			MEMCPY(ADR(dw_DATA)+1,ADR(arrReceive[4]),1);
			arrReceive[2]:=arrReceive[2] AND 16#3F;
			MEMCPY(ADR(dw_DATA)+2,ADR(arrReceive[2]),1);
			power_total:=DWORD_TO_REAL(dw_DATA)/100;

			MEMCPY(ADR(dw_DATA),ADR(arrReceive[6]),1);
			MEMCPY(ADR(dw_DATA)+1,ADR(arrReceive[7]),1);
			arrReceive[5]:=arrReceive[5] AND 16#3F;
			MEMCPY(ADR(dw_DATA)+2,ADR(arrReceive[5]),1);
			power1:=DWORD_TO_REAL(dw_DATA)/100;

			MEMCPY(ADR(dw_DATA),ADR(arrReceive[9]),1);
			MEMCPY(ADR(dw_DATA)+1,ADR(arrReceive[10]),1);
			arrReceive[8]:=arrReceive[8] AND 16#3F;
			MEMCPY(ADR(dw_DATA)+2,ADR(arrReceive[8]),1);
			power2:=DWORD_TO_REAL(dw_DATA)/100;

			MEMCPY(ADR(dw_DATA),ADR(arrReceive[12]),1);
			MEMCPY(ADR(dw_DATA)+1,ADR(arrReceive[13]),1);
			arrReceive[11]:=arrReceive[11] AND 16#3F;
			MEMCPY(ADR(dw_DATA)+2,ADR(arrReceive[11]),1);
			power3:=DWORD_TO_REAL(dw_DATA)/100;



			state:=10;
		ELSE state:=9;
	END_IF;

9:
	power_total:=0;
	power1:=0;
	power2:=0;
	power3:=0;

	done := TRUE;
	state:=0;
10:
	done := TRUE;
	state:=0;

END_CASE;
               a  , Ж Ж Ъа           FB_GET_SUPPLY lS]	lS]       §џ          ё  FUNCTION_BLOCK FB_GET_SUPPLY
VAR_INPUT
	byte1			: BYTE;
	byte2			: BYTE;
	byte3			: BYTE;

END_VAR

VAR_OUTPUT
	supply1			: REAL;
	supply2			: REAL;
	supply3			: REAL;
	done			: BOOL;
END_VAR

VAR

	Clear			: ClearComBuffer;
	crctest			: WORD;
	arrReceive		: ARRAY[1..12] OF BYTE := 0,0,0,0,0,0,0,0,0,0,0,0;
	arrSend			: ARRAY[1..6] OF BYTE:= 0,0,0,0,0,0;
	state			: INT:= 0;
	dw_DATA		: DWORD:=0;
	tmcheck			: TON;
	CRC_calc		: WORD:=0;
	CRC_get			: WORD:=1;

END_VAR
  
tmcheck();

CASE state OF

0:

	done:=FALSE;
	Clear(Buffer := RxBufferCom1);

	arrSend[1]:=Merc_address;
	arrSend[2]:=byte1;
	arrSend[3]:=byte2;
	arrSend[4]:=byte3;

	crctest:=F_CRC16(ADR(arrSend), 4);
	MEMCPY(ADR(arrSend)+4,ADR(crctest),2);

	SendDataCom1(pSendData:=ADR(arrSend),length:=6,TXbuffer:=TXBufferCom1 );

	tmCheck(in:=FALSE);
	tmCheck(in:=TRUE,pt:=t#2s);
	state:=1;

1: (*юђтхђ*)

	ReceiveDataCom1(pReceiveData:=ADR(arrReceive),SizeReceiveData:=12,TImeOut:=t#2s,Reset:=,RXbuffer:=RxBufferCom1);

	IF ReceiveDataCom1.Error <> 0 THEN
		state:=9;
	END_IF

	IF ReceiveDataCom1.DataReceived THEN
		state:=2;

	ELSIF tmcheck.Q THEN state:=9;
	END_IF;


2:(*№рёјшє№ютър*)
	(* arrReceive:=EchoDel(CheckUp:=TRUE, SentA:=arrSend, RecA:=arrReceive, Length:=UDINT_TO_INT(SendDataCom1.Length)); *)
	CRC_calc := F_CRC16(ADR(arrReceive), 10);
	MEMCPY(ADR(CRC_get),ADR(arrReceive[11]),1);
	MEMCPY(ADR(CRC_get)+1,ADR(arrReceive[12]),1);


	IF (  arrReceive[1] = Merc_address  AND CRC_calc = CRC_get ) THEN
		MEMCPY(ADR(dw_DATA),ADR(arrReceive[3]),1);
			MEMCPY(ADR(dw_DATA)+1,ADR(arrReceive[4]),1);
			arrReceive[2]:=arrReceive[2] AND 16#3F;
			MEMCPY(ADR(dw_DATA)+2,ADR(arrReceive[2]),1);
		supply1:=DWORD_TO_REAL(dw_DATA)/100;  (*Тюыќђ*)

		MEMCPY(ADR(dw_DATA),ADR(arrReceive[6]),1);
			MEMCPY(ADR(dw_DATA)+1,ADR(arrReceive[7]),1);
			arrReceive[5]:=arrReceive[5] AND 16#3F;
			MEMCPY(ADR(dw_DATA)+2,ADR(arrReceive[5]),1);
		supply2:=DWORD_TO_REAL(dw_DATA)/100;  (*Тюыќђ*)

		MEMCPY(ADR(dw_DATA),ADR(arrReceive[9]),1);
			MEMCPY(ADR(dw_DATA)+1,ADR(arrReceive[10]),1);
			arrReceive[8]:=arrReceive[8] AND 16#3F;
			MEMCPY(ADR(dw_DATA)+2,ADR(arrReceive[8]),1);
		supply3:=DWORD_TO_REAL(dw_DATA)/100;  (*Тюыќђ*)



			state:=10;
		ELSE state:=9;
	END_IF;

9:
	supply1:=0;
	supply2:=0;
	supply3:=0;
	done := TRUE;
	state:=0;

10:
	done := TRUE;
	state:=0;

END_CASE;
               А  , '           FB_Mqtt_Controller_V10 lS]	lS]        §џB           п  (* @NESTEDCOMMENTS := 'Yes' *)
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
(* @END_DECLARATION := '0' *)М  (*
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
(*	END_FUNCTION_BLOCK	*) Ѓ  , '           CallMqttBlocks lS]  (*ACTION	CallMqttBlocks: *)
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

(* END_ACTION *)             Д  , '4$           FB_Mqtt_DecodeLength_V10 lS]	lS]                        (* @NESTEDCOMMENTS := 'Yes' *)
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
(* @END_DECLARATION := '0' *)Ф  index			:= 0;
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

(*	END_FUNCTION_BLOCK	*)               Е  , '4           FB_Mqtt_EncodeLength_V10 lS]	lS]       $ Ѓ          С  (* @NESTEDCOMMENTS := 'Yes' *)
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

(*	END_FUNCTION_BLOCK	*)               Џ  , 4A           FB_Mqtt_Publish_V10 lS]	lS]        §џB           Ў  (* @NESTEDCOMMENTS := 'Yes' *)
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
(* @END_DECLARATION := '0' *)Л  CASE iState OF
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

(*	END_FUNCTION_BLOCK	*)               Ж  , '4           FB_Mqtt_Receive_V10 lS]	lS]                        (* @NESTEDCOMMENTS := 'Yes' *)
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
 Є  , '           ClearReceivedPublishTelegram lS]Ѕ  MEMSET(
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

stMqttSettings.stMqttReceivedPublishTelegram.bHasData := FALSE;             З  , '4           FB_Mqtt_Send_V10 lS]	lS]        §џB           +  (* @NESTEDCOMMENTS := 'Yes' *)
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
(* @END_DECLARATION := '0' *)
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

(*	END_FUNCTION_BLOCK	*)               Б  , 4 A           FB_Mqtt_Subscribe_V10 lS]	lS]                      <  (* @NESTEDCOMMENTS := 'Yes' *)
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

(* @END_DECLARATION := '0' *)  CASE iState OF
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

(*	END_FUNCTION_BLOCK	*)               В  , 4  A            FB_MqttTelegram_Connect_V10 lS]	lS]        §џ?           Ч  (* @NESTEDCOMMENTS := 'Yes' *)
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
(* @END_DECLARATION := '0' *)Э  CASE iState OF
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


(*	END_FUNCTION_BLOCK	*)               Г  , '$4Њ           FB_MqttTelegram_PingReq_V10 lS]	lS]        §џB             (* @NESTEDCOMMENTS := 'Yes' *)
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

(*	END_FUNCTION_BLOCK	*)               И  , ' 4           FC_Mqtt_ClearTelegram_V10 lS]	lS]       $ Ѓ          ;  (* @NESTEDCOMMENTS := 'Yes' *)
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
(* @END_DECLARATION := '0' *)Ќ   MEMSET(
	destAddr	:= ADR(stMqttTelegram.arMqttData),
	fillByte  	:= 0,
	n			:= stMqttSettings.iTelegramSize
);

stMqttTelegram.nDataLength := 0;

(*	END_FUNCTION	*)               Й  , '  4            FC_Mqtt_CopyTelegram_V10 lS]	lS]       $ Ѓ          f  (* @NESTEDCOMMENTS := 'Yes' *)
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
(* @END_DECLARATION := '0' *)ѓ   MEMCPY(
	destAddr	:= ADR(stMqttDestTelegram.arMqttData),
    srcAddr		:= ADR(stMqttSrcTelegram.arMqttData),
	n  			:= stMqttSettings.iTelegramSize
);

stMqttDestTelegram.nDataLength := stMqttSrcTelegram.nDataLength;

(*	END_FUNCTION	*)               #   ,    8           MAIN lS]	lS]            Re        =   PROGRAM MAIN
VAR

	INITVAR					: BOOL:=FALSE;

END_VAR
]	  

IF (INITVAR=FALSE) THEN

	(* START RESTORE VARS FROM MEMORY AFTER REBOOT/RESET/LOST POWER *)

	iobroker.Target_CO2				:=	Target_CO2_mem;
	iobroker.First_floor_temp_target		:=	First_floor_temp_target_mem;
	iobroker.Second_floor_temp_target	:=	Second_floor_temp_target_mem;
	iobroker.Sport_temp_target			:=	Sport_temp_target_mem;
	iobroker.Sauna_temp_target		:=	Sauna_temp_target_mem;

	iobroker.Underfloor_temp_target		:=	Underfloor_temp_target_mem;
	iobroker.Underfloor_humidity_target	:=	Underfloor_humidity_target_mem;
	iobroker.Vent						:=	Vent_mem;
	iobroker.Vent_heat				:=	Vent_heat_mem;
	iobroker.Vent_heat_level			:=	Vent_heat_level_mem;
	iobroker.Pomp_house				:=	Pomp_house_mem;
	iobroker.Pomp_garden				:=	Pomp_garden_mem;
	iobroker.Light_garden				:=	Light_garden_mem;
	(* END RESTORE VARS FROM MEMORY AFTER REBOOT/RESET/LOST POWER *)

	INITVAR:=TRUE;
ELSE
	(*START SAVE VARS to PERSISTENT MEMORY*)
	Target_CO2_mem					:=	iobroker.Target_CO2;
	First_floor_temp_target_mem		:=	iobroker.First_floor_temp_target;
	Second_floor_temp_target_mem		:=	iobroker.Second_floor_temp_target;
	Sport_temp_target_mem			:=	iobroker.Sport_temp_target;
	Underfloor_temp_target_mem		:=	iobroker.Underfloor_temp_target;
	Underfloor_humidity_target_mem	:=	iobroker.Underfloor_humidity_target;
	Vent_mem						:=	iobroker.Vent;
	Vent_heat_mem					:=	iobroker.Vent_heat;
	Vent_heat_level_mem				:=	iobroker.Vent_heat_level;
	Light_garden_mem				:=	iobroker.Light_garden;
	Pomp_house_mem				:=	iobroker.Pomp_house;
	(*END SAVE VARS to PERSISTENT MEMORY*)


	Sensors;						(* Рэрыюутћх фрђїшъш эр јшэх KL *)
	Security;						(* Ьюэшђю№шэу фрђїшъют юѕ№рэћ *)
	RS485read;					(* Юя№юё ѓёђ№ющёђт эр јшэх RS485 *)
	Mqtt;						(* MQTT *)
	Thermocontrol;				(* вх№ьюёђрђ*)
	VentControl;					(* Уыюсрыќэћщ ъюэђ№юыќ тхэђѓёђрэютъш*)
	VentPower;					(* Ртђю№хуѓыш№ютър ьюљэюёђш тхэђѓёђрэютъш яю фрђїшърь CO2*)
	Poliv;						(* врщьх№ћ чюэрыќэюую яюыштр *)


	(* Я№џьюх я№шёютхэшх тш№ђѓрыќэћѕ ях№хьхээћѕ ъ ях№хьхээћь, цхёђъю я№штџчрэћь ъ єшч. яю№ђрь. зрёђюђр юсэютыхэшџ= ішъыѓ ЯЫЪ (50 ьёхъ) : *)
	HW_vorota					:=	iobroker.Vorota;
	HW_kalitka					:=	iobroker.Kalitka;
	HW_pomp_house				:=	iobroker.Pomp_house;
	HW_light_garden				:=	iobroker.Light_garden;
	iobroker.Sensor_supply		:=	HW_sensor_supply;
	HW_vent_underfloor			:=	iobroker.Vent_underfloor;

END_IF

               P  ,   T           Mqtt lS]	lS]      unr  P
        E  PROGRAM Mqtt
VAR
	FB_Mqtt_Controller 		: FB_Mqtt_Controller_V10;
	stMqttSettings				: ST_MqttSettings;
	bMqttControllerBusy		: BOOL;

	FB_Mqtt_Publish1 			: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish2			: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish3			: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish4			: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish5			: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish6			: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish7			: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish8			: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish9			: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish10		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish11		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish12		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish13 		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish14		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish15		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish16		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish17		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish18		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish19		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish20		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish21		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish22		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish23		: FB_Mqtt_Publish_V10;
	FB_Mqtt_Publish24		: FB_Mqtt_Publish_V10;

	bPublishBusy1			: BOOL;
	bPublishBusy2			: BOOL;
	bPublishBusy3			: BOOL;
	bPublishBusy4			: BOOL;
	bPublishBusy5			: BOOL;
	bPublishBusy6			: BOOL;
	bPublishBusy7			: BOOL;
	bPublishBusy8			: BOOL;
	bPublishBusy9			: BOOL;
	bPublishBusy10			: BOOL;
	bPublishBusy11			: BOOL;
	bPublishBusy12			: BOOL;
	bPublishBusy13			: BOOL;
	bPublishBusy14			: BOOL;
	bPublishBusy15			: BOOL;
	bPublishBusy16			: BOOL;
	bPublishBusy17			: BOOL;
	bPublishBusy18			: BOOL;
	bPublishBusy19			: BOOL;
	bPublishBusy20			: BOOL;
	bPublishBusy21			: BOOL;
	bPublishBusy22			: BOOL;
	bPublishBusy23			: BOOL;
	bPublishBusy24			: BOOL;
	START: BOOL;
END_VARK  
FB_Mqtt_Controller (
		bActive			:= TRUE,
		sMqttClientId		:= 'plc',
		sMqttUserId		:= 'mqtt',
		sMqttPassword	:= 'mqtt',
		sMqttBrokerIp		:= '192.168.2.200',
		nMqttBrokerPort	:= 1883,
		stMqttSettings		:= stMqttSettings,
		bBusy			=> bMqttControllerBusy
	);

IF NOT bMqttControllerBusy THEN

	FB_Mqtt_Publish1(sTopic:='BECKHOFF_CX9000/Mercury/M1T1',sValue:=REAL_TO_STRING(Mercury.M1T1),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy1 );
	FB_Mqtt_Publish2(sTopic:='BECKHOFF_CX9000/Mercury/M1T2',sValue:=REAL_TO_STRING(Mercury.M1T2),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy2 );
	FB_Mqtt_Publish3(sTopic:='BECKHOFF_CX9000/Mercury/M2T1',sValue:=REAL_TO_STRING(Mercury.M2T1),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy3 );
	FB_Mqtt_Publish4(sTopic:='BECKHOFF_CX9000/Mercury/M2T2',sValue:=REAL_TO_STRING(Mercury.M2T2),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy4 );
	FB_Mqtt_Publish5(sTopic:='BECKHOFF_CX9000/Mercury/M3T1',sValue:=REAL_TO_STRING(Mercury.M3T1),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy5 );
	FB_Mqtt_Publish6(sTopic:='BECKHOFF_CX9000/Mercury/M3T2',sValue:=REAL_TO_STRING(Mercury.M3T2),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy6 );
	FB_Mqtt_Publish7(sTopic:='BECKHOFF_CX9000/Mercury/M4T1',sValue:=REAL_TO_STRING(Mercury.M4T1),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy7 );
	FB_Mqtt_Publish8(sTopic:='BECKHOFF_CX9000/Mercury/M4T2',sValue:=REAL_TO_STRING(Mercury.M4T2),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy8 );
	FB_Mqtt_Publish9(sTopic:='BECKHOFF_CX9000/Mercury/M5T1',sValue:=REAL_TO_STRING(Mercury.M5T1),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy9 );
	FB_Mqtt_Publish10(sTopic:='BECKHOFF_CX9000/Mercury/M5T2',sValue:=REAL_TO_STRING(Mercury.M5T2),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy10 );
	FB_Mqtt_Publish11(sTopic:='BECKHOFF_CX9000/Mercury/M6T1',sValue:=REAL_TO_STRING(Mercury.M6T1),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy11 );
	FB_Mqtt_Publish12(sTopic:='BECKHOFF_CX9000/Mercury/M6T2',sValue:=REAL_TO_STRING(Mercury.M6T2),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy12 );
	FB_Mqtt_Publish13(sTopic:='BECKHOFF_CX9000/Mercury/M7T1',sValue:=REAL_TO_STRING(Mercury.M7T1),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy13 );
	FB_Mqtt_Publish14(sTopic:='BECKHOFF_CX9000/Mercury/M7T2',sValue:=REAL_TO_STRING(Mercury.M7T2),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy14);
	FB_Mqtt_Publish15(sTopic:='BECKHOFF_CX9000/Mercury/M8T1',sValue:=REAL_TO_STRING(Mercury.M8T1),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy15 );
	FB_Mqtt_Publish16(sTopic:='BECKHOFF_CX9000/Mercury/M8T2',sValue:=REAL_TO_STRING(Mercury.M8T2),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy16 );
	FB_Mqtt_Publish17(sTopic:='BECKHOFF_CX9000/Mercury/M9T1',sValue:=REAL_TO_STRING(Mercury.M9T1),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy17 );
	FB_Mqtt_Publish18(sTopic:='BECKHOFF_CX9000/Mercury/M9T2',sValue:=REAL_TO_STRING(Mercury.M9T2),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy18 );
	FB_Mqtt_Publish19(sTopic:='BECKHOFF_CX9000/Mercury/M10T1',sValue:=REAL_TO_STRING(Mercury.M10T1),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy19 );
	FB_Mqtt_Publish20(sTopic:='BECKHOFF_CX9000/Mercury/M10T2',sValue:=REAL_TO_STRING(Mercury.M10T2),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy20 );
	FB_Mqtt_Publish21(sTopic:='BECKHOFF_CX9000/Mercury/M11T1',sValue:=REAL_TO_STRING(Mercury.M11T1),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy21 );
	FB_Mqtt_Publish22(sTopic:='BECKHOFF_CX9000/Mercury/M11T2',sValue:=REAL_TO_STRING(Mercury.M11T2),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy22 );
	FB_Mqtt_Publish23(sTopic:='BECKHOFF_CX9000/Mercury/M12T1',sValue:=REAL_TO_STRING(Mercury.M12T1),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy23 );
	FB_Mqtt_Publish24(sTopic:='BECKHOFF_CX9000/Mercury/M12T2',sValue:=REAL_TO_STRING(Mercury.M12T2),bRetain:=FALSE, stMqttSettings:=stMqttSettings,bBusy => bPublishBusy24 );
END_IF
(*    END    SEND DATA VIA MQTT  *)
                 ,              Poliv lS]	lS]       §џ            PROGRAM Poliv
VAR
	Period_pomp_garden_delay	: INT:=15;				(* Чрфх№цър тъыўїхэшџ эрёюёр яюёых ёшуэрыр эр юђъ№ћђшх ъырярэр=15 ёхъ. *)

 	 tTimerValue_zapad			: TIME;
	Timer_poliv_zapad			: TON;
	Timer_poliv_zapadQ			:  BOOL;

	tTimerValue_terrasa			: TIME;
	Timer_poliv_terrasa			: TON;
	Timer_poliv_terrasaQ			:  BOOL;

	 tTimerValue_south			: TIME;
	Timer_poliv_south				: TON;
	Timer_poliv_southQ			:  BOOL;

	TON_pomp_garden			: TON ;
	pomp_garden_start			: BOOL;

	tTimerValue					: TIME;
END_VARт  tTimerValue := DINT_TO_TIME(Period_pomp_garden_delay*1000);


Timer_poliv_zapad();
Timer_poliv_terrasa();
Timer_poliv_south();

IF (iobroker.Poliv_zapad = TRUE ) THEN
	tTimerValue_zapad := DINT_TO_TIME(iobroker.Poliv_zapad_minutes*60*1000);
	HW_poliv_zapad	:=	TRUE;
	Timer_poliv_zapad(IN:=NOT Timer_poliv_zapadQ , PT:=tTimerValue_zapad , Q=>Timer_poliv_zapadQ , ET=> );
END_IF
IF (iobroker.Poliv_zapad = FALSE ) THEN
	HW_poliv_zapad	:=	FALSE;
	Timer_poliv_zapadQ := FALSE;
	Timer_poliv_zapad(IN:=FALSE , PT:=T#0ms , Q=>Timer_poliv_zapadQ , ET=> );
END_IF
IF Timer_poliv_zapad.q THEN
	iobroker.Poliv_zapad := FALSE;
	HW_poliv_zapad	:=	FALSE;
END_IF


IF (iobroker.Poliv_terrasa = TRUE ) THEN
	tTimerValue_terrasa := DINT_TO_TIME(iobroker.Poliv_terrasa_minutes*60*1000);
	HW_poliv_terrasa	:=	TRUE;
	Timer_poliv_terrasa(IN:=NOT Timer_poliv_terrasaQ , PT:=tTimerValue_terrasa , Q=>Timer_poliv_terrasaQ , ET=> );
END_IF
IF (iobroker.Poliv_terrasa = FALSE ) THEN
	HW_poliv_terrasa	:=	FALSE;
	Timer_poliv_terrasaQ := FALSE;
	Timer_poliv_terrasa(IN:=FALSE , PT:=T#0ms , Q=>Timer_poliv_terrasaQ , ET=> );
END_IF
IF Timer_poliv_terrasa.q THEN
	iobroker.Poliv_terrasa := FALSE;
	HW_poliv_zapad	:=	FALSE;
END_IF

IF (iobroker.Poliv_south = TRUE ) THEN
	tTimerValue_south := DINT_TO_TIME(iobroker.Poliv_south_minutes*60*1000);
	HW_poliv_south	:=	TRUE;
	Timer_poliv_south(IN:=NOT Timer_poliv_southQ , PT:=tTimerValue_south , Q=>Timer_poliv_southQ , ET=> );
END_IF
IF (iobroker.Poliv_south = FALSE ) THEN
	HW_poliv_south	:=	FALSE;
	Timer_poliv_southQ := FALSE;
	Timer_poliv_south(IN:=FALSE , PT:=T#0ms , Q=>Timer_poliv_southQ , ET=> );
END_IF
IF Timer_poliv_south.q THEN
	iobroker.Poliv_south := FALSE;
	HW_poliv_south	:=	FALSE;
END_IF

IF ((HW_poliv_zapad=TRUE OR HW_poliv_terrasa=TRUE 	OR HW_poliv_south =	TRUE) AND (HW_pomp_Garden=FALSE)  )  THEN
	pomp_garden_start			:=TRUE;
END_IF


TON_pomp_garden(IN := pomp_garden_start, PT:= tTimerValue);
iobroker.Pomp_garden	 	:= TON_pomp_garden.Q;
HW_Pomp_garden		:= TON_pomp_garden.Q;

IF ((HW_poliv_zapad=FALSE AND HW_poliv_terrasa=FALSE 	AND HW_poliv_south = FALSE))   THEN
	pomp_garden_start		:= FALSE;
	iobroker.Pomp_garden	 	:= FALSE;
	HW_Pomp_garden		:= FALSE;
END_IF

                 ,   8д        	   RS485read lS]	lS]      xMordd            
PROGRAM RS485read
VAR

	password_1				: ARRAY [1..6] OF BYTE:=6(1); (* яр№юыќ ъ ьх№ъѓ№шџь, яю ѓьюыїрэшў 6 хфшэші*)
	crctest					: WORD;
	arrReceive				: ARRAY[1..22] OF BYTE;
	arrSend					: ARRAY[1..22] OF BYTE;

	MBdata_kitchen			 : ARRAY [1..2] OF WORD;
	FtrigBusy				: F_TRIG;
	timeoutvalue				: TIME := T#500ms;		(* timeout while waiting for an answer of the modbus slave *)
	state					: INT;
	busy					: BOOL;
	LastErrorstate				: INT;
	LastModbusError			: ST_ModbusErrorDiagnostics;
	CounterError				: DINT;
	CounterSuccess			: DINT;
	Timer1					: TON;
	Timer1Q					: BOOL;
	Timer_day				:TON;
	Timer_dayQ				:BOOL;

	tmCheck					:TON;

	get_co2_mh_z19b_1floor	: FB_GET_CO2_MH_Z19B;
	get_co2_mh_z19b_2floor	: FB_GET_CO2_MH_Z19B;
	get_supply				: FB_GET_SUPPLY;
	get_current				: FB_GET_CURRENT;
	get_power				: FB_GET_POWER;
	get_energy_E_T1			: FB_GET_ENERGY;
	get_energy_E_T2			: FB_GET_ENERGY;
	get_energy_M1T1			: FB_GET_ENERGY;
	get_energy_M1T2			: FB_GET_ENERGY;
	get_energy_M2T1			: FB_GET_ENERGY;
	get_energy_M2T2			: FB_GET_ENERGY;
	get_energy_M3T1			: FB_GET_ENERGY;
	get_energy_M3T2			: FB_GET_ENERGY;
	get_energy_M4T1			: FB_GET_ENERGY;
	get_energy_M4T2			: FB_GET_ENERGY;
	get_energy_M5T1			: FB_GET_ENERGY;
	get_energy_M5T2			: FB_GET_ENERGY;
	get_energy_M6T1			: FB_GET_ENERGY;
	get_energy_M6T2			: FB_GET_ENERGY;
	get_energy_M7T1			: FB_GET_ENERGY;
	get_energy_M7T2			: FB_GET_ENERGY;
	get_energy_M8T1			: FB_GET_ENERGY;
	get_energy_M8T2			: FB_GET_ENERGY;
	get_energy_M9T1			: FB_GET_ENERGY;
	get_energy_M9T2			: FB_GET_ENERGY;
	get_energy_M10T1		: FB_GET_ENERGY;
	get_energy_M10T2		: FB_GET_ENERGY;
	get_energy_M11T1		: FB_GET_ENERGY;
	get_energy_M11T2		: FB_GET_ENERGY;
	get_energy_M12T1		: FB_GET_ENERGY;
	get_energy_M12T2		: FB_GET_ENERGY;

	get_co2_mh_z19b_1floor_done	: BOOL;
	get_co2_mh_z19b_2floor_done	: BOOL;
	get_supply_done			: BOOL;
	get_current_done			: BOOL;
	get_power_done			: BOOL;
	get_energy_E_T1_done	: BOOL;
	get_energy_E_T2_done	: BOOL;
	get_energy_M1T1_done	: BOOL;
	get_energy_M1T2_done	: BOOL;
	get_energy_M2T1_done	: BOOL;
	get_energy_M2T2_done	: BOOL;
	get_energy_M3T1_done	: BOOL;
	get_energy_M3T2_done	: BOOL;
	get_energy_M4T1_done	: BOOL;
	get_energy_M4T2_done	: BOOL;
	get_energy_M5T1_done	: BOOL;
	get_energy_M5T2_done	: BOOL;
	get_energy_M6T1_done	: BOOL;
	get_energy_M6T2_done	: BOOL;
	get_energy_M7T1_done	: BOOL;
	get_energy_M7T2_done	: BOOL;
	get_energy_M8T1_done	: BOOL;
	get_energy_M8T2_done	: BOOL;
	get_energy_M9T1_done	: BOOL;
	get_energy_M9T2_done	: BOOL;
	get_energy_M10T1_done	: BOOL;
	get_energy_M10T2_done	: BOOL;
	get_energy_M11T1_done	: BOOL;
	get_energy_M11T2_done	: BOOL;
	get_energy_M12T1_done	: BOOL;
	get_energy_M12T2_done	: BOOL;
END_VAR

VAR_INPUT


END_VARY6  tmCheck();
Timer_day();

CASE state OF
	0:
		MB.ReadRegs(Execute:= FALSE);

		state := 1;
	1:	(* Read Temp and Hum data  from sensor *)
		Clear(Buffer := RxBufferCom1);
		MB.ReadRegs(
			UnitID:= 16#07, (* station address *)
			Quantity:= 2,	(* WORDs *)
			MBAddr:= 0,
			cbLength:= 6,
			pMemoryAddr:= ADR(MBdata_kitchen),
			Execute:= TRUE,
			Timeout:= timeoutvalue,
			Busy => busy,
		);
		IF NOT busy THEN
			IF (mb.Error = FALSE ) THEN
				iobroker.Kitchen_room_temp:=WORD_TO_REAL(MBdata_kitchen[1])/10;
				iobroker.Kitchen_room_hum:=WORD_TO_REAL(MBdata_kitchen[2])/10;
				MB.ReadRegs(Execute:= FALSE);
				state := 2;
			END_IF
			MB.ReadRegs(Execute:= FALSE);
			state :=2;
		END_IF

2:	(* Read CO2 from sensor *)

		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_co2_mh_z19b_1floor_done := FALSE;
		get_co2_mh_z19b_1floor( co2=>iobroker.First_Floor_CO2, done=>get_co2_mh_z19b_1floor_done);
		IF get_co2_mh_z19b_1floor_done = TRUE THEN
			state:=3;
		ELSIF tmcheck.Q THEN
			 state:=3;
		END_IF

3:
	HW_switch_RS485:=TRUE;
	Timer1(IN:=NOT Timer1Q , PT:=T#1s , Q=>Timer1Q , ET=> );
	IF timer1.q THEN
		state:=4;
	END_IF

4:

		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_co2_mh_z19b_2floor_done := FALSE;
		get_co2_mh_z19b_2floor( co2=>iobroker.Second_Floor_CO2, done=>get_co2_mh_z19b_2floor_done);
		IF get_co2_mh_z19b_2floor_done = TRUE THEN
			state:=41;
		ELSIF tmcheck.Q THEN
			 state:=41;
		END_IF



41:
	Timer1(IN:=NOT Timer1Q , PT:=T#2s , Q=>Timer1Q , ET=> );
	IF timer1.q THEN
	HW_switch_RS485:=FALSE;
		state:=5;
	END_IF

5: (*юђъ№ћтрхь ърэры*)


	Clear(Buffer := RxBufferCom1);
	arrSend[1]:=Merc_address;
	arrSend[2]:=1; (*ъюф фюёђѓяр*)
	arrSend[3]:=1; (*г№ютхэќ фюёђѓяр*)

	MEMCPY(ADR(arrSend)+3,ADR(password_1),6); (*яр№юыќ*)
	crctest:=F_CRC16(ADR(arrSend),9); (*№рёїхђ ъюэђ№юыќэющ ёѓььћ*)
	MEMCPY(ADR(arrSend)+9,ADR(crctest),SIZEOF(crctest)); (*я№шсртыхэшх ъюэђ№юыќэющ ёѓььћ ъ чря№юёѓ*)
	SendDataCom1(pSendData:=ADR(arrSend),Length:=11,TXBuffer:=TxBufferCom1,Busy=>,Error=>);
	tmCheck(in:=FALSE); tmCheck(in:=TRUE,pt:=t#2s); 	(*чряѓёъ ђрщьх№р я№ютх№ъш - яюђх№џ ётџчш\юс№ћт ърсхыџ*)
	state:=6;

6: (*юђтхђ*)
	ReceiveDataCom1(pPrefix:=,LenPrefix:=,pSuffix:=,LenSuffix:=,
	pReceiveData:=ADR(arrReceive),SizeReceiveData:=4,
	Timeout:=t#2s,Reset:=,
	RXbuffer:=RxBufferCom1,
	DataReceived=>,busy=>,Error=>,RxTimeout=>,LenReceiveData=>);
	IF ReceiveDataCom1.Error <> 0 THEN state:=888; END_IF
	IF receiveDataCom1.DataReceived THEN state:=7;
	ELSIF tmcheck.Q THEN state:=888;
	END_IF
7: (*я№ютх№ър юђтхђр*)

	IF arrReceive[1] = Merc_address THEN state:= 8;
	ELSE	state:=888;
	END_IF



8:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_supply_done := FALSE;
		get_supply( byte1:=16#8, byte2:=16#16, byte3:=16#11,  supply1=>iobroker.UV1,supply2=>iobroker.UV2,supply3=>iobroker.UV3, done=>get_supply_done);
		IF get_supply_done = TRUE THEN
			state:=9;
		ELSIF tmcheck.Q THEN
			 state:=888;
		END_IF

 (*чря№юё эр їђхэшх ђюър  эр тёхѕ єрчрѕ
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
*)
9:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_current_done := FALSE;
		get_current(byte1:=16#8, byte2:=16#16, byte3:=16#21,  current1=>iobroker.Ia1,current2=>iobroker.Ia2,current3=>iobroker.Ia3, done=>get_current_done);
		IF get_current_done = TRUE THEN
			state:=10;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF

 (*чря№юё эр їђхэшх ьюљэюёђш  эр тёхѕ єрчрѕ
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
*)

10:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_power_done := FALSE;
		get_power(byte1:=16#8, byte2:=16#16, byte3:=16#0,  power_total=>iobroker.pw_total, power1=>iobroker.pw1, power2=>iobroker.pw2,power3=>iobroker.pw3,done=>get_power_done);
		IF get_power_done = TRUE THEN
			state:=11;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF

 (*чря№юё эр їђхэшх §эх№ушш T1
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
*)
11:
	tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_E_T1_done := FALSE;
		get_energy_E_T1(byte1:=5, byte2:=16#0, byte3:=1,  energy=>iobroker.E_T1, done=>get_energy_E_T1_done);
		IF get_energy_E_T1_done = TRUE THEN
			state:=12;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
 (*чря№юё эр їђхэшх §эх№ушш T2
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
*)

12:
	tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_E_T2_done := FALSE;
		get_energy_E_T2(byte1:=5, byte2:=16#0, byte3:=2,  energy=>iobroker.E_T2, done=>get_energy_E_T2_done);
		IF get_energy_E_T2_done = TRUE THEN
			state:=13;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF


13:
		Timer_day(IN:=NOT Timer_dayQ , PT:=T#10m , Q=>Timer_dayQ , ET=> );
			IF timer_day.q THEN
				state:=14;
			ELSE
				state:=888;
			END_IF

14:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M1T1_done := FALSE;
		get_energy_M1T1(byte1:=5, byte2:=16#31, byte3:=1,   energy=>MB_vars.M1T1,done=>get_energy_M1T1_done);
		IF get_energy_M1T1_done = TRUE THEN
			Mercury.M1T1:=MB_vars.M1T1;
			state:=15;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
15:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M1T2_done := FALSE;
		get_energy_M1T2(byte1:=5, byte2:=16#31, byte3:=2,energy=>MB_vars.M1T2,done=>get_energy_M1T2_done);
		IF get_energy_M1T2_done = TRUE THEN
			Mercury.M1T2:=MB_vars.M1T2;
			state:=16;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF

16:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M2T1_done := FALSE;
		get_energy_M2T1(byte1:=5, byte2:=16#32, byte3:=1, energy=>MB_vars.M2T1, done=>get_energy_M2T1_done);
		IF get_energy_M2T1_done = TRUE THEN
			Mercury.M2T1:=MB_vars.M2T1;
			state:=17;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
17:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M2T2_done := FALSE;
		get_energy_M2T2(byte1:=5, byte2:=16#32, byte3:=2, energy=>MB_vars.M2T2,done=>get_energy_M2T2_done);
		IF get_energy_M2T2_done = TRUE THEN
			Mercury.M2T2:=MB_vars.M2T2;
			state:=18;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
18:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M3T1_done := FALSE;
		get_energy_M3T1(byte1:=5, byte2:=16#33, byte3:=1, energy=>MB_vars.M3T1, done=>get_energy_M3T1_done);
		IF get_energy_M3T1_done = TRUE THEN
			Mercury.M3T1:=MB_vars.M3T1;
			state:=19;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
19:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M3T2_done := FALSE;
		get_energy_M3T2(byte1:=5, byte2:=16#33, byte3:=2, energy=>MB_vars.M3T2,done=>get_energy_M3T2_done);
		IF get_energy_M3T2_done = TRUE THEN
			Mercury.M3T2:=MB_vars.M3T2;
			state:=20;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
20:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M4T1_done := FALSE;
		get_energy_M4T1(byte1:=5, byte2:=16#34, byte3:=1, energy=>MB_vars.M4T1, done=>get_energy_M4T1_done);
		IF get_energy_M4T1_done = TRUE THEN
			Mercury.M4T1:=MB_vars.M4T1;
			state:=21;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
21:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M4T2_done := FALSE;
		get_energy_M4T2(byte1:=5, byte2:=16#34, byte3:=2, energy=>MB_vars.M4T2,done=>get_energy_M4T2_done);
		IF get_energy_M4T2_done = TRUE THEN
			Mercury.M4T2:=MB_vars.M4T2;
			state:=22;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
22:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M5T1_done := FALSE;
		get_energy_M5T1(byte1:=5, byte2:=16#35, byte3:=1, energy=>MB_vars.M5T1, done=>get_energy_M5T1_done);
		IF get_energy_M5T1_done = TRUE THEN
			Mercury.M5T1:=MB_vars.M5T1;
			state:=23;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
23:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M5T2_done := FALSE;
		get_energy_M5T2(byte1:=5, byte2:=16#35, byte3:=2, energy=>MB_vars.M5T2,done=>get_energy_M5T2_done);
		IF get_energy_M5T2_done = TRUE THEN
			Mercury.M5T2:=MB_vars.M5T2;
			state:=24;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
24:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M6T1_done := FALSE;
		get_energy_M6T1(byte1:=5, byte2:=16#36, byte3:=1, energy=>MB_vars.M6T1, done=>get_energy_M6T1_done);
		IF get_energy_M6T1_done = TRUE THEN
			Mercury.M6T1:=MB_vars.M6T1;
			state:=25;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
25:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M6T2_done := FALSE;
		get_energy_M6T2(byte1:=5, byte2:=16#36, byte3:=2, energy=>MB_vars.M6T2,done=>get_energy_M6T2_done);
		IF get_energy_M6T2_done = TRUE THEN
			Mercury.M6T2:=MB_vars.M6T2;
			state:=26;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
26:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M7T1_done := FALSE;
		get_energy_M7T1(byte1:=5, byte2:=16#37, byte3:=1, energy=>MB_vars.M7T1, done=>get_energy_M7T1_done);
		IF get_energy_M7T1_done = TRUE THEN
			Mercury.M7T1:=MB_vars.M7T1;
			state:=27;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
27:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M7T2_done := FALSE;
		get_energy_M7T2(byte1:=5, byte2:=16#37, byte3:=2, energy=>MB_vars.M7T2,done=>get_energy_M7T2_done);
		IF get_energy_M7T2_done = TRUE THEN
			Mercury.M7T2:=MB_vars.M7T2;
			state:=28;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
28:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M8T1_done := FALSE;
		get_energy_M8T1(byte1:=5, byte2:=16#38, byte3:=1, energy=>MB_vars.M8T1, done=>get_energy_M8T1_done);
		IF get_energy_M8T1_done = TRUE THEN
			Mercury.M8T1:=MB_vars.M8T1;
			state:=29;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
29:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M8T2_done := FALSE;
		get_energy_M8T2(byte1:=5, byte2:=16#38, byte3:=2, energy=>MB_vars.M8T2,done=>get_energy_M8T2_done);
		IF get_energy_M8T2_done = TRUE THEN
			Mercury.M8T2:=MB_vars.M8T2;
			state:=30;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
30:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M9T1_done := FALSE;
		get_energy_M9T1(byte1:=5, byte2:=16#39, byte3:=1, energy=>MB_vars.M9T1, done=>get_energy_M9T1_done);
		IF get_energy_M9T1_done = TRUE THEN
			Mercury.M9T1:=MB_vars.M9T1;
			state:=31;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
31:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M9T2_done := FALSE;
		get_energy_M9T2(byte1:=5, byte2:=16#39, byte3:=2,  energy=>MB_vars.M9T2,done=>get_energy_M9T2_done);
		IF get_energy_M9T2_done = TRUE THEN
			Mercury.M9T2:=MB_vars.M9T2;
			state:=32;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
32:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M10T1_done := FALSE;
		get_energy_M10T1(byte1:=5, byte2:=16#3A, byte3:=1,  energy=>MB_vars.M10T1, done=>get_energy_M10T1_done);
		IF get_energy_M10T1_done = TRUE THEN
			Mercury.M10T1:=MB_vars.M10T1;
			state:=33;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
33:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M10T2_done := FALSE;
		get_energy_M10T2(byte1:=5, byte2:=16#3A, byte3:=2, energy=>MB_vars.M10T2,done=>get_energy_M10T2_done);
		IF get_energy_M10T2_done = TRUE THEN
			Mercury.M10T2:=MB_vars.M10T2;
			state:=34;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
34:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M11T1_done := FALSE;
		get_energy_M11T1(byte1:=5, byte2:=16#3B, byte3:=1,  energy=>MB_vars.M11T1, done=>get_energy_M11T1_done);
		IF get_energy_M11T1_done = TRUE THEN
			Mercury.M11T1:=MB_vars.M11T1;
			state:=35;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
35:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M11T2_done := FALSE;
		get_energy_M11T2(byte1:=5, byte2:=16#3B, byte3:=2, energy=>MB_vars.M11T2,done=>get_energy_M11T2_done);
		IF get_energy_M11T2_done = TRUE THEN
			Mercury.M11T2:=MB_vars.M11T2;
			state:=36;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
36:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M12T1_done := FALSE;
		get_energy_M12T1(byte1:=5, byte2:=16#3C, byte3:=1,  energy=>MB_vars.M12T1, done=>get_energy_M12T1_done);
		IF get_energy_M12T1_done = TRUE THEN
			Mercury.M12T1:=MB_vars.M12T1;
			state:=37;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF
37:
		tmCheck(in:=FALSE);
		tmCheck(in:=TRUE,pt:=t#2s);
		get_energy_M12T2_done := FALSE;
		get_energy_M12T2(byte1:=5, byte2:=16#3C, byte3:=2,  energy=>MB_vars.M12T2,done=>get_energy_M12T2_done);
		IF get_energy_M12T2_done = TRUE THEN
			Mercury.M12T2:=MB_vars.M12T2;
			state:=888;
		ELSIF tmcheck.Q THEN state:=888;
		END_IF



888:
		Timer1(IN:=NOT Timer1Q , PT:=T#60s , Q=>Timer1Q , ET=> );
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
	errorid=>);                 , N N Zм           Security Ђk]	
Ђk]        §џ]          П  PROGRAM Security
VAR
	TRIG_PIR_terrasa			:	F_TRIG;
	TRIG_PIR_zapad			:	F_TRIG;
	TRIG_PIR_vostok			:	F_TRIG;
	TRIG_PIR_sport			:	F_TRIG;
	TRIG_GERKON_drovnik	:	F_TRIG;
	TRIG_sensor_smoke_1floor:	F_TRIG;

	trig_mem_terrasa				:	BOOL:=FALSE;
	trig_mem_zapad				:	BOOL:=FALSE;
	trig_mem_vostok				:	BOOL:=FALSE;
	trig_mem_sport				:	BOOL:=FALSE;
	trig_mem_drovnik				:	BOOL:=FALSE;
	trig_mem_sensor_smoke_1floor	:	BOOL:=FALSE;

END_VAR  (*  Шёяюыќчѓхь ђ№шуух№ћ фыџ шёъыўїхэшџ ыюцэющ шэєю№ьрішш ю ё№рсюђъх фрђїшъют я№ш ях№хчру№ѓчъх ЯЫЪ *)


TRIG_PIR_terrasa(CLK :=HW_PIR_terrasa);
TRIG_PIR_zapad(CLK :=HW_PIR_zapad);
TRIG_PIR_vostok(CLK :=HW_PIR_vostok);
TRIG_PIR_sport(CLK :=HW_PIR_sport);
TRIG_GERKON_drovnik(CLK :=HW_GERKON_drovnik);
TRIG_sensor_smoke_1floor(CLK :=HW_sensor_smoke_1floor);


IF (NOT TRIG_PIR_terrasa.Q) THEN
	iobroker.PIR_terrasa:=NOT TRIG_PIR_terrasa.Q;
END_IF
IF (trig_mem_terrasa=TRUE) THEN
	iobroker.PIR_terrasa:=FALSE;
	trig_mem_terrasa:=FALSE;
END_IF
IF (TRIG_PIR_terrasa.Q) THEN
	trig_mem_terrasa:=TRUE;
END_IF



IF (NOT TRIG_PIR_zapad.Q) THEN
	iobroker.PIR_zapad:=NOT TRIG_PIR_zapad.Q;
END_IF
IF (trig_mem_zapad=TRUE) THEN
	iobroker.PIR_zapad:=FALSE;
	trig_mem_zapad:=FALSE;
END_IF
IF (TRIG_PIR_zapad.Q) THEN
	trig_mem_zapad:=TRUE;
END_IF


IF (NOT TRIG_PIR_vostok.Q) THEN
	iobroker.PIR_vostok:=NOT TRIG_PIR_vostok.Q;
END_IF
IF (trig_mem_vostok=TRUE) THEN
	iobroker.PIR_vostok:=FALSE;
	trig_mem_vostok:=FALSE;
END_IF
IF (TRIG_PIR_vostok.Q) THEN
	trig_mem_vostok:=TRUE;
END_IF


IF (NOT TRIG_PIR_sport.Q) THEN
	iobroker.PIR_sport:=NOT TRIG_PIR_sport.Q;
END_IF
IF (trig_mem_sport=TRUE) THEN
	iobroker.PIR_sport:=FALSE;
	trig_mem_sport:=FALSE;
END_IF
IF (TRIG_PIR_sport.Q) THEN
	trig_mem_sport:=TRUE;
END_IF

IF (NOT TRIG_GERKON_drovnik.Q) THEN
	iobroker.GERKON_drovnik:=NOT TRIG_GERKON_drovnik.Q;
END_IF
IF (trig_mem_drovnik=TRUE) THEN
	iobroker.GERKON_drovnik:=FALSE;
	trig_mem_drovnik:=FALSE;
END_IF
IF (TRIG_GERKON_drovnik.Q) THEN
	trig_mem_drovnik:=TRUE;
END_IF


IF (NOT TRIG_sensor_smoke_1floor.Q) THEN
	iobroker.SMOKE:=NOT TRIG_sensor_smoke_1floor.Q;
END_IF
IF (trig_mem_sensor_smoke_1floor=TRUE) THEN
	iobroker.SMOKE:=FALSE;
	trig_mem_sensor_smoke_1floor:=FALSE;
END_IF
IF (TRIG_sensor_smoke_1floor.Q) THEN
	trig_mem_sensor_smoke_1floor:=TRUE;
END_IF
               Q  , Ж Ж 2n           Sensors lS]	lS]       §џљ          к   PROGRAM Sensors
VAR
	Period_sensors_read		: INT:=30; (* зрёђюђр я№шётюхэшџ чэрїхэшщ рэрыюуютћѕ ђхьях№рђѓ№эћѕ фрђїшъют ё ьюфѓыхщ KL, ёхъѓэфћ *)
	Timer					: TON;
	TimerQ					: BOOL;
	tTimerValue				: TIME;
END_VAR  Timer();

tTimerValue := DINT_TO_TIME(Period_sensors_read*1000);

	Timer(IN:=NOT TimerQ , PT:=tTimerValue , Q=>TimerQ , ET=> );
	IF timer.q THEN

		(*Temperature First_floor start*)
		iobroker.First_floor_temp:=WORD_TO_REAL(HW_temp_first_floor);
		IF (iobroker.First_floor_temp/10>1000)  THEN
			iobroker.First_floor_temp:=iobroker.First_floor_temp-65535;
			iobroker.First_floor_temp:=iobroker.First_floor_temp/10;
		ELSE
			iobroker.First_floor_temp:=iobroker.First_floor_temp/10;
		END_IF
		(*Temperature First_floor end*)

		(*Temperature second_floor start*)
		iobroker.Second_floor_temp:=WORD_TO_REAL(HW_temp_second_floor);
		IF (iobroker.Second_floor_temp/10>1000)  THEN
			iobroker.Second_floor_temp:=iobroker.Second_floor_temp-65535;
			iobroker.Second_floor_temp:=iobroker.Second_floor_temp/10;
		ELSE
			iobroker.Second_floor_temp:=iobroker.Second_floor_temp/10;
		END_IF
		(*Temperature second_floor end*)

		(*Temperature second_floor start*)
		iobroker.Sport_temp:=WORD_TO_REAL(HW_temp_sport);
		IF (iobroker.Sport_temp/10>1000)  THEN
			iobroker.Sport_temp:=iobroker.Sport_temp-65535;
			iobroker.Sport_temp:=iobroker.Sport_temp/10;
		ELSE
			iobroker.Sport_temp:=iobroker.Sport_temp/10;
		END_IF
		(*Temperature second_floor end*)

		(*Temperature street start*)
		iobroker.Street_temp:=WORD_TO_REAL(HW_temp_street);
		IF (iobroker.Street_temp/10>1000)  THEN
			iobroker.Street_temp:=iobroker.Street_temp-65535;
			iobroker.Street_temp:=iobroker.Street_temp/10;
		ELSE
			iobroker.Street_temp:=iobroker.Street_temp/10;
		END_IF
		(*Temperature street end*)

		(*Temperature vent start*)
		iobroker.Vent_temp:=WORD_TO_REAL(HW_temp_vent);
		IF (iobroker.Vent_temp/10>1000)  THEN
			iobroker.Vent_temp:=iobroker.Vent_temp-65535;
			iobroker.Vent_temp:=iobroker.Vent_temp/10;
		ELSE
			iobroker.Vent_temp:=iobroker.Vent_temp/10;
		END_IF
		(*Temperature vent end*)
	END_IF               ]  , h h tу           Thermocontrol lS]	lS]      g S FRI        џ   PROGRAM Thermocontrol
VAR
	period_sec		: INT:=120;  (* зрёђюђр №рсюђћ ђх№ьюёђрђр, ёхъѓэфћ*)
	gisterezis		: REAL:=0.2; (*Ушёђх№хчшё ђх№ьюёђрђр, у№рфѓёћ іхыќёшџ *)
	Timer1			: TON;
	Timer1Q			: BOOL;
	state			: INT:=0;
	 tTimerValue		: TIME;
END_VARe  tTimerValue := DINT_TO_TIME(period_sec*1000);

CASE state OF
0:
	IF (iobroker.First_floor_temp > iobroker.First_floor_temp_target+gisterezis ) THEN
		HW_heat_first_floor:=FALSE;
	END_IF

	IF (iobroker.First_floor_temp <  iobroker.First_floor_temp_target-gisterezis ) THEN
		HW_heat_first_floor:=TRUE;
	END_IF

	state:=1;

1:
	IF (iobroker.Second_floor_temp > iobroker.Second_floor_temp_target+gisterezis ) THEN
		HW_heat_Second_floor:=FALSE;
	END_IF

	IF (iobroker.Second_floor_temp <  iobroker.Second_floor_temp_target-gisterezis ) THEN
		HW_heat_Second_floor:=TRUE;
	END_IF

	state:=2;
2:
	IF (iobroker.Sport_temp > iobroker.Sport_temp_target+gisterezis ) THEN
		HW_heat_sport:=FALSE;
	END_IF

	IF (iobroker.Sport_temp <  iobroker.Sport_temp_target-gisterezis ) THEN
		HW_heat_sport:=TRUE;
	END_IF

	state:=3;

3:
	IF (iobroker.Sauna_temp > iobroker.Sauna_temp_target+gisterezis ) THEN
		HW_heat_Sauna:=FALSE;
	END_IF

	IF (iobroker.Sauna_temp <  iobroker.Sauna_temp_target-gisterezis ) THEN
		HW_heat_Sauna:=TRUE;
	END_IF

	state:=4;

4:
	IF (iobroker.Underfloor_temp > iobroker.Underfloor_temp_target+gisterezis AND iobroker.Underfloor_humidity < iobroker.Underfloor_humidity_target-1 ) THEN
		HW_heat_underfloor:=FALSE;
	END_IF

	IF (iobroker.Underfloor_temp <  iobroker.Underfloor_temp_target-gisterezis OR iobroker.Underfloor_humidity > iobroker.Underfloor_humidity_target+1) THEN
		HW_heat_Underfloor:=TRUE;
	END_IF

	state:=100;



100:


	Timer1(IN:=NOT Timer1Q , PT:=tTimerValue , Q=>Timer1Q , ET=> );
		IF timer1.q THEN

		state:=0;
		END_IF



END_CASE
                 , p           VentControl lS]	lS]         tt            PROGRAM VentControl
VAR
	Temperature_max_to_heat	: REAL:=17;		(* Ьръёшьрыќэрџ ђхьях№рђѓ№р эр№ѓцэхую тючфѓѕр я№ш ъюђю№ющ №рч№хјхэю тъыўїрђќ тючфѓѕюэру№хтрђхыќ*)
	gisterezis				: REAL:=0.2;	(* Ушёђх№хчшё  №рч№хјхэшџ тъыўїхэшџ тючфѓѕюэру№хтрђхыџ, у№рфѓёћ іхыќёшџ *)
	vent_valve_opened	 	: BOOL:=FALSE;	(*Яюёых ях№хчру№ѓчъш ЯЫЪ ёїшђрхь їђю я№шђюїэћщ ъырярэ чръ№ћђ *)
	Period_start_delay		: INT:=60; 	(* Т№хьџ чрфх№цъш тъыўїхэшџ тхэђшыџђю№р яюёых ёшуэрыр эр юђъ№ћђшх я№шђюїэюую ъырярэр, ёхъ *)
	Period_stop_delay		: INT:=60;		(* Т№хьџ чрфх№цъш юђъыўїхэшџ тхэђшыџђю№р яюёых ёшуэрыр эр юёђрэют тхэђшыџішш - фыџ юёђѓцхэшџ №рчюу№хђћѕ внЭют тючфѓѕюэру№хтрђхыџ, ёхъ *)
	Timer1					: TON;		(* врщьх№ чрфх№цъш тъыўїхэшџ тхэђшыџђю№р яюёых ёшуэрыр эр юђъ№ћђшх я№шђюїэюую ъырярэр *)
	Timer2					: TON;		(* врщьх№ чрфх№цъш юђъыўїхэшџ тхэђшыџђю№р яюёых ёшуэрыр эр юёђрэют тхэђшыџішш - фыџ юёђѓцхэшџ №рчюу№хђћѕ внЭют тючфѓѕюэру№хтрђхыџ *)
	Timer1Q					: BOOL;
	Timer2Q					: BOOL;
	tTimerValue1				: TIME;
	tTimerValue2				: TIME;
END_VARЩ  tTimerValue1 := DINT_TO_TIME(Period_start_delay*1000);
tTimerValue2 := DINT_TO_TIME(Period_stop_delay*1000);

IF (iobroker.Vent=FALSE) THEN
	HW_vent_in_heat := FALSE;
	vent_valve_opened := FALSE;
	HW_vent_valve_input:=FALSE;
	Timer2(IN:=NOT Timer2Q , PT:=tTimerValue2 , Q=>Timer2Q , ET=> );
	IF timer2q THEN
		HW_trans_power:=FALSE;
	END_IF


ELSE
	HW_vent_valve_input:=TRUE;
	HW_vent_valve_output:=TRUE;

	IF (vent_valve_opened = FALSE) THEN
		Timer1(IN:=NOT Timer1Q , PT:=tTimerValue1 , Q=>Timer1Q , ET=> );
		IF timer1.q THEN
			vent_valve_opened := TRUE;
		END_IF
	END_IF

	IF (vent_valve_opened=TRUE) THEN
		HW_trans_power:=TRUE;
(*		IF (HW_vent_reay_pressure=TRUE) THEN	*)

			IF (iobroker.Vent_heat=2) THEN
				IF (iobroker.Street_temp < Temperature_max_to_heat-gisterezis) THEN
					HW_vent_in_heat:=TRUE;
					IF (iobroker.Vent_heat_level=TRUE) THEN
						HW_vent_in_heat_level:=TRUE;
					END_IF
				END_IF
				IF (iobroker.Street_temp > Temperature_max_to_heat+gisterezis) THEN
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
(*		END_IF   *)(*vent_relay_pressure*)
	END_IF (*vent_valve_opened*)
END_IF (*Vent*)




               '   , AN        	   VentPower lS]	lS]      ordd           ч  PROGRAM VentPower
VAR
	Vent_power			: REAL:=30;  (* Яюёых ях№хчру№ѓчъш ЯЫЪ чрфрИь эрїрыќэѓў ьюљэюёђќ ѓёыютэћѕ 30%  *)
	CO2_old				: REAL:=410; (* Яюёых ях№хчру№ѓчъш ЯЫЪ чрфрИь я№шэѓфшђхыќэю яюёыхфэхх чэрїхэшх CO2 = 410 (рсёюыўђэю ётхцшщ тючфѓѕ) *)
	Period_vent_switch	: INT:=60; (* зрёђюђр ях№хъыўїхэшџ №хцшьют №рсюђћ тхэђшыџђю№р яю яюърчрэшџь фрђїшъют CO2, ёхъѓэфћ*)
	Timer1				: TON;
	Timer1Q				: BOOL;
	count				: INT:=0;
	CO2_max			: REAL;
	tTimerValue			: TIME;

END_VARg  tTimerValue := DINT_TO_TIME(Period_vent_switch*1000);

IF (iobroker.Vent =TRUE  ) THEN

	Timer1(IN:=NOT Timer1Q , PT:=tTimerValue , Q=>Timer1Q , ET=> );

	IF timer1.q THEN
	CO2_max:=MAX (iobroker.First_floor_CO2, iobroker.Second_floor_CO2);

	IF (  (CO2_max >=  CO2_old-10 )  AND ( CO2_max >  INT_TO_REAL(iobroker.Target_CO2)*1.05 ) ) THEN
			Vent_power:=Vent_power+5;
		END_IF
		count:=count+1;

		IF (count = 2)	THEN
			IF (  CO2_max <=  INT_TO_REAL(iobroker.Target_CO2)*0.99) THEN
				Vent_power:=Vent_power-1;
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

			iobroker.Vent_input_level:=200;	(*200 ь. ъѓс т їрё я№ш яюфрїх эря№џцхэшџ эр тхэђшыџђю№  220V *)
			HW_vent_in_trans_160_220:=FALSE;
			HW_vent_in_trans_LO_HI:=FALSE;


			ELSIF (Vent_Power>50 ) THEN

				iobroker.Vent_input_level:=180; (*200 ь. ъѓс т їрё я№ш яюфрїх эря№џцхэшџ эр тхэђшыџђю№ 220V *)
				HW_vent_in_trans_160_220:=FALSE;
				HW_vent_in_trans_LO_HI:=FALSE;

			ELSIF (Vent_Power>35 AND Vent_Power<=50) THEN

					iobroker.Vent_input_level:=150; (* 150 ь. ъѓс т їрё я№ш яюфрїх эря№џцхэшџ эр тхэђшыџђю№160V *)
					HW_vent_in_trans_160_220:=TRUE;
					HW_vent_in_trans_LO_HI:=FALSE;

			ELSIF (Vent_Power>25 AND Vent_Power<=35) THEN

					iobroker.Vent_input_level:=110; (* 110 ь. ъѓс т їрё я№ш яюфрїх эря№џцхэшџ эр тхэђшыџђю№ 130V *)
					HW_vent_in_trans_105_130:=FALSE;
					HW_vent_in_trans_LO_HI:=TRUE;


			ELSE
				iobroker.Vent_input_level:=80; (* 80 ь. ъѓс т їрё я№ш яюфрїх эря№џцхэшџ эр тхэђшыџђю№ 105V *)
				HW_vent_in_trans_105_130:=TRUE;
				HW_vent_in_trans_LO_HI:=TRUE;


			END_IF

			CO2_old:=CO2_max;

		END_IF	(* Timer1 *)

	ELSE	 (* Vent=TRUE*)


		iobroker.Vent_input_level:=0;

END_IF   (* Vent=TRUE*)                 §џџџ,   дp         "   standard.lib 5.6.98 11:03:02 @w5   TcpIp.lib 9.1.14 13:33:22 @в^ЮR!   TcBase.lib 14.5.09 11:14:08 @АЖJ"   TcSystem.lib 7.6.16 10:01:22 @"UVW$   ModbusRTU.lib 13.5.15 12:38:16 @hџRU(   TcIoFunctions.lib 27.1.17 16:22:22 @n-X#   COMlibV2.lb6 25.2.14 08:37:08 @фS%   TcUtilities.lib 3.2.16 15:08:58 @КбБV      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @              F_GetVersionTcpIp @      E_WinsockError       ST_SockAddr       ST_TcIpConnSvrResponse       ST_TcIpConnSvrUdpBuffer    	   T_HSOCKET                  FB_SocketAccept @          FB_SocketClose @          FB_SocketCloseAll @          FB_SocketConnect @          FB_SocketListen @          FB_SocketReceive @          FB_SocketSend @       %   FB_SocketUdpAddMulticastAddress @          FB_SocketUdpCreate @       &   FB_SocketUdpDropMulticastAddress @          FB_SocketUdpReceiveFrom @          FB_SocketUdpSendTo @             Global_Variables @          z   FW_AdsClearEvents @      FW_NoOfByte       FW_SystemInfoType       FW_SystemTaskInfoType    
   FW_TcEvent                   FW_AdsLogDINT @           FW_AdsLogEvent @           FW_AdsLogLREAL @           FW_AdsLogSTR @           FW_AdsRdWrt @           FW_AdsRdWrtInd @           FW_AdsRdWrtRes @           FW_AdsRead @           FW_AdsReadDeviceInfo @           FW_AdsReadInd @           FW_AdsReadRes @           FW_AdsReadState @           FW_AdsWrite @           FW_AdsWriteControl @           FW_AdsWriteInd @           FW_AdsWriteRes @           FW_DRand @           FW_GetCpuAccount @           FW_GetCpuCounter @           FW_GetCurTaskIndex @           FW_GetSystemTime @           FW_GetVersionTcBase @           FW_LptSignal @           FW_MemCmp @           FW_MemCpy @           FW_MemMove @           FW_MemSet @           FW_PortRead @          FW_PortWrite @           T   ^  ADSCLEAREVENTS @%      E_IOAccessSize    
   E_OpenPath       E_SeekOrigin       E_TcEventClass       E_TcEventClearModes       E_TcEventPriority       E_TcEventStreamType       E_UsrLED_Color       E_WATCHDOG_TIME_CONFIG       ExpressionResult       PVOID       SFCActionType       SFCStepType       ST_AdsBaDevApiHead       ST_AdsBaDevApiIoCtlModifier       ST_AdsBaDevApiReq       ST_AdsCallGenericFbExReq       ST_AdsRdWrtListHead       ST_AdsRdWrtListPara       ST_AdsReadWriteListEntry    
   ST_AmsAddr       ST_StructMemberAlignmentProbe       ST_WD_GPIO_Info       ST_WD_GPIO_InfoEx       SYSTEMINFOTYPE       SYSTEMTASKINFOTYPE    
   T_AmsNetId       T_AmsNetIdArr    	   T_AmsPort    
   T_IPv4Addr       T_IPv4AddrArr       T_MaxString       T_U64KAFFINITY       TcEvent       UXINT       XINT       XWORD                   ADSLOGDINT @           ADSLOGEVENT @           ADSLOGLREAL @           ADSLOGSTR @           ADSRDDEVINFO @           ADSRDSTATE @           ADSRDWRT @           ADSRDWRTEX @           ADSRDWRTIND @           ADSRDWRTRES @           ADSREAD @           ADSREADEX @           ADSREADIND @           ADSREADRES @           ADSWRITE @           ADSWRITEIND @           ADSWRITERES @           ADSWRTCTL @           AnalyzeExpression @          AnalyzeExpressionCombined @          AnalyzeExpressionTable @          AppendErrorString @          BAVERSION_TO_DWORD @          CLEARBIT32 @           CSETBIT32 @           DRAND @           F_CompareFwVersion @          F_CreateAmsNetId @           F_CreateIPv4Addr @           F_GetStructMemberAlignment @          F_GetVersionTcSystem @           F_IOPortRead @          F_IOPortWrite @          F_ScanAmsNetIds @          F_ScanIPv4AddrIds @          F_SplitPathName @          F_ToASC @          F_ToCHR @          FB_AdsReadWriteList @          FB_BaDeviceIoControl @          FB_BaGenGetVersion @          FB_CreateDir @          FB_EOF @           FB_FileClose @           FB_FileDelete @           FB_FileGets @           FB_FileOpen @           FB_FilePuts @           FB_FileRead @           FB_FileRename @           FB_FileSeek @           FB_FileTell @           FB_FileWrite @           FB_PcWatchdog @          FB_PcWatchdog_BAPI @          FB_RemoveDir @          FB_SetLedColor_BAPI @          FB_SimpleAdsLogEvent @          FILECLOSE @           FILEOPEN @           FILEREAD @           FILESEEK @           FILEWRITE @           FW_CallGenericFb @          FW_CallGenericFbEx @          FW_CallGenericFun @          GETBIT32 @           GETCPUACCOUNT @           GETCPUCOUNTER @           GETCURTASKINDEX @           GETSYSTEMTIME @           GETTASKTIME @          LPTSIGNAL @           MEMCMP @           MEMCPY @           MEMMOVE @           MEMSET @           ROL32 @           ROR32 @           SETBIT32 @           SFCActionControl @           SHL32 @           SHR32 @              Global_Variables @        g   є  Get_ModbusRTU_Version @      MB_KL6inData       MB_KL6inData22B       MB_KL6inData5B       MB_KL6outData       MB_KL6outData22B       MB_KL6outData5B       MB_PcComInData       MB_PcComOutData       MBcomDebugBuffer       MBserialLineMode_t       MODBUS_ERRORS       MODBUS_FUNCTIONS       MODBUS_MEMORYTYPE       MODBUS_STATES       MODBUS_UNITID       ModbusComBuffer       ST_ModbusCom       ST_ModbusComBuffers       ST_ModbusCRC16       ST_ModbusErrorDiagnostics                  ModbusAddressValid @          ModbusCRC16 @          ModbusReadBits @          ModbusReadReg @          ModbusReceiveByte @          ModbusReceiveModData @          ModbusRtuMaster @       )   ModbusRtuMaster._ModbusMasterAction @       !   ModbusRtuMaster.Diagnostics @          ModbusRtuMaster.ReadCoils @       #   ModbusRtuMaster.ReadInputRegs @       %   ModbusRtuMaster.ReadInputStatus @          ModbusRtuMaster.ReadRegs @       (   ModbusRtuMaster.WriteMultipleCoils @          ModbusRtuMaster.WriteRegs @       %   ModbusRtuMaster.WriteSingleCoil @       )   ModbusRtuMaster.WriteSingleRegister @          ModbusRtuMaster_KL6x22B @       )   ModbusRtuMaster_KL6x22B.Diagnostics @       '   ModbusRtuMaster_KL6x22B.ReadCoils @       +   ModbusRtuMaster_KL6x22B.ReadInputRegs @       -   ModbusRtuMaster_KL6x22B.ReadInputStatus @       &   ModbusRtuMaster_KL6x22B.ReadRegs @       0   ModbusRtuMaster_KL6x22B.WriteMultipleCoils @       '   ModbusRtuMaster_KL6x22B.WriteRegs @       -   ModbusRtuMaster_KL6x22B.WriteSingleCoil @       1   ModbusRtuMaster_KL6x22B.WriteSingleRegister @          ModbusRtuMaster_KL6x5B @       (   ModbusRtuMaster_KL6x5B.Diagnostics @       &   ModbusRtuMaster_KL6x5B.ReadCoils @       *   ModbusRtuMaster_KL6x5B.ReadInputRegs @       ,   ModbusRtuMaster_KL6x5B.ReadInputStatus @       %   ModbusRtuMaster_KL6x5B.ReadRegs @       /   ModbusRtuMaster_KL6x5B.WriteMultipleCoils @       &   ModbusRtuMaster_KL6x5B.WriteRegs @       ,   ModbusRtuMaster_KL6x5B.WriteSingleCoil @       0   ModbusRtuMaster_KL6x5B.WriteSingleRegister @          ModbusRtuMaster_PcCOM @       '   ModbusRtuMaster_PcCOM.Diagnostics @       %   ModbusRtuMaster_PcCOM.ReadCoils @       )   ModbusRtuMaster_PcCOM.ReadInputRegs @       +   ModbusRtuMaster_PcCOM.ReadInputStatus @       $   ModbusRtuMaster_PcCOM.ReadRegs @       .   ModbusRtuMaster_PcCOM.WriteMultipleCoils @       %   ModbusRtuMaster_PcCOM.WriteRegs @       +   ModbusRtuMaster_PcCOM.WriteSingleCoil @       /   ModbusRtuMaster_PcCOM.WriteSingleRegister @          ModbusRtuMasterV2 @       +   ModbusRtuMasterV2._ModbusMasterAction @       #   ModbusRtuMasterV2.Diagnostics @       !   ModbusRtuMasterV2.ReadCoils @       %   ModbusRtuMasterV2.ReadInputRegs @       '   ModbusRtuMasterV2.ReadInputStatus @           ModbusRtuMasterV2.ReadRegs @       %   ModbusRtuMasterV2.ReadWriteRegs @       *   ModbusRtuMasterV2.WriteMultipleCoils @       !   ModbusRtuMasterV2.WriteRegs @       '   ModbusRtuMasterV2.WriteSingleCoil @       +   ModbusRtuMasterV2.WriteSingleRegister @          ModbusRtuMasterV2_KL6x22B @       +   ModbusRtuMasterV2_KL6x22B.Diagnostics @       )   ModbusRtuMasterV2_KL6x22B.ReadCoils @       -   ModbusRtuMasterV2_KL6x22B.ReadInputRegs @       /   ModbusRtuMasterV2_KL6x22B.ReadInputStatus @       (   ModbusRtuMasterV2_KL6x22B.ReadRegs @       -   ModbusRtuMasterV2_KL6x22B.ReadWriteRegs @       2   ModbusRtuMasterV2_KL6x22B.WriteMultipleCoils @       )   ModbusRtuMasterV2_KL6x22B.WriteRegs @       /   ModbusRtuMasterV2_KL6x22B.WriteSingleCoil @       3   ModbusRtuMasterV2_KL6x22B.WriteSingleRegister @          ModbusRtuMasterV2_KL6x5B @       *   ModbusRtuMasterV2_KL6x5B.Diagnostics @       (   ModbusRtuMasterV2_KL6x5B.ReadCoils @       ,   ModbusRtuMasterV2_KL6x5B.ReadInputRegs @       .   ModbusRtuMasterV2_KL6x5B.ReadInputStatus @       '   ModbusRtuMasterV2_KL6x5B.ReadRegs @       ,   ModbusRtuMasterV2_KL6x5B.ReadWriteRegs @       1   ModbusRtuMasterV2_KL6x5B.WriteMultipleCoils @       (   ModbusRtuMasterV2_KL6x5B.WriteRegs @       .   ModbusRtuMasterV2_KL6x5B.WriteSingleCoil @       2   ModbusRtuMasterV2_KL6x5B.WriteSingleRegister @          ModbusRtuMasterV2_PcCOM @       )   ModbusRtuMasterV2_PcCOM.Diagnostics @       '   ModbusRtuMasterV2_PcCOM.ReadCoils @       +   ModbusRtuMasterV2_PcCOM.ReadInputRegs @       -   ModbusRtuMasterV2_PcCOM.ReadInputStatus @       &   ModbusRtuMasterV2_PcCOM.ReadRegs @       +   ModbusRtuMasterV2_PcCOM.ReadWriteRegs @       0   ModbusRtuMasterV2_PcCOM.WriteMultipleCoils @       '   ModbusRtuMasterV2_PcCOM.WriteRegs @       -   ModbusRtuMasterV2_PcCOM.WriteSingleCoil @       1   ModbusRtuMasterV2_PcCOM.WriteSingleRegister @          ModbusRtuSlave @       &   ModbusRtuSlave.ActGetMemoryRange @          ModbusRtuSlave_KL6x22B @          ModbusRtuSlave_KL6x5B @          ModbusRtuSlave_PcCOM @          ModbusSendModData @          ModbusSerialLineControl @          ModbusWriteBit @          ModbusWriteBits @          ModbusWriteReg @             Global_Variables_Modbus @       c     F_ByteSwap @;      ControlActiveConfiguration_t       E_BatteryStatus       E_IOACCESSTYPE       E_PD_Datatype       E_PD_Dpv1Error       E_PD_DriveType       E_PD_SaveType    
   E_PD_State       E_SercosAttribLen       E_SercosAttribType       E_SercosBackupState       E_SercosParamDataType       E_UpsCommStatus       E_UpsPowerStatus       FC310X_DIAG_DATA       FC510X_DIAG_DATA       GetErrorInfo_t       HLword_t       IODEVICETYPES       ReadResult_t       ST_AdsTecSysData       ST_Dpv1Header       ST_Dpv1ParamAddr       ST_Dpv1ParamAddrEx       ST_Dpv1ValueHeader       ST_Dpv1ValueHeaderEx       ST_KL1501InData       ST_KL1501OutData       ST_KL27x1InData       ST_KL27x1OutData       ST_KL3208InData       ST_KL3208OutData       ST_KL320xInData       ST_KL320xOutData       ST_KL3228InData       ST_KL3228OutData       ST_NovRamAddrInfo       ST_NovRamAddrInfoEx       ST_Parameter_IN       ST_Parameter_OUT       ST_ParameterBuffer       ST_PD_CUDriveInfo       ST_PD_DOIdentification       ST_PD_Dpv1Error       ST_PD_DriveDiag       ST_PNET_CCDSTS       ST_PNIOConfigRecord       ST_PNIORecord       ST_PNIOState    	   ST_PZD_IN    
   ST_PZD_OUT       ST_SercosFileHeader       ST_SercosParamAttrib       ST_SercosParamData       ST_SercosParamErrList       ST_SercosParamHeader       ST_SercosParamList       ST_SercosString       ST_UPSStatus                  F_CheckForSwapBytes @          F_CreateDpv1ReadReqPkg @           F_CreateDpv1ReadReqPkgPNET @          F_CreateDpv1WriteReqPkg @       !   F_CreateDpv1WriteReqPkgPNET @          F_GetDataString @          F_GetPDTypeSize @          F_GetVersionTcIoFunctions @           F_SplitDpv1ReadResPkg @          F_SplitDpv1ReadResPkgPNET @          F_SplitDpv1WriteResPkg @           F_SplitDpv1WriteResPkgPNET @          FB_ASI_Addressing @           FB_ASI_ParameterControl @          FB_ASI_Parameterinterface @           FB_ASI_Processdata_analog @            FB_ASI_Processdata_digital @           FB_ASI_Projecting @           FB_ASI_ReadParameter @           FB_ASI_SlaveDiag @           FB_ASI_WriteParameter @           FB_ASI_WriteReadParameter @          FB_AX2000_AXACT @        !   FB_AX2000_AXACT.a_MapInputs @       "   FB_AX2000_AXACT.a_MapOutputs @       #   FB_AX2000_AXACT.a_RW_CtrlWord @          FB_AX2000_AXACT.a_RW_PZD @          FB_AX2000_JogMode @        #   FB_AX2000_JogMode.a_MapInputs @       $   FB_AX2000_JogMode.a_MapOutputs @          FB_AX2000_Parameter @           FB_AX2000_Reference @        %   FB_AX2000_Reference.a_MapInputs @       &   FB_AX2000_Reference.a_MapOutputs @          FB_AX200X_Profibus @           FB_Dpv1Read @          FB_Dpv1ReadPNET @          FB_Dpv1Write @          FB_Dpv1WritePNET @          FB_FCxxxxDpv0PkwRead @           FB_FCxxxxDpv0PkwWrite @           FB_GetDPRAMInfo @          FB_GetDPRAMInfoEx @          FB_GetUPSStatus @          FB_KL1501Config @       '   FB_KL1501Config.A_ReadConfigTable @       &   FB_KL1501Config.A_SetConfigTable @          FB_KL27x1Config @       '   FB_KL27x1Config.A_ReadConfigTable @       &   FB_KL27x1Config.A_SetConfigTable @          FB_KL3208Config @       '   FB_KL3208Config.A_ReadConfigTable @       &   FB_KL3208Config.A_SetConfigTable @          FB_KL320xConfig @       '   FB_KL320xConfig.A_ReadConfigTable @       &   FB_KL320xConfig.A_SetConfigTable @          FB_KL3228Config @       '   FB_KL3228Config.A_ReadConfigTable @       &   FB_KL3228Config.A_SetConfigTable @          FB_NovRamReadWrite @           FB_NovRamReadWriteEx @          FB_ReadAdsTecSysData @          FB_ReadInput_analog @          FB_WriteOutput_analog @          IOF_CAN_Layer2Command @           IOF_DeviceReset @           IOF_GetBoxAddrByName @           IOF_GetBoxAddrByNameEx @           IOF_GetBoxCount @           IOF_GetBoxNameByAddr @           IOF_GetBoxNetId @           IOF_GetDeviceCount @           IOF_GetDeviceIDByName @           IOF_GetDeviceIDs @           IOF_GetDeviceInfoByName @           IOF_GetDeviceName @           IOF_GetDeviceNetId @           IOF_GetDeviceType @           IOF_LB_BreakLocationTest @           IOF_LB_ParityCheck @        !   IOF_LB_ParityCheckWithReset @           IOF_SER_DRIVE_Backup @           IOF_SER_DRIVE_BackupEx @          IOF_SER_DRIVE_Reset @           IOF_SER_GetPhase @           IOF_SER_IDN_Read @           IOF_SER_IDN_Write @           IOF_SER_ResetErr @           IOF_SER_SaveFlash @           IOF_SER_SetPhase @            SCIT_ActivateConfiguration @           SCIT_AlarmStop @           SCIT_ConfDevErrAll @        %   SCIT_ControlActiveConfiguration @        "   SCIT_DeactivateConfiguration @           SCIT_GetErrorInfo @           SCIT_StartDataTransfer @           SCIT_StopDataTransfer @              Globale_Variablen @           >  _ReceiveString @   	   ComBuffer       ComDebugBuffer    
   ComError_t       ComHandshake_t       ComParity_t       ComRegisterData_t       ComRegisterList_t       ComSerialLineMode_t    	   KL6inData       KL6inData22B       KL6inData5B    
   KL6outData       KL6outData22B       KL6outData5B                  _SendString @          _strncpy @       	   ASC @       	   CHR @          ClearComBuffer @          ComReset @          Get_ComLib_Version @          KL6configuration @          KL6ReadRegisters @          KL6WriteRegisters @          ReceiveByte @          ReceiveData @          ReceiveString @          ReceiveString255 @          SendByte @          SendData @          SendString @          SendString255 @          SerialLineControl @          "   Global_Constants_ComLibSizes @       $   Global_Constants_ComLibVersion @       J    ARG_TO_CSVFIELD @@      ADSDATATYPEID       E_AmsLoggerMode    	   E_ArgType       E_DbgContext       E_DbgDirection       E_EnumCmdType       E_FileRBufferCmd       E_HashPrefixTypes       E_MIB_IF_Type       E_NumGroupTypes       E_PersistentMode       E_PrefixFlagParam       E_RegValueType       E_RouteTransportType    
   E_SBCSType       E_ScopeServerState       E_TimeZoneID       E_TypeFieldParam       E_UTILITIES_ERRORCODES       GUID       OTSTRUCT       PROFILERSTRUCT       REMOTEPC       REMOTEPCINFOSTRUCT       ST_AmsFindFileSystemEntry       ST_AmsGetTimeZoneInformation       ST_AmsLoggerReq       ST_AmsRouteEntry       ST_AmsRouteEntryHead       ST_AmsRouterInfoEntry       ST_AmsRouteSystemEntry       ST_AmsStartProcessReq       ST_AmsSymbolInfoEntry       ST_DeviceIdentification       ST_DeviceIdentificationEx       ST_FileAttributes       ST_FileRBufferHead       ST_FindFileEntry       ST_FormatParameters       ST_HKeySrvRead       ST_HKeySrvWrite       ST_IP_ADAPTER_INFO       ST_IP_ADDR_STRING       ST_IPAdapterHwAddr       ST_IPAdapterInfo       ST_SBCSTable    #   ST_ScopeServerRecordModeDescription       ST_TcRouterStatusInfo       ST_TimeZoneInformation       SYMINFO_BUFFER       SYMINFOSTRUCT       T_Arg    
   T_FILETIME       T_FIX16    
   T_FloatRec       T_HashTableEntry       T_HHASHTABLE       T_HLINKEDLIST       T_HUGE_INTEGER       T_LARGE_INTEGER       T_LinkedListEntry       T_UHUGE_INTEGER       T_ULARGE_INTEGER    
   TIMESTRUCT                  BCD_TO_DEC @           BE128_TO_HOST @          BE16_TO_HOST @          BE32_TO_HOST @          BE64_TO_HOST @          BYTE_TO_BINSTR @          BYTE_TO_DECSTR @          BYTE_TO_HEXSTR @          BYTE_TO_LREALEX @          BYTE_TO_OCTSTR @          BYTEARR_TO_MAXSTRING @          CSVFIELD_TO_ARG @          CSVFIELD_TO_STRING @          DATA_TO_HEXSTR @          DCF77_TIME @          DCF77_TIME_EX @          DEC_TO_BCD @           DEG_TO_RAD @           DINT_TO_DECSTR @          DT_TO_FILETIME @          DT_TO_SYSTEMTIME @           DWORD_TO_BINSTR @          DWORD_TO_DECSTR @          DWORD_TO_HEXSTR @          DWORD_TO_LREALEX @          DWORD_TO_OCTSTR @          F_ARGCMP @          F_ARGCPY @          F_ARGIsZero @          F_BIGTYPE @          F_BOOL @          F_BYTE @           F_BYTE_TO_CRC16_CCITT @          F_CheckSum16 @           F_CRC16_CCITT @           F_CreateHashTableHnd @          F_CreateLinkedListHnd @          F_DATA_TO_CRC16_CCITT @          F_DINT @           F_DWORD @           F_FormatArgToStr @          F_GetDayOfMonthEx @          F_GetDayOfWeek @          F_GetDOYOfYearMonthDay @          F_GetFloatRec @          F_GetMaxMonthDays @          F_GetMonthOfDOY @          F_GetVersionTcUtilities @           F_GetWeekOfTheYear @          F_HUGE @          F_INT @           F_LARGE @          F_LREAL @           F_LTrim @          F_PVOID @          F_REAL @           F_RTrim @          F_SINT @           F_STRING @           F_SwapReal @           F_SwapRealEx @          F_ToLCase @          F_ToUCase @          F_TranslateFileTimeBias @          F_UDINT @           F_UHUGE @          F_UINT @           F_ULARGE @          F_USINT @           F_WORD @           F_YearIsLeapYear @          FB_AddRouteEntry @          FB_AmsLogger @          FB_BasicPID @           FB_BufferedTextFileWriter @       '   FB_BufferedTextFileWriter.A_Reset @          FB_ConnectScopeServer @          FB_CSVMemBufferReader @          FB_CSVMemBufferWriter @          FB_DbgOutputCtrl @          FB_DbgOutputCtrl.A_Log @          FB_DbgOutputCtrl.A_LogHex @          FB_DbgOutputCtrl.A_Reset @          FB_DisconnectScopeServer @          FB_EnumFindFileEntry @          FB_EnumFindFileList @          FB_EnumRouteEntry @          FB_EnumStringNumbers @          FB_FileRingBuffer @       !   FB_FileRingBuffer.A_AddTail @          FB_FileRingBuffer.A_Close @           FB_FileRingBuffer.A_Create @       !   FB_FileRingBuffer.A_GetHead @          FB_FileRingBuffer.A_Open @       $   FB_FileRingBuffer.A_RemoveHead @          FB_FileRingBuffer.A_Reset @       &   FB_FileTimeToTzSpecificLocalTime @       .   FB_FileTimeToTzSpecificLocalTime.A_Reset @          FB_FormatString @           FB_GetAdaptersInfo @           FB_GetDeviceIdentification @       "   FB_GetDeviceIdentificationEx @          FB_GetHostAddrByName @          FB_GetHostName @          FB_GetLocalAmsNetId @          FB_GetRouterStatusInfo @          FB_GetTimeZoneInformation @          FB_HashTableCtrl @          FB_HashTableCtrl.A_Add @       !   FB_HashTableCtrl.A_GetFirst @       )   FB_HashTableCtrl.A_GetIndexAtPosPtr @           FB_HashTableCtrl.A_GetNext @          FB_HashTableCtrl.A_Lookup @          FB_HashTableCtrl.A_Remove @       "   FB_HashTableCtrl.A_RemoveAll @       $   FB_HashTableCtrl.A_RemoveFirst @          FB_HashTableCtrl.A_Reset @          FB_LinkedListCtrl @       &   FB_LinkedListCtrl.A_AddHeadValue @       &   FB_LinkedListCtrl.A_AddTailValue @       "   FB_LinkedListCtrl.A_FindNext @       "   FB_LinkedListCtrl.A_FindPrev @       !   FB_LinkedListCtrl.A_GetHead @       *   FB_LinkedListCtrl.A_GetIndexAtPosPtr @       !   FB_LinkedListCtrl.A_GetNext @       !   FB_LinkedListCtrl.A_GetPrev @       !   FB_LinkedListCtrl.A_GetTail @       )   FB_LinkedListCtrl.A_RemoveHeadValue @       )   FB_LinkedListCtrl.A_RemoveTailValue @       -   FB_LinkedListCtrl.A_RemoveValueAtPosPtr @          FB_LinkedListCtrl.A_Reset @       *   FB_LinkedListCtrl.A_SetValueAtPosPtr @          FB_LocalSystemTime @          FB_MemBufferMerge @          FB_MemBufferSplit @          FB_MemRingBuffer @           FB_MemRingBuffer.A_AddTail @           FB_MemRingBuffer.A_GetHead @       #   FB_MemRingBuffer.A_RemoveHead @          FB_MemRingBuffer.A_Reset @          FB_MemRingBufferEx @       "   FB_MemRingBufferEx.A_AddTail @       #   FB_MemRingBufferEx.A_FreeHead @       &   FB_MemRingBufferEx.A_GetFreeSize @       "   FB_MemRingBufferEx.A_GetHead @           FB_MemRingBufferEx.A_Reset @          FB_MemStackBuffer @          FB_MemStackBuffer.A_Pop @          FB_MemStackBuffer.A_Push @          FB_MemStackBuffer.A_Reset @          FB_MemStackBuffer.A_Top @          FB_RegQueryValue @           FB_RegSetValue @           FB_RemoveRouteEntry @           FB_ResetScopeServerControl @          FB_SaveScopeServerData @          FB_ScopeServerControl @          FB_SetTimeZoneInformation @          FB_StartScopeServer @          FB_StopScopeServer @          FB_StringRingBuffer @       #   FB_StringRingBuffer.A_AddTail @       #   FB_StringRingBuffer.A_GetHead @       &   FB_StringRingBuffer.A_RemoveHead @       !   FB_StringRingBuffer.A_Reset @       (   FB_SystemTimeToTzSpecificLocalTime @       0   FB_SystemTimeToTzSpecificLocalTime.A_Reset @          FB_TextFileRingBuffer @       %   FB_TextFileRingBuffer.A_AddTail @       #   FB_TextFileRingBuffer.A_Close @       "   FB_TextFileRingBuffer.A_Open @       #   FB_TextFileRingBuffer.A_Reset @       (   FB_TranslateLocalTimeToUtcByZoneID @       0   FB_TranslateLocalTimeToUtcByZoneID.A_Reset @       (   FB_TranslateUtcToLocalTimeByZoneID @       0   FB_TranslateUtcToLocalTimeByZoneID.A_Reset @       &   FB_TzSpecificLocalTimeToFileTime @       .   FB_TzSpecificLocalTimeToFileTime.A_Reset @       (   FB_TzSpecificLocalTimeToSystemTime @       0   FB_TzSpecificLocalTimeToSystemTime.A_Reset @          FB_WritePersistentData @          FILETIME_TO_DT @          FILETIME_TO_SYSTEMTIME @          FIX16_TO_LREAL @          FIX16_TO_WORD @          FIX16Add @          FIX16Align @          FIX16Div @          FIX16Mul @          FIX16Sub @          GetRemotePCInfo @           GUID_TO_REGSTRING @          GUID_TO_STRING @          GuidsEqualByVal @          HEXASCNIBBLE_TO_BYTE @          HEXCHRNIBBLE_TO_BYTE @          HEXSTR_TO_DATA @          HOST_TO_BE128 @          HOST_TO_BE16 @          HOST_TO_BE32 @          HOST_TO_BE64 @          INT64_TO_LREAL @          Int64Add64 @          Int64Add64Ex @          Int64Cmp64 @          Int64Div64Ex @          Int64IsZero @          Int64Negate @          Int64Not @          Int64Sub64 @          IsFinite @          LARGE_INTEGER @          LARGE_TO_ULARGE @          LREAL_TO_FIX16 @          LREAL_TO_FMTSTR @          LREAL_TO_INT64 @          LREAL_TO_UINT64 @          MAXSTRING_TO_BYTEARR @          NT_AbortShutdown @           NT_GetTime @           NT_Reboot @           NT_SetLocalTime @          NT_SetTimeToRTCTime @           NT_Shutdown @           NT_StartProcess @           OTSTRUCT_TO_TIME @           PBOOL_TO_BOOL @          PBYTE_TO_BYTE @          PDATE_TO_DATE @          PDINT_TO_DINT @          PDT_TO_DT @          PDWORD_TO_DWORD @          PHUGE_TO_HUGE @          PINT_TO_INT @          PLARGE_TO_LARGE @          PLC_ReadSymInfo @           PLC_ReadSymInfoByName @           PLC_ReadSymInfoByNameEx @           PLC_Reset @           PLC_Start @           PLC_Stop @           PLREAL_TO_LREAL @          PMAXSTRING_TO_MAXSTRING @          PREAL_TO_REAL @          Profiler @           PSINT_TO_SINT @          PSTRING_TO_STRING @          PTIME_TO_TIME @          PTOD_TO_TOD @          PUDINT_TO_UDINT @          PUHUGE_TO_UHUGE @          PUINT64_TO_UINT64 @          PUINT_TO_UINT @          PULARGE_TO_ULARGE @          PUSINT_TO_USINT @          PVOID_TO_BINSTR @          PVOID_TO_DECSTR @          PVOID_TO_HEXSTR @          PVOID_TO_OCTSTR @          PVOID_TO_STRING @          PWORD_TO_WORD @          RAD_TO_DEG @           REGSTRING_TO_GUID @          ROUTETRANSPORT_TO_STRING @       	   RTC @          RTC_EX @          RTC_EX2 @          ScopeASCIIExport @           ScopeExit @          ScopeGetRecordLen @           ScopeGetState @           ScopeLoadFile @           ScopeManualTrigger @           ScopeSaveAs @          ScopeSetOffline @           ScopeSetOnline @           ScopeSetRecordLen @           ScopeViewExport @           STRING_TO_CSVFIELD @          STRING_TO_GUID @          STRING_TO_PVOID @          STRING_TO_SYSTEMTIME @          STRING_TO_UINT64 @          SYSTEMTIME_TO_DT @           SYSTEMTIME_TO_FILETIME @          SYSTEMTIME_TO_STRING @          TC_Config @          TC_CpuUsage @           TC_Restart @           TC_Stop @           TC_SysLatency @           TIME_TO_OTSTRUCT @           UDINT_TO_LREALEX @          UInt32x32To64 @          UINT64_TO_LREAL @          UINT64_TO_STRING @          UInt64Add64 @          UInt64Add64Ex @          UInt64And @          UInt64Cmp64 @          UInt64Div16Ex @          UInt64Div64 @          UInt64Div64Ex @          UInt64isZero @          UInt64Limit @          UInt64Max @          UInt64Min @          UInt64Mod64 @          UInt64Mul64 @          UInt64Mul64Ex @          UInt64Not @          UInt64Or @          UInt64Rol @          UInt64Ror @          UInt64Shl @          UInt64Shr @          UInt64Sub64 @          UInt64Xor @          UINT_TO_LREALEX @          ULARGE_INTEGER @          ULARGE_TO_LARGE @          USINT_TO_LREALEX @          WORD_TO_BINSTR @          WORD_TO_DECSTR @          WORD_TO_FIX16 @          WORD_TO_HEXSTR @          WORD_TO_LREALEX @          WORD_TO_OCTSTR @          WritePersistentData @              Global_Variables @                        , дp           2                џџџџџџџџџџџџџџџџ  
             њџџџ                  јџџџ,                            POUs                Intern                 FB_Mqtt_DecodeLength_V10  Д                  FB_Mqtt_EncodeLength_V10  Е                 FB_Mqtt_Receive_V10                ClearReceivedPublishTelegram  Є  Ж                  FB_Mqtt_Send_V10  З                  FB_MqttTelegram_Connect_V10  В                  FB_MqttTelegram_PingReq_V10  Г                  FC_Mqtt_ClearTelegram_V10  И                  FC_Mqtt_CopyTelegram_V10  Й  џџџџ               MB_func                 F_CRC16  ^  џџџџ               FB_GET_CO2_MH_Z19B  d                  FB_GET_CURRENT  b                  FB_GET_ENERGY  _                  FB_GET_POWER  c                  FB_GET_SUPPLY  a                 FB_Mqtt_Controller_V10                CallMqttBlocks  Ѓ  А                  FB_Mqtt_Publish_V10  Џ                  FB_Mqtt_Subscribe_V10  Б                  MAIN  #                   Mqtt  P                  Poliv                 	   RS485read                    Security                    Sensors  Q                  Thermocontrol  ]                  VentControl                 	   VentPower  '   џџџџ           
   Data types                 iobroker_Struct  Ў                  ST_MqttReceivedPublishTelegram  К                 ST_MqttSettings  Л                  ST_MqttTelegram  М                  stMB                 	   stMercury  \  џџџџ             Visualizations  џџџџ              Global Variables                Global_Variables                     Global_Variables_persistent                    TwinCAT_Configuration  [                  Variable_Configuration  ь  џџџџ                                                              7ц\                         	   localhost            P      	   localhost            P      	   localhost            P             єШ