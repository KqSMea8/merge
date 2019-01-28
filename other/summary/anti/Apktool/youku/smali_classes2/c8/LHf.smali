.class public Lc8/LHf;
.super Landroid/os/AsyncTask;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OHf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryTaskInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lc8/OHf;


# direct methods
.method public constructor <init>(Lc8/OHf;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    iput-object p1, p0, Lc8/LHf;->this$0:Lc8/OHf;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 243
    iput-object p2, p0, Lc8/LHf;->mContext:Landroid/content/Context;

    .line 244
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/LHf;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 248
    iget-object v2, p0, Lc8/LHf;->mContext:Landroid/content/Context;

    invoke-static {}, Lc8/EHf;->getTTID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/lIf;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lc8/lIf;

    move-result-object v0

    .line 249
    .local v0, "business":Lc8/lIf;
    invoke-static {}, Lc8/EHf;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lc8/EHf;->getAppkey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v0, v2, v3, v4}, Lc8/lIf;->queryTaskInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "info":Ljava/lang/String;
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/LHf;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "taskInfo"    # Ljava/lang/String;

    .prologue
    .line 256
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 257
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "appKey"

    invoke-static {}, Lc8/EHf;->getAppkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v4, "user"

    invoke-static {}, Lc8/EHf;->getUserNick()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v4, "deviceId"

    invoke-static {}, Lc8/EHf;->getUTDID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    if-eqz p1, :cond_0

    .line 262
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 263
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "session"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "session":Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v5, "mtop"

    invoke-static {p1, v4, v5}, Lc8/yHf;->parseCommond(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v4, "taskId"

    const-string/jumbo v5, "taskId"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string/jumbo v4, "session"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .end local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "session":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lc8/LHf;->this$0:Lc8/OHf;

    iget-object v5, p0, Lc8/LHf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lc8/OHf;->access$700(Lc8/OHf;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
