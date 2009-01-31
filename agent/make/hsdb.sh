#!/bin/sh
#
# Copyright 2002-2003 Sun Microsystems, Inc.  All Rights Reserved.
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
#
# This code is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 2 only, as
# published by the Free Software Foundation.
#
# This code is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# version 2 for more details (a copy is included in the LICENSE file that
# accompanied this code).
#
# You should have received a copy of the GNU General Public License version
# 2 along with this work; if not, write to the Free Software Foundation,
# Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
#
# Please contact Sun Microsystems, Inc., 4150 Network Circle, Santa Clara,
# CA 95054 USA or visit www.sun.com if you need additional information or
# have any questions.
#  
#

STARTDIR=`dirname $0`

if [ "x$SA_JAVA" = "x" ]; then
   SA_JAVA=java
fi

$SA_JAVA -showversion -cp $STARTDIR/../build/classes:$STARTDIR/../closed/src/share/lib/maf-1_0.jar:$STARTDIR/../closed/src/share/lib/jlfgr-1_0.jar:$STARTDIR/../src/share/lib/js.jar:$STARTDIR/sa.jar:$STARTDIR/../../closed/src/share/lib/maf-1_0.jar:$STARTDIR/../../closed/src/share/lib/jlfgr-1_0.jar:$STARTDIR/lib/js.jar sun.jvm.hotspot.HSDB $*
