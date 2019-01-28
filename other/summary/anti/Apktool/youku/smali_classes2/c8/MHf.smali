.class public Lc8/MHf;
.super Landroid/os/AsyncTask;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OHf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryTraceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
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
    .line 179
    iput-object p1, p0, Lc8/MHf;->this$0:Lc8/OHf;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 180
    iput-object p2, p0, Lc8/MHf;->mContext:Landroid/content/Context;

    .line 181
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/MHf;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 185
    iget-object v1, p0, Lc8/MHf;->mContext:Landroid/content/Context;

    invoke-static {}, Lc8/EHf;->getTTID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/lIf;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lc8/lIf;

    move-result-object v0

    .line 186
    .local v0, "business":Lc8/lIf;
    invoke-static {}, Lc8/EHf;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lc8/EHf;->getAppkey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/MHf;->this$0:Lc8/OHf;

    iget-object v4, p0, Lc8/MHf;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lc8/OHf;->access$400(Lc8/OHf;Landroid/content/Context;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc8/lIf;->queryTraceStatusInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/MHf;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 9
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 193
    if-eqz p1, :cond_4

    .line 195
    iget-object v6, p0, Lc8/MHf;->this$0:Lc8/OHf;

    invoke-static {v6, p1}, Lc8/OHf;->access$500(Lc8/OHf;Ljava/lang/String;)Lc8/qIf;

    move-result-object v5

    .line 196
    .local v5, "taskStatusInfo":Lc8/qIf;
    if-nez v5, :cond_1

    .line 235
    .end local v5    # "taskStatusInfo":Lc8/qIf;
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local v5    # "taskStatusInfo":Lc8/qIf;
    :cond_1
    iget-object v6, p0, Lc8/MHf;->this$0:Lc8/OHf;

    invoke-static {v6}, Lc8/OHf;->access$200(Lc8/OHf;)Lc8/qIf;

    move-result-object v6

    if-nez v6, :cond_2

    .line 200
    iget-object v6, p0, Lc8/MHf;->this$0:Lc8/OHf;

    invoke-static {v6, v5}, Lc8/OHf;->access$202(Lc8/OHf;Lc8/qIf;)Lc8/qIf;

    .line 210
    :goto_1
    iget-object v6, p0, Lc8/MHf;->this$0:Lc8/OHf;

    invoke-static {v6}, Lc8/OHf;->access$200(Lc8/OHf;)Lc8/qIf;

    move-result-object v6

    invoke-virtual {v6}, Lc8/qIf;->getStrategy()Lc8/pIf;

    move-result-object v6

    iget-object v6, v6, Lc8/pIf;->type:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    sget-object v7, Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;->OTHERS:Lcom/taobao/tao/log/query/TaskStatusInfo$TraceMode;

    if-eq v6, v7, :cond_0

    .line 215
    if-eqz v5, :cond_0

    .line 216
    invoke-virtual {v5}, Lc8/qIf;->getTaskId()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "taskID":Ljava/lang/String;
    invoke-virtual {v5}, Lc8/qIf;->getSession()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "session":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 223
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "appKey"

    invoke-static {}, Lc8/EHf;->getAppkey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string/jumbo v6, "user"

    invoke-static {}, Lc8/EHf;->getUserNick()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v6, "deviceId"

    invoke-static {}, Lc8/EHf;->getUTDID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v6, "taskId"

    invoke-virtual {v1, v6, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string/jumbo v6, "session"

    invoke-virtual {v1, v6, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v6, p0, Lc8/MHf;->this$0:Lc8/OHf;

    iget-object v7, p0, Lc8/MHf;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lc8/OHf;->access$300(Lc8/OHf;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .end local v1    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "session":Ljava/lang/String;
    .end local v4    # "taskID":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lc8/MHf;->this$0:Lc8/OHf;

    invoke-static {v6}, Lc8/OHf;->access$200(Lc8/OHf;)Lc8/qIf;

    move-result-object v6

    invoke-virtual {v6}, Lc8/qIf;->getSession()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "oldSession":Ljava/lang/String;
    invoke-virtual {v5}, Lc8/qIf;->getSession()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "curSession":Ljava/lang/String;
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 207
    :cond_3
    iget-object v6, p0, Lc8/MHf;->this$0:Lc8/OHf;

    invoke-static {v6, v5}, Lc8/OHf;->access$202(Lc8/OHf;Lc8/qIf;)Lc8/qIf;

    goto :goto_1

    .line 231
    .end local v0    # "curSession":Ljava/lang/String;
    .end local v2    # "oldSession":Ljava/lang/String;
    .end local v5    # "taskStatusInfo":Lc8/qIf;
    :cond_4
    iget-object v6, p0, Lc8/MHf;->this$0:Lc8/OHf;

    invoke-static {v6, v7}, Lc8/OHf;->access$202(Lc8/OHf;Lc8/qIf;)Lc8/qIf;

    .line 232
    iget-object v6, p0, Lc8/MHf;->this$0:Lc8/OHf;

    invoke-static {v6, v7}, Lc8/OHf;->access$602(Lc8/OHf;Landroid/os/Handler;)Landroid/os/Handler;

    goto/16 :goto_0
.end method
