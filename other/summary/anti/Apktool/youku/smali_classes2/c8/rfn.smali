.class public Lc8/rfn;
.super Ljava/lang/Object;
.source "DownloadVipLegalManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qfn;
    }
.end annotation


# static fields
.field private static final KEY_VIDEODOWNLOAD_FILE:Ljava/lang/String; = "download_vip_legal_info_sharepref"

.field private static final KEY_VIDEODOWNLOAD_LEGAL:Ljava/lang/String; = "download_vip_legal_info"

.field private static final TAG:Ljava/lang/String; = "DownloadVipLegalManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static activeDownloadLegal(Lc8/qfn;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qfn",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "listener":Lc8/qfn;, "Lcom/youku/service/download/tryout/DownloadVipLegalManager$MtopResultListener<Ljava/lang/String;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;

    invoke-direct {v1}, Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;-><init>()V

    .line 167
    .local v1, "request":Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;
    if-nez p1, :cond_0

    .line 168
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 170
    .restart local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;->getDefautParams()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "defaultParams":Ljava/lang/String;
    const-string/jumbo v2, "request"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-class v2, Ljava/lang/String;

    invoke-static {v1, p1, p0, v2}, Lc8/rfn;->getMtopResponse(Lmtopsdk/mtop/domain/MtopRequest;Ljava/util/Map;Lc8/qfn;Ljava/lang/Class;)Lc8/ENp;

    .line 173
    return-void
.end method

.method public static consumeDownloadLegal(ILc8/qfn;Ljava/util/Map;)V
    .locals 4
    .param p0, "consumeDownloadLegal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc8/qfn",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "listener":Lc8/qfn;, "Lcom/youku/service/download/tryout/DownloadVipLegalManager$MtopResultListener<Ljava/lang/String;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "consumeDownloadLegal... consumeDownloadLegal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    new-instance v1, Lcom/youku/service/download/request/VipDownloadLegalConsumeRequest;

    invoke-direct {v1}, Lcom/youku/service/download/request/VipDownloadLegalConsumeRequest;-><init>()V

    .line 183
    .local v1, "request":Lcom/youku/service/download/request/VipDownloadLegalConsumeRequest;
    if-nez p2, :cond_0

    .line 184
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 186
    .restart local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Lcom/youku/service/download/request/VipDownloadLegalConsumeRequest;->getDefautParams(J)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "defaultParams":Ljava/lang/String;
    const-string/jumbo v2, "request"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-class v2, Ljava/lang/String;

    invoke-static {v1, p2, p1, v2}, Lc8/rfn;->getMtopResponse(Lmtopsdk/mtop/domain/MtopRequest;Ljava/util/Map;Lc8/qfn;Ljava/lang/Class;)Lc8/ENp;

    .line 189
    return-void
.end method

.method public static getLegalInfo()Lc8/Sen;
    .locals 6

    .prologue
    .line 196
    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v4, "download_vip_legal_info_sharepref"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 197
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "download_vip_legal_info"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    new-instance v1, Lc8/Sen;

    invoke-direct {v1}, Lc8/Sen;-><init>()V

    .line 202
    :goto_0
    return-object v1

    .line 201
    :cond_0
    const-class v3, Lc8/Sen;

    invoke-static {v0, v3}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Sen;

    .line 202
    .local v1, "legalInfo":Lc8/Sen;
    goto :goto_0
.end method

.method public static getMtopResponse(Lmtopsdk/mtop/domain/MtopRequest;Ljava/util/Map;Lc8/qfn;Ljava/lang/Class;)Lc8/ENp;
    .locals 7
    .param p0, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmtopsdk/mtop/domain/MtopRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/qfn",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lc8/ENp;"
        }
    .end annotation

    .prologue
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "listener":Lc8/qfn;, "Lcom/youku/service/download/tryout/DownloadVipLegalManager$MtopResultListener<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 55
    invoke-static {}, Lc8/OWc;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_1

    .line 56
    if-eqz p2, :cond_0

    .line 57
    const-string/jumbo v5, "no network"

    invoke-interface {p2, v5}, Lc8/qfn;->onGetDataFail(Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    return-object v2

    .line 61
    :cond_1
    if-nez p0, :cond_2

    .line 62
    if-eqz p2, :cond_0

    .line 63
    const-string/jumbo v5, "request is empty!"

    invoke-interface {p2, v5}, Lc8/qfn;->onGetDataFail(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    const-class v5, Lc8/vdn;

    invoke-static {v5}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/vdn;

    invoke-interface {v5}, Lc8/vdn;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "uid":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "ApiParamsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "uid"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v5, "did"

    sget-object v6, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v5, "utdid"

    sget-object v6, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/Iin;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v5, "device"

    const-string/jumbo v6, "ANDROID"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v5, "layoutVersion"

    const-string/jumbo v6, "55555"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v5, "root"

    const-string/jumbo v6, "EXPLORE"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 79
    .local v3, "systemInfo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "os"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v5, "ver"

    sget-object v6, Lc8/NHg;->appver:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v5, "brand"

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v5, "guid"

    sget-object v6, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v5, "imei"

    sget-object v6, Lc8/NHg;->imei:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v5, "network"

    invoke-static {}, Lc8/OWc;->getNetworkType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v6, "pid"

    const-class v5, Lc8/vdn;

    invoke-static {v5}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/vdn;

    invoke-interface {v5}, Lc8/vdn;->getPid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v5, "operator"

    sget-object v6, Lc8/NHg;->operator:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    if-eqz p1, :cond_3

    .line 88
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 91
    :cond_3
    const-string/jumbo v5, "systemInfo"

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v0}, Lc8/qPp;->convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 93
    const/4 v5, 0x0

    invoke-static {v5}, Lc8/BMp;->setTLogEnabled(Z)V

    .line 94
    const/4 v5, 0x1

    invoke-static {v5}, Lc8/BMp;->setPrintLog(Z)V

    .line 95
    const/4 v2, 0x0

    .line 97
    .local v2, "inner":Lc8/ENp;
    :try_start_0
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v5

    invoke-static {}, Lc8/Iin;->getTTID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lc8/AOp;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/COp;

    move-result-object v5

    new-instance v6, Lc8/pfn;

    invoke-direct {v6, p3, p2}, Lc8/pfn;-><init>(Ljava/lang/Class;Lc8/qfn;)V

    invoke-virtual {v5, v6}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v5

    .line 134
    invoke-virtual {v5}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_0

    .line 139
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lc8/qfn;->onGetDataFail(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static queryDownloadLegal(Lc8/qfn;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qfn",
            "<",
            "Lcom/youku/service/download/response/VipDownloadLegalData;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "listener":Lc8/qfn;, "Lcom/youku/service/download/tryout/DownloadVipLegalManager$MtopResultListener<Lcom/youku/service/download/response/VipDownloadLegalData;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;

    invoke-direct {v1}, Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;-><init>()V

    .line 152
    .local v1, "request":Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;
    if-nez p1, :cond_0

    .line 153
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 155
    .restart local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;->getDefautParams()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "defaultParams":Ljava/lang/String;
    const-string/jumbo v2, "req"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-class v2, Lcom/youku/service/download/response/VipDownloadLegalData;

    invoke-static {v1, p1, p0, v2}, Lc8/rfn;->getMtopResponse(Lmtopsdk/mtop/domain/MtopRequest;Ljava/util/Map;Lc8/qfn;Ljava/lang/Class;)Lc8/ENp;

    .line 158
    return-void
.end method

.method public static updateLegalInfo(Lc8/Sen;)V
    .locals 6
    .param p0, "legalInfo"    # Lc8/Sen;

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {p0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "data":Ljava/lang/String;
    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v4, "download_vip_legal_info_sharepref"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 215
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 216
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "download_vip_legal_info"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
