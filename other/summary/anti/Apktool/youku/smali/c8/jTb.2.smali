.class public Lc8/jTb;
.super Ljava/lang/Object;
.source "ReporterConfigure.java"


# instance fields
.field public closeMainLooperMonitor:Z

.field public enabeANRTimeoutInterval:I

.field public enabeMainLooperTimeoutInterval:J

.field public enableANRMainThreadOnly:Z

.field public enableAbortCount:Z

.field public enableActivityMonitor:Z

.field public enableBreakPadDump:Z

.field public enableCatchANRException:Z

.field public enableCatchNativeException:Z

.field public enableCatchUncaughtException:Z

.field public enableDebug:Z

.field public enableDeduplication:Z

.field public enableDumpAllThread:Z

.field public enableDumpAppLog:Z

.field public enableDumpEventsLog:Z

.field public enableDumpRadioLog:Z

.field public enableDumpSysLog:Z

.field public enableExternalLinster:Z

.field public enableFinalizeFake:Z

.field public enableMaxThreadNumber:I

.field public enableMaxThreadStackTraceNumber:I

.field public enableStartCount:Z

.field public enableSysLogcatLinkMaxCount:I

.field public enableSysLogcatMaxCount:I

.field public enableUIProcessSafeGuard:Z

.field public enableUncaughtExceptionIgnore:Z

.field public isCloseMainLooperSampling:Z

.field public sendOnLaunchDelay:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v3, p0, Lc8/jTb;->enableUncaughtExceptionIgnore:Z

    .line 12
    iput-boolean v3, p0, Lc8/jTb;->enableExternalLinster:Z

    .line 13
    iput-boolean v3, p0, Lc8/jTb;->enableFinalizeFake:Z

    .line 18
    iput-boolean v3, p0, Lc8/jTb;->enableCatchUncaughtException:Z

    .line 22
    iput-boolean v3, p0, Lc8/jTb;->enableCatchNativeException:Z

    .line 26
    iput-boolean v3, p0, Lc8/jTb;->enableCatchANRException:Z

    .line 31
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lc8/jTb;->enabeMainLooperTimeoutInterval:J

    .line 36
    iput-boolean v2, p0, Lc8/jTb;->isCloseMainLooperSampling:Z

    .line 41
    iput-boolean v2, p0, Lc8/jTb;->enableANRMainThreadOnly:Z

    .line 46
    iput-boolean v2, p0, Lc8/jTb;->closeMainLooperMonitor:Z

    .line 51
    iput-boolean v3, p0, Lc8/jTb;->enableStartCount:Z

    .line 55
    iput v2, p0, Lc8/jTb;->sendOnLaunchDelay:I

    .line 59
    iput-boolean v3, p0, Lc8/jTb;->enableActivityMonitor:Z

    .line 63
    iput-boolean v2, p0, Lc8/jTb;->enableDumpSysLog:Z

    .line 67
    iput-boolean v2, p0, Lc8/jTb;->enableDumpEventsLog:Z

    .line 71
    iput-boolean v2, p0, Lc8/jTb;->enableDumpRadioLog:Z

    .line 75
    iput-boolean v2, p0, Lc8/jTb;->enableDumpAppLog:Z

    .line 80
    iput-boolean v2, p0, Lc8/jTb;->enableDumpAllThread:Z

    .line 85
    iput-boolean v2, p0, Lc8/jTb;->enableDebug:Z

    .line 90
    const/16 v0, 0x1388

    iput v0, p0, Lc8/jTb;->enabeANRTimeoutInterval:I

    .line 95
    iput-boolean v2, p0, Lc8/jTb;->enableDeduplication:Z

    .line 100
    iput-boolean v2, p0, Lc8/jTb;->enableAbortCount:Z

    .line 105
    iput-boolean v2, p0, Lc8/jTb;->enableUIProcessSafeGuard:Z

    .line 110
    const/16 v0, 0xc8

    iput v0, p0, Lc8/jTb;->enableMaxThreadNumber:I

    .line 116
    const/16 v0, 0x40

    iput v0, p0, Lc8/jTb;->enableMaxThreadStackTraceNumber:I

    .line 122
    iput v4, p0, Lc8/jTb;->enableSysLogcatMaxCount:I

    .line 128
    iput v4, p0, Lc8/jTb;->enableSysLogcatLinkMaxCount:I

    .line 134
    iput-boolean v2, p0, Lc8/jTb;->enableBreakPadDump:Z

    .line 137
    return-void
.end method


# virtual methods
.method public setEnableANRMainThreadOnly(Z)V
    .locals 0
    .param p1, "enableANRMainThreadOnly"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lc8/jTb;->enableANRMainThreadOnly:Z

    .line 169
    return-void
.end method

.method public setEnableCatchANRException(Z)V
    .locals 0
    .param p1, "enableCatchANRException"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lc8/jTb;->enableCatchANRException:Z

    .line 141
    return-void
.end method

.method public setEnableDebug(Z)V
    .locals 0
    .param p1, "enableDebug"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lc8/jTb;->enableDebug:Z

    .line 165
    return-void
.end method

.method public setEnableDumpAllThread(Z)V
    .locals 0
    .param p1, "enableDumpAllThread"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lc8/jTb;->enableDumpAllThread:Z

    .line 161
    return-void
.end method

.method public setEnableDumpAppLog(Z)V
    .locals 0
    .param p1, "enableDumpAppLog"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lc8/jTb;->enableDumpAppLog:Z

    .line 157
    return-void
.end method

.method public setEnableDumpEventsLog(Z)V
    .locals 0
    .param p1, "enableDumpEventsLog"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lc8/jTb;->enableDumpEventsLog:Z

    .line 149
    return-void
.end method

.method public setEnableDumpRadioLog(Z)V
    .locals 0
    .param p1, "enableDumpRadioLog"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lc8/jTb;->enableDumpRadioLog:Z

    .line 153
    return-void
.end method

.method public setEnableDumpSysLog(Z)V
    .locals 0
    .param p1, "enableDumpSysLog"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lc8/jTb;->enableDumpSysLog:Z

    .line 145
    return-void
.end method
