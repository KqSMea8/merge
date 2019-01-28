.class public Lc8/Qhn;
.super Ljava/lang/Object;
.source "PreCacheRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestPreCacheList(Lc8/JNp;)V
    .locals 7
    .param p0, "listener"    # Lc8/JNp;

    .prologue
    .line 21
    new-instance v3, Lc8/Rhn;

    invoke-direct {v3}, Lc8/Rhn;-><init>()V

    .line 22
    .local v3, "requestInfo":Lc8/Rhn;
    new-instance v2, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v2}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 24
    .local v2, "request":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v5, v3, Lc8/Rhn;->apiName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 26
    iget-object v5, v3, Lc8/Rhn;->apiVer:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 28
    iget-boolean v5, v3, Lc8/Rhn;->needCode:Z

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v0, "apiParamsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v5, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 37
    .local v4, "utdid":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 39
    const-string/jumbo v5, "did"

    invoke-static {v4}, Lc8/Uhn;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    invoke-static {v0}, Lc8/qPp;->convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v5

    invoke-static {}, Lc8/Iin;->getTTID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lc8/AOp;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/COp;

    move-result-object v5

    invoke-virtual {v5, p0}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v5

    invoke-virtual {v5}, Lc8/COp;->asyncRequest()Lc8/ENp;

    .line 43
    return-void

    .line 33
    .end local v4    # "utdid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    const-string/jumbo v4, ""

    .restart local v4    # "utdid":Ljava/lang/String;
    goto :goto_0
.end method
