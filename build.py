#!/usr/bin/env python3.6

version='1.0.0'
name='kcd_flowgraph_hook'
packagePrefix='zzzzzz_'
outputDir='builds'

#######################################

zipFilename=f'{name}_{version}.zip'
gamePackageName=f'{packagePrefix}{name}.pak'

import os
import io
import zipfile

#######
# PAK #
#######

gamePackage = io.BytesIO()
zout = zipfile.ZipFile( gamePackage, 'w', compression=zipfile.ZIP_STORED )

zout.write( os.path.join('Libs', 'UI', 'UIActions', 'Sys_StateControl.xml') )
zout.write( os.path.join('Libs', 'UI', 'UIActions', 'SYS_Main.xml') )

zout.close()

#######
# ZIP #
#######

zout = zipfile.ZipFile( os.path.join(outputDir, zipFilename), 'w', compression=zipfile.ZIP_DEFLATED )

zout.write('README.md')
zout.writestr( os.path.join('Data', gamePackageName), gamePackage.getvalue() )

zout.close()
