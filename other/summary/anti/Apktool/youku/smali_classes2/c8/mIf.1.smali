.class public Lc8/mIf;
.super Ljava/lang/Object;
.source "TaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# instance fields
.field public commandId:Ljava/lang/String;

.field public content:Lcom/alibaba/fastjson/JSONObject;

.field public executeStrategy:Ljava/lang/String;

.field public expireTime:I

.field public extension:Ljava/lang/String;

.field public runOrder:I

.field public taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCommand(Lcom/alibaba/fastjson/JSONObject;)Lc8/mIf;
    .locals 3
    .param p0, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 78
    :try_start_0
    new-instance v0, Lc8/mIf;

    invoke-direct {v0}, Lc8/mIf;-><init>()V

    .line 79
    .local v0, "command":Lc8/mIf;
    const-string/jumbo v2, "executeCommand"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lc8/mIf;->content:Lcom/alibaba/fastjson/JSONObject;

    .line 80
    const-string/jumbo v2, "commandId"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/mIf;->commandId:Ljava/lang/String;

    .line 81
    const-string/jumbo v2, "taskId"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/mIf;->taskId:Ljava/lang/String;

    .line 82
    const-string/jumbo v2, "runOrder"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lc8/mIf;->runOrder:I

    .line 83
    const-string/jumbo v2, "expireTime"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lc8/mIf;->expireTime:I
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "command":Lc8/mIf;
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    .line 88
    const/4 v0, 0x0

    goto :goto_0
.end method
