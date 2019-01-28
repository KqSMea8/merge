.class public Lc8/qIf;
.super Ljava/lang/Object;
.source "TaskStatusInfo.java"

# interfaces
.implements Lc8/dOp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;,
        Lc8/pIf;
    }
.end annotation


# instance fields
.field private extension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private session:Ljava/lang/String;

.field private strategy:Lc8/pIf;

.field private taskId:Ljava/lang/String;

.field private traceMode:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static makeInfo(Lcom/alibaba/fastjson/JSONObject;)Lc8/qIf;
    .locals 5
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 70
    if-nez p0, :cond_0

    move-object v2, v3

    .line 82
    :goto_0
    return-object v2

    .line 73
    :cond_0
    :try_start_0
    const-string/jumbo v4, "data"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 74
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Lc8/qIf;

    invoke-direct {v2}, Lc8/qIf;-><init>()V

    .line 75
    .local v2, "info":Lc8/qIf;
    const-string/jumbo v4, "traceMode"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;->valueOf(Ljava/lang/String;)Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    move-result-object v4

    iput-object v4, v2, Lc8/qIf;->traceMode:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    .line 76
    const-string/jumbo v4, "taskId"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lc8/qIf;->taskId:Ljava/lang/String;

    .line 77
    const-string/jumbo v4, "session"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lc8/qIf;->session:Ljava/lang/String;

    .line 78
    const-string/jumbo v4, "strategy"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lc8/pIf;->makeStrategy(Lcom/alibaba/fastjson/JSONObject;)Lc8/pIf;

    move-result-object v4

    iput-object v4, v2, Lc8/qIf;->strategy:Lc8/pIf;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "info":Lc8/qIf;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    move-object v2, v3

    .line 82
    goto :goto_0
.end method


# virtual methods
.method public getExtension()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lc8/qIf;->extension:Ljava/util/Map;

    return-object v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lc8/qIf;->session:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategy()Lc8/pIf;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lc8/qIf;->strategy:Lc8/pIf;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lc8/qIf;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceMode()Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lc8/qIf;->traceMode:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    return-object v0
.end method

.method public isStop()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 57
    iget-object v1, p0, Lc8/qIf;->strategy:Lc8/pIf;

    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    iget-object v1, p0, Lc8/qIf;->strategy:Lc8/pIf;

    iget-wide v2, v1, Lc8/pIf;->endTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExtension(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lc8/qIf;->extension:Ljava/util/Map;

    .line 42
    return-void
.end method

.method public setStrategy(Lc8/pIf;)V
    .locals 0
    .param p1, "strategy"    # Lc8/pIf;

    .prologue
    .line 49
    iput-object p1, p0, Lc8/qIf;->strategy:Lc8/pIf;

    .line 50
    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lc8/qIf;->taskId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTraceMode(Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;)V
    .locals 0
    .param p1, "traceMode"    # Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    .prologue
    .line 25
    iput-object p1, p0, Lc8/qIf;->traceMode:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    .line 26
    return-void
.end method
