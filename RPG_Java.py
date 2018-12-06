from itoolkit import iCmd, iData, iPgm, iToolKit
from itoolkit.db2.idb2call import iDB2Call
 
itransport = iDB2Call()
itool = iToolKit()
 
itool.add(iPgm('my_key', 'STRJVM', {'error': 'on', 'lib':'QGPL'}))
           
itool.call(itransport)          
