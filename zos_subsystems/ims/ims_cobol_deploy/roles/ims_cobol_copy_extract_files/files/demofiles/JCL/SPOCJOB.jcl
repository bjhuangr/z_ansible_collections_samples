//SPOCJOB   JOB MSGLEVEL=(1,1),MSGCLASS=R,NOTIFY=&SYSUID
//SPOC      EXEC PGM=CSLUSPOC,
//  PARM=('IMSPLEX=PLEX1,ROUTE=IMSO,WAIT=30')
//STEPLIB   DD DISP=SHR,DSN=DFS.V15R1M0.SDFSRESL
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD *
 STO DB ACCOUNT
 DBR DB ACCOUNT
 DEL DB NAME(ACCOUNT)
 CREATE DB NAME(ACCOUNT) SET(ACCTYPE(UPD) RESIDENT(Y))
 STA DB ACCOUNT
 STO DB ACCTYPE
 DBR DB ACCTYPE
 DEL DB NAME(ACCTYPE)
 CREATE DB NAME(ACCTYPE) SET(ACCTYPE(UPD) RESIDENT(Y))
 STA DB ACCTYPE
 STO DB CUSTACCS
 DBR DB CUSTACCS
 DEL DB NAME(CUSTACCS)
 CREATE DB NAME(CUSTACCS) SET(ACCTYPE(UPD) RESIDENT(Y))
 STA DB CUSTACCS
 STO DB CUSTOMER
 DBR DB CUSTOMER
 DEL DB NAME(CUSTOMER)
 CREATE DB NAME(CUSTOMER) SET(ACCTYPE(UPD) RESIDENT(Y))
 STA DB CUSTOMER
 STO DB CUSTTYPE
 DBR DB CUSTTYPE
 DEL DB NAME(CUSTTYPE)
 CREATE DB NAME(CUSTTYPE) SET(ACCTYPE(UPD) RESIDENT(Y))
 STA DB CUSTTYPE
 STO DB HISTORY
 DBR DB HISTORY
 DEL DB NAME(HISTORY)
 CREATE DB NAME(HISTORY) SET(ACCTYPE(UPD) RESIDENT(Y))
 STA DB HISTORY
 STO DB TSTAT
 DBR DB TSTAT
 DEL DB NAME(TSTAT)
 CREATE DB NAME(TSTAT) SET(ACCTYPE(UPD) RESIDENT(Y))
 STA DB TSTAT
 STO DB TSTATTYP
 DBR DB TSTATTYP
 DEL DB NAME(TSTATTYP)
 CREATE DB NAME(TSTATTYP) SET(ACCTYPE(UPD) RESIDENT(Y))
 STA DB TSTATTYP
 STO DB TTYPE
 DBR DB TTYPE
 DEL DB NAME(TTYPE)
 CREATE DB NAME(TTYPE) SET(ACCTYPE(UPD) RESIDENT(Y))
 STA DB TTYPE
 CREATE PGM NAME(IB) SET( BMPTYPE(N) DOPT(N) +
       FP(N) GPSB(N) RESIDENT(Y) SCHDTYPE(PARALLEL)
  CREATE PGM NAME(IBACSUM) SET( BMPTYPE(N) DOPT(N) +
       FP(N) GPSB(N) RESIDENT(Y) SCHDTYPE(PARALLEL)
  CREATE PGM NAME(IBGCUDAT) SET( BMPTYPE(N) DOPT(N) +
       FP(N) GPSB(N) RESIDENT(Y) SCHDTYPE(PARALLEL)
  CREATE PGM NAME(IBLOAD) SET( BMPTYPE(N) DOPT(N) +
       FP(N) GPSB(N) RESIDENT(Y) SCHDTYPE(PARALLEL)
  CREATE PGM NAME(IBLOGIN) SET( BMPTYPE(N) DOPT(N) +
       FP(N) GPSB(N) RESIDENT(Y) SCHDTYPE(PARALLEL)
  CREATE PGM NAME(IBLOGOUT) SET( BMPTYPE(N) DOPT(N) +
       FP(N) GPSB(N) RESIDENT(Y) SCHDTYPE(PARALLEL)
  CREATE PGM NAME(IBSCUDAT) SET( BMPTYPE(N) DOPT(N) +
       FP(N) GPSB(N) RESIDENT(Y) SCHDTYPE(PARALLEL)
  CREATE PGM NAME(IBTRAN) SET( BMPTYPE(N) DOPT(N) +
       FP(N) GPSB(N) RESIDENT(Y) SCHDTYPE(PARALLEL)
  CREATE PGM NAME(IBGHIST) SET( BMPTYPE(N) DOPT(N) +
       FP(N) SCHDTYPE(PARALLEL) GPSB(Y) +
       LANG(JAVA))
  CREATE TRAN NAME(IBLOGIN) SET(PGM(IBLOGIN) WFI(N) +
  PARLIM(0) PLCT(65535) CLASS(5) EDITUC(N) TRANSTAT(Y))
  CREATE TRAN NAME(IBLOGOUT) SET(PGM(IBLOGOUT) WFI(N) +
  PARLIM(0) PLCT(65535) CLASS(5) EDITUC(N) TRANSTAT(Y))
  CREATE TRAN NAME(IBTRAN) SET(PGM(IBTRAN) WFI(N) +
  PARLIM(0) PLCT(65535) CLASS(7) EDITUC(N) TRANSTAT(Y))
  CREATE TRAN NAME(IBACSUM) SET(PGM(IBACSUM) WFI(N) +
  PARLIM(0) PLCT(65535) CLASS(5) EDITUC(N) TRANSTAT(Y))
  CREATE TRAN NAME(TBACSUM) SET(PGM(IBACSUM) WFI(N) +
  PARLIM(0) PLCT(65535) CLASS(8) EDITUC(N) TRANSTAT(N))
  CREATE TRAN NAME(IBGCUDAT) SET(PGM(IBGCUDAT) WFI(N) +
  PARLIM(0) PLCT(65535) CLASS(5) EDITUC(N) TRANSTAT(Y))
  CREATE TRAN NAME(IBSCUDAT) SET(PGM(IBSCUDAT) WFI(N) +
  PARLIM(0) PLCT(65535) CLASS(5) EDITUC(N) TRANSTAT(Y))
  CREATE TRAN NAME(IBGHIST) SET(PGM(IBGHIST) WFI(N) +
       PLCT(65535) CLASS(6) EDITUC(N) TRANSTAT(Y))
/*EOF