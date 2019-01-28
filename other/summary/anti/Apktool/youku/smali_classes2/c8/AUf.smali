.class public Lc8/AUf;
.super Ljava/lang/Object;
.source "HotPatchBusiness.java"


# static fields
.field private static final CONN_TYPE_NONE:Ljava/lang/String; = "none"

.field private static final CONN_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field private static final TAG:Ljava/lang/String; = "HotPatchBusiness"

.field private static instance:Lc8/AUf;


# instance fields
.field private mContext:Landroid/app/Application;

.field private mTtid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lc8/AUf;->instance:Lc8/AUf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/AUf;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lc8/AUf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/AUf;->instance:Lc8/AUf;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lc8/AUf;

    invoke-direct {v0}, Lc8/AUf;-><init>()V

    sput-object v0, Lc8/AUf;->instance:Lc8/AUf;

    .line 41
    :cond_0
    sget-object v0, Lc8/AUf;->instance:Lc8/AUf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNetConnType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    :try_start_0
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 124
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 125
    const-string/jumbo v3, "none"

    .line 139
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    :goto_0
    return-object v3

    .line 130
    .restart local v0    # "connManager":Landroid/net/ConnectivityManager;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 131
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 133
    .local v2, "wifiState":Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v2, :cond_1

    .line 134
    const-string/jumbo v3, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v2    # "wifiState":Landroid/net/NetworkInfo$State;
    :cond_1
    const-string/jumbo v3, "none"

    goto :goto_0

    .line 139
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "none"

    goto :goto_0
.end method


# virtual methods
.method public queryHotPatchUpdateInfo(Landroid/app/Application;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lc8/EUf;
    .locals 18
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "mainVersion"    # Ljava/lang/String;
    .param p3, "hotpatchVersion"    # I
    .param p4, "group"    # Ljava/lang/String;
    .param p5, "customDomain"    # Ljava/lang/String;

    .prologue
    .line 46
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/AUf;->mContext:Landroid/app/Application;

    .line 47
    new-instance v11, Lc8/DUf;

    invoke-direct {v11}, Lc8/DUf;-><init>()V

    .line 48
    .local v11, "request":Lc8/DUf;
    move-object/from16 v0, p2

    iput-object v0, v11, Lc8/DUf;->appVersion:Ljava/lang/String;

    .line 49
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v11, Lc8/DUf;->apiLevel:J

    .line 50
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v11, Lc8/DUf;->patchVersion:J

    .line 51
    move-object/from16 v0, p4

    iput-object v0, v11, Lc8/DUf;->group:Ljava/lang/String;

    .line 52
    move-object/from16 v0, p4

    iput-object v0, v11, Lc8/DUf;->identifier:Ljava/lang/String;

    .line 53
    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v15, v11, Lc8/DUf;->brand:Ljava/lang/String;

    .line 54
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v15, v11, Lc8/DUf;->model:Ljava/lang/String;

    .line 55
    const-string/jumbo v15, "wifi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/AUf;->mContext:Landroid/app/Application;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lc8/AUf;->getNetConnType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-wide/16 v6, 0xa

    .line 56
    .local v6, "netStatus":J
    :goto_0
    iput-wide v6, v11, Lc8/DUf;->netStatus:J

    .line 58
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v14, "updateLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v15, "hotpatch"

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iput-object v14, v11, Lc8/DUf;->updateTypes:Ljava/util/List;

    .line 63
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/AUf;->mTtid:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 64
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/AUf;->mContext:Landroid/app/Application;

    invoke-static {v15}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v15

    const-string/jumbo v16, "600000"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Lc8/AOp;->build(Lc8/dOp;Ljava/lang/String;)Lc8/COp;

    move-result-object v10

    .line 69
    .local v10, "reqInstance":Lc8/COp;
    :goto_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 70
    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Lc8/COp;->setCustomDomain(Ljava/lang/String;)Lc8/COp;

    .line 74
    :cond_0
    sget-object v15, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v10, v15}, Lc8/COp;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    .line 76
    invoke-virtual {v10}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v12

    .line 78
    .local v12, "response":Lmtopsdk/mtop/domain/MtopResponse;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 80
    :try_start_0
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/String;-><init>([B)V

    .line 81
    .local v13, "str":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 82
    invoke-static {v13}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 83
    .local v8, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v15, "data"

    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 84
    const-string/jumbo v15, "data"

    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 85
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    const/4 v4, 0x0

    .line 86
    .local v4, "hasUpdate":Z
    const-string/jumbo v15, "hasUpdate"

    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 87
    const-string/jumbo v15, "hasUpdate"

    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 89
    :cond_1
    if-eqz v4, :cond_4

    .line 90
    const-string/jumbo v15, "hotpatch"

    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 91
    .local v5, "hotpatch":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v5}, Lc8/EUf;->create(Lcom/alibaba/fastjson/JSONObject;)Lc8/EUf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 104
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "hasUpdate":Z
    .end local v5    # "hotpatch":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "str":Ljava/lang/String;
    :goto_2
    return-object v9

    .line 55
    .end local v6    # "netStatus":J
    .end local v10    # "reqInstance":Lc8/COp;
    .end local v12    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    .end local v14    # "updateLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-wide/16 v6, 0x1

    goto/16 :goto_0

    .line 66
    .restart local v6    # "netStatus":J
    .restart local v14    # "updateLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/AUf;->mContext:Landroid/app/Application;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/AUf;->mTtid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lc8/AOp;->instance(Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/AUf;->mTtid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Lc8/AOp;->build(Lc8/dOp;Ljava/lang/String;)Lc8/COp;

    move-result-object v15

    sget-object v16, Lmtopsdk/mtop/domain/JsonTypeEnum;->ORIGINALJSON:Lmtopsdk/mtop/domain/JsonTypeEnum;

    invoke-virtual/range {v15 .. v16}, Lc8/COp;->setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lc8/COp;

    move-result-object v10

    .restart local v10    # "reqInstance":Lc8/COp;
    goto/16 :goto_1

    .line 96
    .restart local v12    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :catch_0
    move-exception v3

    .line 97
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    const-string/jumbo v15, "HotPatchBusiness"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "response parse exception : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 103
    :cond_5
    const-string/jumbo v15, "HotPatchBusiness"

    const-string/jumbo v16, "response is null or response is failed!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public setTtid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lc8/AUf;->mTtid:Ljava/lang/String;

    .line 110
    return-void
.end method
