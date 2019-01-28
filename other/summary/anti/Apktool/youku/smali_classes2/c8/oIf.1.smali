.class public Lc8/oIf;
.super Ljava/lang/Object;
.source "TaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/mIf;,
        Lc8/nIf;
    }
.end annotation


# instance fields
.field public session:Ljava/lang/String;

.field public strategy:Lc8/pIf;

.field public task:Lc8/nIf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static makeTaskInfo(Ljava/lang/String;)Lc8/oIf;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 22
    :try_start_0
    new-instance v1, Lc8/oIf;

    invoke-direct {v1}, Lc8/oIf;-><init>()V

    .line 23
    .local v1, "info":Lc8/oIf;
    invoke-static {p0}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 24
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "session"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 25
    const-string/jumbo v5, "session"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 26
    .local v3, "sessionObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "session"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lc8/oIf;->session:Ljava/lang/String;

    .line 31
    .end local v3    # "sessionObj":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    const-string/jumbo v5, "strategy"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lc8/pIf;->makeStrategy(Lcom/alibaba/fastjson/JSONObject;)Lc8/pIf;

    move-result-object v5

    iput-object v5, v1, Lc8/oIf;->strategy:Lc8/pIf;

    .line 32
    const-string/jumbo v5, "task"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lc8/nIf;->makeTask(Lcom/alibaba/fastjson/JSONObject;)Lc8/nIf;

    move-result-object v5

    iput-object v5, v1, Lc8/oIf;->task:Lc8/nIf;

    .line 37
    .end local v1    # "info":Lc8/oIf;
    .end local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    return-object v1

    .line 28
    .restart local v1    # "info":Lc8/oIf;
    .restart local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    const/4 v5, 0x0

    iput-object v5, v1, Lc8/oIf;->session:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    .end local v1    # "info":Lc8/oIf;
    .end local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    move-object v1, v4

    .line 37
    goto :goto_1
.end method
