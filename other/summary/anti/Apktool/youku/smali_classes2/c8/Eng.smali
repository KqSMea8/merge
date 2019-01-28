.class public Lc8/Eng;
.super Ljava/lang/Object;
.source "MtopAntConfigFetcher.java"

# interfaces
.implements Lc8/aog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dng;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mMtop:Lc8/AOp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/AOp;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mtop"    # Lc8/AOp;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lc8/Eng;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lc8/Eng;->mMtop:Lc8/AOp;

    .line 33
    return-void
.end method


# virtual methods
.method public fetchAntConfig(JJLjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "ver"    # J
    .param p3, "antVer"    # J
    .param p5, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Lc8/mOp;->getInstance()Lc8/mOp;

    move-result-object v10

    invoke-virtual {v10}, Lc8/mOp;->getGlobalTtid()Ljava/lang/String;

    move-result-object v9

    .line 38
    .local v9, "ttid":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fetchAntConfig: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lc8/log;->info([Ljava/lang/String;)V

    .line 39
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 40
    const/4 v2, 0x0

    .line 77
    :goto_0
    return-object v2

    .line 43
    :cond_0
    new-instance v8, Lc8/Dng;

    invoke-direct {v8}, Lc8/Dng;-><init>()V

    .line 44
    .local v8, "request":Lc8/Dng;
    move-wide/from16 v0, p1

    iput-wide v0, v8, Lc8/Dng;->ver:J

    .line 45
    move-wide/from16 v0, p3

    iput-wide v0, v8, Lc8/Dng;->antVer:J

    .line 46
    iget-object v10, p0, Lc8/Eng;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lc8/Dng;->deviceId:Ljava/lang/String;

    .line 48
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "triggerScene"

    move-object/from16 v0, p5

    invoke-virtual {v5, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iput-object v5, v8, Lc8/Dng;->context:Ljava/util/Map;

    .line 52
    iget-object v6, p0, Lc8/Eng;->mMtop:Lc8/AOp;

    .line 53
    .local v6, "mtop":Lc8/AOp;
    if-nez v6, :cond_1

    .line 54
    iget-object v10, p0, Lc8/Eng;->context:Landroid/content/Context;

    invoke-static {v10}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v6

    .line 56
    :cond_1
    invoke-virtual {v6, v8, v9}, Lc8/AOp;->build(Lc8/dOp;Ljava/lang/String;)Lc8/COp;

    move-result-object v10

    sget-object v11, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v10, v11}, Lc8/COp;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    move-result-object v10

    invoke-virtual {v10}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v7

    .line 57
    .local v7, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    if-nez v7, :cond_2

    .line 58
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "fetchAntConfig: mtopResponse is null"

    aput-object v12, v10, v11

    invoke-static {v10}, Lc8/log;->info([Ljava/lang/String;)V

    .line 59
    const/4 v2, 0x0

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v10

    if-nez v10, :cond_3

    .line 62
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "::"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "failMessage":Ljava/lang/String;
    invoke-static {v3}, Lc8/mog;->commitNetWorkError(Ljava/lang/String;)V

    .line 64
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "fetchAntConfig: mtop request fail"

    aput-object v12, v10, v11

    invoke-static {v10}, Lc8/log;->info([Ljava/lang/String;)V

    .line 65
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 67
    .end local v3    # "failMessage":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 68
    .local v4, "jsonObject":Lorg/json/JSONObject;
    if-nez v4, :cond_4

    .line 69
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 71
    :cond_4
    const-string/jumbo v10, "ret"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 72
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fetchAntConfig: fail "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lc8/log;->info([Ljava/lang/String;)V

    .line 73
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 75
    :cond_5
    const-string/jumbo v10, "data"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "data":Ljava/lang/String;
    goto/16 :goto_0
.end method
