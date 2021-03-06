COMMENT @----------------------------------------------------------------------

	Copyright (c) GeoWorks 1988 -- All Rights Reserved

PROJECT:	PC GEOS
MODULE:		OpenLook/View
FILE:		viewManager.asm

REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Doug	6/89		Initial version

DESCRIPTION:
	This file assembles the View/ module of the Open Look library

	$Id: cviewManager.asm,v 1.1 97/04/07 10:51:37 newdeal Exp $

------------------------------------------------------------------------------@

_View		= 1

;-----------------------------------------------------------------------------
;	Include common definitions
;-----------------------------------------------------------------------------

include		cMacro.def
include		cGeode.def
include		cGlobal.def

UseDriver	Internal/videoDr.def
include		Internal/window.def
include		Internal/heapInt.def
include		timer.def

;-----------------------------------------------------------------------------
;	Include definitions for this module
;-----------------------------------------------------------------------------

include		cviewConstant.def
include		cviewVariable.def
include		cviewMacro.def

;-----------------------------------------------------------------------------
;	Include code
;-----------------------------------------------------------------------------

include		cviewPane.asm
include		cviewPaneGeometry.asm
include		cviewPaneScroll.asm
include		cviewPaneScale.asm
include		cviewPaneWindow.asm
		
include		cviewScrollbar.asm
include		cviewScrollbarSelect.asm
include		viewScrollbarDraw.asm		;look in specific UI directory

include		cviewSplitter.asm


end
