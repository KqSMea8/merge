.class public Lc8/vWb;
.super Ljava/lang/Object;
.source "TraceFileUploadListener.java"

# interfaces
.implements Lc8/qWb;


# instance fields
.field private final mMethodTraceController:Lc8/tWb;

.field private final mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;


# direct methods
.method public constructor <init>(Lc8/tWb;Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)V
    .locals 0
    .param p1, "methodTraceController"    # Lc8/tWb;
    .param p2, "traceTask"    # Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lc8/vWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    .line 24
    iput-object p1, p0, Lc8/vWb;->mMethodTraceController:Lc8/tWb;

    .line 25
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errType"    # Ljava/lang/String;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/vWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lc8/vWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    sget-object v1, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->EXCEPTION_ON_UPLOAD:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;->setProgress(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;)V

    .line 33
    iget-object v0, p0, Lc8/vWb;->mMethodTraceController:Lc8/tWb;

    iget-object v1, p0, Lc8/vWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {v0, v1}, Lc8/tWb;->saveTaskRunningStatus(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)V

    .line 34
    sget-object v0, Lc8/uWb;->sGodeye:Lc8/nWb;

    iget-object v1, p0, Lc8/vWb;->mMethodTraceController:Lc8/tWb;

    new-instance v2, Lc8/bWb;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v2, v3, p3, v4}, Lc8/bWb;-><init>(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v0, v1, v2}, Lc8/nWb;->response(Lc8/cWb;Lc8/bWb;)V

    goto :goto_0
.end method

.method public onSucess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "originalFilePath"    # Ljava/lang/String;
    .param p2, "urlLocation"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v2, p0, Lc8/vWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    if-nez v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v2, p0, Lc8/vWb;->mMethodTraceController:Lc8/tWb;

    iget-object v3, p0, Lc8/vWb;->mTraceTask:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;

    invoke-virtual {v2, v3}, Lc8/tWb;->saveTaskRunningStatus(Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceTask;)V

    .line 43
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 44
    .local v0, "fileData":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "fileName"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v2, "tfsPath"

    invoke-virtual {v0, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v2, Lc8/uWb;->sGodeye:Lc8/nWb;

    iget-object v3, p0, Lc8/vWb;->mMethodTraceController:Lc8/tWb;

    new-instance v4, Lc8/bWb;

    const/4 v5, 0x5

    const-string/jumbo v6, "file-upload-success"

    invoke-direct {v4, v5, v6, v0}, Lc8/bWb;-><init>(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v2, v3, v4}, Lc8/nWb;->response(Lc8/cWb;Lc8/bWb;)V

    .line 50
    sget-object v2, Lc8/uWb;->sGodeye:Lc8/nWb;

    invoke-interface {v2}, Lc8/nWb;->defaultCommandManager()Lc8/ZVb;

    move-result-object v2

    iget-object v3, p0, Lc8/vWb;->mMethodTraceController:Lc8/tWb;

    invoke-interface {v2, v3}, Lc8/ZVb;->removeLocalCommand(Lc8/cWb;)V

    .line 53
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "originFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
