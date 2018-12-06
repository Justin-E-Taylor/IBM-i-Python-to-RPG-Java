**free
      /define MAIN
//    *_> CRTSQLRPGI OBJ(QGPL/@4) SRCFILE(@2/@1) SRCMBR(@3) +
//    *_>   OBJTYPE(*MODULE) OPTION(*EVENTF) DBGVIEW(*SOURCE)
//    *_> CRTPGM PGM(QGPL/@4) ACTGRP(*NEW)
//    *_> DLTMOD MODULE(QGPL/@4)
       Ctl-opt
         Debug(*Yes) Option(*SrcStmt: *NoDebugIO :*NoUnref) Optimize(*Basic)
         ExtBinInt(*Yes)
       ;
 
      //-----------------------------------------------------------------------
 
       //--------------------------------------------------
       // Procedure name: stringConstructor
       // Purpose:        Java String constructor
       // Returns:        Java String object
       // Parameter:      bytes => RPG character variable
       //--------------------------------------------------
       Dcl-pr stringConstructor object(*java : 'java.lang.String')
                  extProc(*java : 'java.lang.String' : *constructor) ;
         bytes varchar(9999) const ;
       End-pr;
 
       //----------------------------------------------------------------------
       //  stand-alone fields
       //----------------------------------------------------------------------
       Dcl-s javaString object(*java : 'java.lang.String') ;
 
      //-----------------------------------------------------------------------
 
       javaString = stringConstructor('A');
       javaString = *null;
 
       Return;
