.class public Lc8/tWb;
.super Lc8/cWb;
.source "MethodTraceController.java"

# interfaces
.implements Lc8/aWb;


# static fields
.field private static final command:I = 0x1

.field private static final commandSet:I = 0x3


# instance fields
.field private final mTraceDumpDir:Ljava/lang/String;

.field private mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 39
    invoke-direct {p0, v4, v3}, Lc8/cWb;-><init>(II)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v1, Lc8/uWb;->sApplication:Landroid/app/Application;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".trace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/tWb;->mTraceDumpDir:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private verifyLocalTask(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)Z
    .locals 4
    .param p1, "traceTask"    # Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    .prologue
    const/4 v0, 0x0

    .line 205
    if-nez p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getStart()Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getStop()Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getNumTrys()I

    move-result v1

    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getMaxTrys()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 215
    sget-object v1, Lc8/uWb;->sGodeye:Lc8/nWb;

    invoke-interface {v1}, Lc8/nWb;->defaultCommandManager()Lc8/ZVb;

    move-result-object v1

    invoke-interface {v1, p0}, Lc8/ZVb;->removeLocalCommand(Lc8/cWb;)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getProgress()Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    move-result-object v1

    sget-object v2, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->UPLOADED:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    if-ne v1, v2, :cond_3

    .line 220
    sget-object v1, Lc8/uWb;->sGodeye:Lc8/nWb;

    invoke-interface {v1}, Lc8/nWb;->defaultCommandManager()Lc8/ZVb;

    move-result-object v1

    invoke-interface {v1, p0}, Lc8/ZVb;->removeLocalCommand(Lc8/cWb;)V

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getProgress()Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    move-result-object v1

    sget-object v2, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->RUNNING:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    if-ne v1, v2, :cond_4

    .line 226
    sget-object v1, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->NOT_STARTED:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    invoke-virtual {p1, v1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->setProgress(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;)V

    .line 230
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getProgress()Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    move-result-object v1

    sget-object v2, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->COMPLETE:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    if-eq v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getProgress()Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    move-result-object v1

    sget-object v2, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->EXCEPTION_ON_UPLOAD:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    if-ne v1, v2, :cond_6

    .line 232
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 233
    sget-object v1, Lc8/uWb;->sGodeye:Lc8/nWb;

    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getFilePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lc8/vWb;

    invoke-direct {v3, p0, p1}, Lc8/vWb;-><init>(Lc8/tWb;Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)V

    invoke-interface {v1, p0, v2, v3}, Lc8/nWb;->upload(Lc8/cWb;Ljava/lang/String;Lc8/qWb;)V

    goto :goto_0

    .line 238
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInstructionHandler()Lc8/aWb;
    .locals 0

    .prologue
    .line 159
    return-object p0
.end method

.method public handleInstruction(Lc8/RWb;Z)V
    .locals 6
    .param p1, "instructionPacket"    # Lc8/RWb;
    .param p2, "isColdStart"    # Z

    .prologue
    .line 130
    :try_start_0
    new-instance v1, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-direct {v1, p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;-><init>(Lc8/RWb;)V

    iput-object v1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    .line 132
    if-nez p2, :cond_0

    .line 134
    invoke-virtual {p0}, Lc8/tWb;->stopRunningTask()V

    .line 135
    sget-object v1, Lc8/uWb;->sGodeye:Lc8/nWb;

    new-instance v2, Lc8/bWb;

    const/4 v3, 0x2

    const-string/jumbo v4, "receive-new-command"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lc8/bWb;-><init>(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v1, p0, v2}, Lc8/nWb;->response(Lc8/cWb;Lc8/bWb;)V

    .line 139
    :cond_0
    iget-object v1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->isEmptyTask()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    sget-object v1, Lc8/uWb;->sGodeye:Lc8/nWb;

    invoke-interface {v1}, Lc8/nWb;->defaultCommandManager()Lc8/ZVb;

    move-result-object v1

    invoke-interface {v1, p0}, Lc8/ZVb;->removeLocalCommand(Lc8/cWb;)V

    .line 146
    :goto_0
    iget-object v1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {p0, v1, p2}, Lc8/tWb;->installTraceTask(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;Z)V

    .line 150
    :goto_1
    return-void

    .line 142
    :cond_1
    sget-object v1, Lc8/uWb;->sGodeye:Lc8/nWb;

    invoke-interface {v1}, Lc8/nWb;->defaultCommandManager()Lc8/ZVb;

    move-result-object v1

    iget-object v2, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {v2}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lc8/ZVb;->saveRawCommandString(Lc8/cWb;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method installTraceTask(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;Z)V
    .locals 6
    .param p1, "traceTask"    # Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;
    .param p2, "isColdStart"    # Z

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lc8/tWb;->verifyLocalTask(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lc8/tWb;->setTraceTask(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)V

    .line 174
    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getStart()Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    move-result-object v1

    .line 175
    .local v1, "start":Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getStop()Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    move-result-object v3

    .line 177
    .local v3, "stop":Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
    sget-object v0, Lc8/uWb;->sGodeye:Lc8/nWb;

    invoke-interface {v0}, Lc8/nWb;->defaultGodeyeJointPointCenter()Lc8/pWb;

    move-result-object v0

    new-instance v2, Lc8/rWb;

    invoke-direct {v2, p0}, Lc8/rWb;-><init>(Lc8/tWb;)V

    new-instance v4, Lc8/sWb;

    invoke-direct {v4, p0}, Lc8/sWb;-><init>(Lc8/tWb;)V

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lc8/pWb;->installJointPoints(Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;Lc8/oWb;Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;Lc8/oWb;Z)V

    goto :goto_0
.end method

.method public saveTaskRunningStatus(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)V
    .locals 2
    .param p1, "traceTask"    # Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    .prologue
    .line 153
    sget-object v0, Lc8/uWb;->sGodeye:Lc8/nWb;

    invoke-interface {v0}, Lc8/nWb;->defaultCommandManager()Lc8/ZVb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lc8/ZVb;->saveRawCommandString(Lc8/cWb;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public setTraceTask(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)V
    .locals 0
    .param p1, "traceTask"    # Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    .prologue
    .line 242
    iput-object p1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    .line 243
    return-void
.end method

.method public startTask()V
    .locals 6

    .prologue
    const/4 v4, 0x7

    const/4 v5, 0x0

    .line 60
    iget-object v1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getProgress()Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    move-result-object v1

    sget-object v2, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->NOT_STARTED:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    if-ne v1, v2, :cond_0

    .line 68
    iget-object v0, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    .line 71
    .local v0, "task":Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;
    invoke-virtual {v0}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getNumTrys()I

    move-result v1

    invoke-virtual {v0}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getMaxTrys()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 72
    sget-object v1, Lc8/uWb;->sGodeye:Lc8/nWb;

    invoke-interface {v1}, Lc8/nWb;->defaultCommandManager()Lc8/ZVb;

    move-result-object v1

    invoke-interface {v1, p0}, Lc8/ZVb;->removeLocalCommand(Lc8/cWb;)V

    .line 73
    sget-object v1, Lc8/uWb;->sGodeye:Lc8/nWb;

    new-instance v2, Lc8/bWb;

    const-string/jumbo v3, "try-timeout"

    invoke-direct {v2, v4, v3, v5}, Lc8/bWb;-><init>(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v1, p0, v2}, Lc8/nWb;->response(Lc8/cWb;Lc8/bWb;)V

    goto :goto_0

    .line 76
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_4

    .line 78
    invoke-virtual {v0}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getNumTrys()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->setNumTrys(I)V

    .line 79
    iget-object v1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {p0, v1}, Lc8/tWb;->saveTaskRunningStatus(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)V

    .line 82
    iget-object v1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getSamplingInterval()I

    move-result v1

    if-gtz v1, :cond_3

    .line 83
    invoke-static {}, Landroid/os/Debug;->startMethodTracing()V

    .line 89
    :goto_1
    sget-object v1, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->RUNNING:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->setProgress(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;)V

    .line 92
    iget-object v1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {p0, v1}, Lc8/tWb;->saveTaskRunningStatus(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)V

    .line 93
    sget-object v1, Lc8/uWb;->sGodeye:Lc8/nWb;

    new-instance v2, Lc8/bWb;

    const/4 v3, 0x0

    const-string/jumbo v4, "trace-start-success"

    invoke-direct {v2, v3, v4, v5}, Lc8/bWb;-><init>(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v1, p0, v2}, Lc8/nWb;->response(Lc8/cWb;Lc8/bWb;)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object v1, p0, Lc8/tWb;->mTraceDumpDir:Ljava/lang/String;

    iget-object v2, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {v2}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getBufferSize()I

    move-result v2

    iget-object v3, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {v3}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getSamplingInterval()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/os/Debug;->startMethodTracingSampling(Ljava/lang/String;II)V

    goto :goto_1

    .line 94
    :cond_4
    iget-object v1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getSamplingInterval()I

    move-result v1

    if-gtz v1, :cond_5

    .line 95
    invoke-static {}, Landroid/os/Debug;->startMethodTracing()V

    goto/16 :goto_0

    .line 97
    :cond_5
    sget-object v1, Lc8/uWb;->sGodeye:Lc8/nWb;

    new-instance v2, Lc8/bWb;

    const-string/jumbo v3, "unsupported OS version"

    invoke-direct {v2, v4, v3, v5}, Lc8/bWb;-><init>(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v1, p0, v2}, Lc8/nWb;->response(Lc8/cWb;Lc8/bWb;)V

    goto/16 :goto_0
.end method

.method public stopRunningTask()V
    .locals 6

    .prologue
    .line 109
    iget-object v1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->getProgress()Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    move-result-object v1

    sget-object v2, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->RUNNING:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    if-eq v1, v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 115
    iget-object v0, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    .line 116
    .local v0, "task":Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;
    iget-object v1, p0, Lc8/tWb;->mTraceDumpDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->setFilePath(Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->COMPLETE:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->setProgress(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;)V

    .line 118
    iget-object v1, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {p0, v1}, Lc8/tWb;->saveTaskRunningStatus(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)V

    .line 120
    sget-object v1, Lc8/uWb;->sGodeye:Lc8/nWb;

    new-instance v2, Lc8/bWb;

    const/4 v3, 0x0

    const-string/jumbo v4, "trace-stop-success"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lc8/bWb;-><init>(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v1, p0, v2}, Lc8/nWb;->response(Lc8/cWb;Lc8/bWb;)V

    .line 122
    sget-object v1, Lc8/uWb;->sGodeye:Lc8/nWb;

    iget-object v2, p0, Lc8/tWb;->mTraceDumpDir:Ljava/lang/String;

    new-instance v3, Lc8/vWb;

    iget-object v4, p0, Lc8/tWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-direct {v3, p0, v4}, Lc8/vWb;-><init>(Lc8/tWb;Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)V

    invoke-interface {v1, p0, v2, v3}, Lc8/nWb;->upload(Lc8/cWb;Ljava/lang/String;Lc8/qWb;)V

    goto :goto_0
.end method
