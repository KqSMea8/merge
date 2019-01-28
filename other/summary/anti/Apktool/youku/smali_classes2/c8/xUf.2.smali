.class public Lc8/xUf;
.super Ljava/lang/Object;
.source "PatchInfoUpdateListener.java"

# interfaces
.implements Lc8/zRf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 19
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 20
    invoke-static {p2}, Lc8/EUf;->create(Lcom/alibaba/fastjson/JSONObject;)Lc8/EUf;

    move-result-object v1

    .line 21
    .local v1, "patchInfo":Lc8/EUf;
    const-string/jumbo v0, ""

    .line 22
    .local v0, "dataId":Ljava/lang/String;
    const-string/jumbo v2, "dataId"

    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    const-string/jumbo v2, "dataId"

    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_0
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, p3, v3}, Lc8/tUf;->dealPatchInfo(Lc8/EUf;Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    const-string/jumbo v2, "data_receiver"

    invoke-static {v2, v0}, Lc8/IUf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .end local v0    # "dataId":Ljava/lang/String;
    .end local v1    # "patchInfo":Lc8/EUf;
    :goto_0
    return-void

    .line 28
    :cond_1
    const-string/jumbo v2, "data_receiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "-1"

    const-string/jumbo v5, "the data is null or empty"

    invoke-static {v2, v3, v4, v5}, Lc8/IUf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
