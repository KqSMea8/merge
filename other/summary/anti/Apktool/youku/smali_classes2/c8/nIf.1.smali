.class public Lc8/nIf;
.super Ljava/lang/Object;
.source "TaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field public commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/mIf;",
            ">;"
        }
    .end annotation
.end field

.field public extension:Ljava/lang/String;

.field public taskID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/nIf;->commands:Ljava/util/List;

    .line 47
    return-void
.end method

.method public static makeTask(Lcom/alibaba/fastjson/JSONObject;)Lc8/nIf;
    .locals 7
    .param p0, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 51
    :try_start_0
    new-instance v5, Lc8/nIf;

    invoke-direct {v5}, Lc8/nIf;-><init>()V

    .line 52
    .local v5, "task":Lc8/nIf;
    const-string/jumbo v6, "taskId"

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lc8/nIf;->taskID:Ljava/lang/String;

    .line 53
    const-string/jumbo v6, "commands"

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 54
    .local v3, "list":Lcom/alibaba/fastjson/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 55
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 56
    .local v4, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v4}, Lc8/mIf;->makeCommand(Lcom/alibaba/fastjson/JSONObject;)Lc8/mIf;

    move-result-object v0

    .line 57
    .local v0, "command":Lc8/mIf;
    iget-object v6, v5, Lc8/nIf;->commands:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "command":Lc8/mIf;
    .end local v2    # "i":I
    .end local v3    # "list":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "task":Lc8/nIf;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    .line 63
    const/4 v5, 0x0

    .end local v1    # "e":Lcom/alibaba/fastjson/JSONException;
    :cond_0
    return-object v5
.end method
