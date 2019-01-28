.class public Lc8/pIf;
.super Ljava/lang/Object;
.source "TaskStatusInfo.java"

# interfaces
.implements Lc8/dOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strategy"
.end annotation


# instance fields
.field public endTime:J

.field public executeTimes:I

.field public extension:Ljava/lang/Object;

.field public queryFrequency:I

.field public returnTime:J

.field public security:Ljava/lang/String;

.field public type:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeStrategy(Lcom/alibaba/fastjson/JSONObject;)Lc8/pIf;
    .locals 8
    .param p0, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 98
    :try_start_0
    new-instance v1, Lc8/pIf;

    invoke-direct {v1}, Lc8/pIf;-><init>()V

    .line 99
    .local v1, "strategy":Lc8/pIf;
    const-string/jumbo v2, "returnTime"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lc8/pIf;->returnTime:J

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lc8/pIf;->returnTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lc8/pIf;->endTime:J

    .line 101
    const-string/jumbo v2, "executeTimes"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lc8/pIf;->executeTimes:I

    .line 102
    const-string/jumbo v2, "queryFrequency"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lc8/pIf;->queryFrequency:I

    .line 103
    const-string/jumbo v2, "security"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/pIf;->security:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "strategy":Lc8/pIf;
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method
