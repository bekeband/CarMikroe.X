#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Debug.mk)" "nbproject/Makefile-local-Debug.mk"
include nbproject/Makefile-local-Debug.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Debug
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CarMikroe.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CarMikroe.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=framework/driver/gfx/src/drv_gfx_tft003.c main.c delay.c framework/gfx/src/gfx_primitive.c system.c framework/gfx/src/gfx_gol.c internal_resource.S internal_resource_reference.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o ${OBJECTDIR}/main.o ${OBJECTDIR}/delay.o ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o ${OBJECTDIR}/system.o ${OBJECTDIR}/framework/gfx/src/gfx_gol.o ${OBJECTDIR}/internal_resource.o ${OBJECTDIR}/internal_resource_reference.o
POSSIBLE_DEPFILES=${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/delay.o.d ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d ${OBJECTDIR}/system.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d ${OBJECTDIR}/internal_resource.o.d ${OBJECTDIR}/internal_resource_reference.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o ${OBJECTDIR}/main.o ${OBJECTDIR}/delay.o ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o ${OBJECTDIR}/system.o ${OBJECTDIR}/framework/gfx/src/gfx_gol.o ${OBJECTDIR}/internal_resource.o ${OBJECTDIR}/internal_resource_reference.o

# Source Files
SOURCEFILES=framework/driver/gfx/src/drv_gfx_tft003.c main.c delay.c framework/gfx/src/gfx_primitive.c system.c framework/gfx/src/gfx_gol.c internal_resource.S internal_resource_reference.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-Debug.mk dist/${CND_CONF}/${IMAGE_TYPE}/CarMikroe.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX460F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/internal_resource.o: internal_resource.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/internal_resource.o.d 
	@${RM} ${OBJECTDIR}/internal_resource.o 
	@${RM} ${OBJECTDIR}/internal_resource.o.ok ${OBJECTDIR}/internal_resource.o.err 
	@${FIXDEPS} "${OBJECTDIR}/internal_resource.o.d" "${OBJECTDIR}/internal_resource.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/internal_resource.o.d"  -o ${OBJECTDIR}/internal_resource.o internal_resource.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/internal_resource.o.asm.d",--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1
	
else
${OBJECTDIR}/internal_resource.o: internal_resource.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/internal_resource.o.d 
	@${RM} ${OBJECTDIR}/internal_resource.o 
	@${RM} ${OBJECTDIR}/internal_resource.o.ok ${OBJECTDIR}/internal_resource.o.err 
	@${FIXDEPS} "${OBJECTDIR}/internal_resource.o.d" "${OBJECTDIR}/internal_resource.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/internal_resource.o.d"  -o ${OBJECTDIR}/internal_resource.o internal_resource.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/internal_resource.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o: framework/driver/gfx/src/drv_gfx_tft003.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/framework/driver/gfx/src 
	@${RM} ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o.d" -o ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o framework/driver/gfx/src/drv_gfx_tft003.c   
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
${OBJECTDIR}/delay.o: delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/delay.o.d 
	@${RM} ${OBJECTDIR}/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/delay.o.d" -o ${OBJECTDIR}/delay.o delay.c   
	
${OBJECTDIR}/framework/gfx/src/gfx_primitive.o: framework/gfx/src/gfx_primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/framework/gfx/src 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d" -o ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o framework/gfx/src/gfx_primitive.c   
	
${OBJECTDIR}/system.o: system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/system.o.d 
	@${RM} ${OBJECTDIR}/system.o 
	@${FIXDEPS} "${OBJECTDIR}/system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/system.o.d" -o ${OBJECTDIR}/system.o system.c   
	
${OBJECTDIR}/framework/gfx/src/gfx_gol.o: framework/gfx/src/gfx_gol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/framework/gfx/src 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d" -o ${OBJECTDIR}/framework/gfx/src/gfx_gol.o framework/gfx/src/gfx_gol.c   
	
${OBJECTDIR}/internal_resource_reference.o: internal_resource_reference.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/internal_resource_reference.o.d 
	@${RM} ${OBJECTDIR}/internal_resource_reference.o 
	@${FIXDEPS} "${OBJECTDIR}/internal_resource_reference.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/internal_resource_reference.o.d" -o ${OBJECTDIR}/internal_resource_reference.o internal_resource_reference.c   
	
else
${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o: framework/driver/gfx/src/drv_gfx_tft003.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/framework/driver/gfx/src 
	@${RM} ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o.d" -o ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_tft003.o framework/driver/gfx/src/drv_gfx_tft003.c   
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
${OBJECTDIR}/delay.o: delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/delay.o.d 
	@${RM} ${OBJECTDIR}/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/delay.o.d" -o ${OBJECTDIR}/delay.o delay.c   
	
${OBJECTDIR}/framework/gfx/src/gfx_primitive.o: framework/gfx/src/gfx_primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/framework/gfx/src 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d" -o ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o framework/gfx/src/gfx_primitive.c   
	
${OBJECTDIR}/system.o: system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/system.o.d 
	@${RM} ${OBJECTDIR}/system.o 
	@${FIXDEPS} "${OBJECTDIR}/system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/system.o.d" -o ${OBJECTDIR}/system.o system.c   
	
${OBJECTDIR}/framework/gfx/src/gfx_gol.o: framework/gfx/src/gfx_gol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/framework/gfx/src 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d" -o ${OBJECTDIR}/framework/gfx/src/gfx_gol.o framework/gfx/src/gfx_gol.c   
	
${OBJECTDIR}/internal_resource_reference.o: internal_resource_reference.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/internal_resource_reference.o.d 
	@${RM} ${OBJECTDIR}/internal_resource_reference.o 
	@${FIXDEPS} "${OBJECTDIR}/internal_resource_reference.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"../" -I"../../" -MMD -MF "${OBJECTDIR}/internal_resource_reference.o.d" -o ${OBJECTDIR}/internal_resource_reference.o internal_resource_reference.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/CarMikroe.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)    -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/CarMikroe.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}              -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=_min_heap_size=2000,--defsym=_min_stack_size=512,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/CarMikroe.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/CarMikroe.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2000,--defsym=_min_stack_size=512,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/CarMikroe.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Debug
	${RM} -r dist/Debug

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
