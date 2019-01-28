.class public Lc8/tRf;
.super Landroid/os/AsyncTask;
.source "UpdateDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yRf;->checkApkUpdate(Lc8/xRf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/taobao/update/datasource/local/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yRf;

.field final synthetic val$callback:Lc8/xRf;


# direct methods
.method constructor <init>(Lc8/yRf;Lc8/xRf;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lc8/tRf;->this$0:Lc8/yRf;

    iput-object p2, p0, Lc8/tRf;->val$callback:Lc8/xRf;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/taobao/update/datasource/local/UpdateInfo;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v2, p0, Lc8/tRf;->this$0:Lc8/yRf;

    invoke-static {v2}, Lc8/yRf;->access$300(Lc8/yRf;)Lc8/FRf;

    move-result-object v2

    if-nez v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object v1

    .line 222
    :cond_1
    iget-object v2, p0, Lc8/tRf;->this$0:Lc8/yRf;

    invoke-static {v2}, Lc8/yRf;->access$300(Lc8/yRf;)Lc8/FRf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/FRf;->queryApkUpdateInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 224
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 225
    sget-object v1, Lc8/rRf;->MTOP_SOURCE:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/BRf;->convert2UpdateInfo(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/taobao/update/datasource/local/UpdateInfo;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 217
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/tRf;->doInBackground([Ljava/lang/Void;)Lcom/taobao/update/datasource/local/UpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/taobao/update/datasource/local/UpdateInfo;)V
    .locals 1
    .param p1, "updateInfo"    # Lcom/taobao/update/datasource/local/UpdateInfo;

    .prologue
    .line 234
    iget-object v0, p0, Lc8/tRf;->val$callback:Lc8/xRf;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lc8/tRf;->val$callback:Lc8/xRf;

    invoke-interface {v0, p1}, Lc8/xRf;->onUpdateInfoReceive(Lcom/taobao/update/datasource/local/UpdateInfo;)V

    .line 237
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 217
    check-cast p1, Lcom/taobao/update/datasource/local/UpdateInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/tRf;->onPostExecute(Lcom/taobao/update/datasource/local/UpdateInfo;)V

    return-void
.end method
