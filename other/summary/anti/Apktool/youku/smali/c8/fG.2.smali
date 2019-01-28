.class public Lc8/fG;
.super Ljava/lang/Object;
.source "WVCustomPackageAppConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVCustomPackageAppConfig"

.field private static volatile instance:Lc8/fG;


# instance fields
.field private mComboRqCount:I

.field private updateCount:I

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lc8/fG;->instance:Lc8/fG;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/fG;->v:Ljava/lang/String;

    .line 36
    iput v1, p0, Lc8/fG;->mComboRqCount:I

    .line 37
    iput v1, p0, Lc8/fG;->updateCount:I

    return-void
.end method

.method static synthetic access$000(Lc8/fG;)I
    .locals 1
    .param p0, "x0"    # Lc8/fG;

    .prologue
    .line 32
    iget v0, p0, Lc8/fG;->mComboRqCount:I

    return v0
.end method

.method static synthetic access$006(Lc8/fG;)I
    .locals 1
    .param p0, "x0"    # Lc8/fG;

    .prologue
    .line 32
    iget v0, p0, Lc8/fG;->mComboRqCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/fG;->mComboRqCount:I

    return v0
.end method

.method static synthetic access$100(Lc8/fG;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lc8/fG;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lc8/fG;->parseComboConfig(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lc8/fG;)I
    .locals 1
    .param p0, "x0"    # Lc8/fG;

    .prologue
    .line 32
    iget v0, p0, Lc8/fG;->updateCount:I

    return v0
.end method

.method static synthetic access$300(Lc8/fG;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lc8/fG;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lc8/fG;->parseConfig(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lc8/fG;Ljava/util/List;Lc8/LB;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/fG;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lc8/LB;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lc8/fG;->updateByCombo(Ljava/util/List;Lc8/LB;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lc8/fG;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lc8/fG;->instance:Lc8/fG;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lc8/fG;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lc8/fG;->instance:Lc8/fG;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lc8/fG;

    invoke-direct {v0}, Lc8/fG;-><init>()V

    sput-object v0, Lc8/fG;->instance:Lc8/fG;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lc8/fG;->instance:Lc8/fG;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parseComboConfig(Ljava/lang/String;Ljava/util/List;)Z
    .locals 18
    .param p1, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 261
    .local p2, "appInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 262
    const/4 v14, 0x0

    .line 320
    :goto_0
    return v14

    .line 263
    :cond_0
    const-string/jumbo v14, "\\\n\\\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, "array":[Ljava/lang/String;
    if-eqz v7, :cond_1

    array-length v14, v7

    if-eqz v14, :cond_1

    array-length v14, v7

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    if-eq v14, v15, :cond_2

    .line 265
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 267
    :cond_2
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v13

    .line 268
    .local v13, "zipGlobalConfig":Lc8/WG;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 269
    .local v4, "appInfoNamesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v14, v7

    if-ge v8, v14, :cond_8

    .line 272
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    aget-object v14, v7, v8

    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 273
    .local v10, "jsonObj":Lorg/json/JSONObject;
    if-eqz v10, :cond_3

    .line 274
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 275
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_4

    .line 269
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 278
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v10    # "jsonObj":Lorg/json/JSONObject;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 279
    .local v6, "appName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 282
    .local v3, "appInfoName":Ljava/lang/String;
    const-string/jumbo v14, "i"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 283
    const/4 v14, -0x1

    invoke-virtual {v10, v6, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 284
    .local v12, "value":I
    const/4 v14, -0x1

    if-ne v12, v14, :cond_6

    .line 285
    invoke-virtual {v13, v3}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v2

    .line 286
    .local v2, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-nez v2, :cond_5

    .line 287
    new-instance v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .end local v2    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    invoke-direct {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;-><init>()V

    .line 289
    .restart local v2    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :cond_5
    iput-object v3, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    .line 290
    const/4 v14, 0x1

    iput-boolean v14, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    .line 291
    sget v14, Lc8/dH;->ZIP_REMOVED:I

    iput v14, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 292
    iget-wide v14, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/16 v16, 0x1000

    or-long v14, v14, v16

    iput-wide v14, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    goto :goto_2

    .end local v2    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v3    # "appInfoName":Ljava/lang/String;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    .end local v12    # "value":I
    :catch_0
    move-exception v14

    goto :goto_2

    .line 296
    .restart local v3    # "appInfoName":Ljava/lang/String;
    .restart local v6    # "appName":Ljava/lang/String;
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v10    # "jsonObj":Lorg/json/JSONObject;
    :cond_6
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 297
    .local v5, "appInfoObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_3

    .line 299
    const-string/jumbo v14, "v"

    const-string/jumbo v15, ""

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 300
    .local v11, "v":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 303
    invoke-virtual {v13, v6}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v2

    .line 304
    .restart local v2    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-nez v2, :cond_7

    .line 305
    new-instance v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .end local v2    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    invoke-direct {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;-><init>()V

    .line 307
    .restart local v2    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :cond_7
    iput-object v11, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    .line 308
    iput-object v6, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    .line 309
    const-string/jumbo v14, "s"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    iput-wide v14, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    .line 310
    const-string/jumbo v14, "f"

    const-wide/16 v16, 0x5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    iput-wide v14, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    .line 311
    const-string/jumbo v14, "t"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    iput-wide v14, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->t:J

    .line 312
    const-string/jumbo v14, "z"

    const-string/jumbo v15, ""

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    .line 313
    const/4 v14, 0x1

    iput-boolean v14, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 318
    .end local v2    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v3    # "appInfoName":Ljava/lang/String;
    .end local v5    # "appInfoObj":Lorg/json/JSONObject;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    .end local v11    # "v":Ljava/lang/String;
    :cond_8
    const-string/jumbo v14, "WVCustomPackageAppConfig"

    const-string/jumbo v15, "\u89e3\u6790\u6210\u529f combo \u4e00\u6b21"

    invoke-static {v14, v15}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {v13}, Lc8/LG;->saveGlobalConfigToloc(Lc8/WG;)Z

    .line 320
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method private parseConfig(Ljava/lang/String;Ljava/util/List;)Z
    .locals 10
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "appInfoList"    # Ljava/util/List;

    .prologue
    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 328
    const/4 v8, 0x0

    .line 362
    :goto_0
    return v8

    .line 330
    :cond_0
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v5

    .line 332
    .local v5, "zipGlobalConfig":Lc8/WG;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 333
    .local v3, "jsonObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 334
    const-string/jumbo v8, "v"

    const-string/jumbo v9, "0"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lc8/fG;->v:Ljava/lang/String;

    .line 335
    const-string/jumbo v8, "0"

    iget-object v9, p0, Lc8/fG;->v:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 336
    const/4 v8, 0x0

    goto :goto_0

    .line 338
    :cond_1
    const-string/jumbo v8, "apps"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 339
    .local v1, "apps":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 340
    .local v2, "appsIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 341
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    .local v0, "appName":Ljava/lang/String;
    const-wide/16 v8, 0x0

    invoke-virtual {v1, v0, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 343
    .local v6, "s":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    .line 344
    new-instance v8, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    invoke-direct {v8}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;-><init>()V

    .line 345
    invoke-virtual {v5, v0}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v4

    .line 346
    .local v4, "oldAppInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-eqz v4, :cond_2

    .line 350
    iget-wide v8, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    cmp-long v8, v6, v8

    if-gtz v8, :cond_3

    .line 352
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 354
    :cond_3
    iput-wide v6, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "apps":Lorg/json/JSONObject;
    .end local v2    # "appsIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "oldAppInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v6    # "s":J
    :catch_0
    move-exception v8

    .line 361
    :cond_4
    invoke-static {v5}, Lc8/LG;->saveGlobalConfigToloc(Lc8/WG;)Z

    .line 362
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private updateByCombo(Ljava/util/List;Lc8/LB;Ljava/lang/String;)V
    .locals 5
    .param p2, "callback"    # Lc8/LB;
    .param p3, "snapshotN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lc8/LB;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "customList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 106
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v4, 0x0

    iput v4, p0, Lc8/fG;->mComboRqCount:I

    .line 107
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    iget v4, p0, Lc8/fG;->mComboRqCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lc8/fG;->mComboRqCount:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "appNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v4, Lc8/DB;->commonConfig:Lc8/EB;

    iget v4, v4, Lc8/EB;->customsComboLimit:I

    if-ge v2, v4, :cond_0

    .line 112
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    :cond_0
    invoke-virtual {p0, v0, p3}, Lc8/fG;->getConfigUrl(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "comboConfigUrl":Ljava/lang/String;
    invoke-direct {p0, v1, p2, v0, p3}, Lc8/fG;->updateCustomComboInfos(Ljava/lang/String;Lc8/LB;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v0    # "appNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "comboConfigUrl":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private updateCustomComboInfos(Ljava/lang/String;Lc8/LB;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "configUrl"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/LB;
    .param p4, "snapshotN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/LB;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lc8/VB;->getInstance()Lc8/VB;

    move-result-object v0

    new-instance v1, Lc8/dG;

    invoke-direct {v1, p0, p2, p3, p1}, Lc8/dG;-><init>(Lc8/fG;Lc8/LB;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lc8/VB;->connect(Ljava/lang/String;Lc8/WB;)V

    .line 168
    return-void
.end method

.method private updateCustomInfos(Ljava/lang/String;Lc8/LB;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "configUrl"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/LB;
    .param p3, "list"    # Ljava/util/List;
    .param p4, "snapshotN"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {}, Lc8/VB;->getInstance()Lc8/VB;

    move-result-object v6

    new-instance v0, Lc8/eG;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lc8/eG;-><init>(Lc8/fG;Lc8/LB;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p1, v0}, Lc8/VB;->connect(Ljava/lang/String;Lc8/WB;)V

    .line 218
    return-void
.end method


# virtual methods
.method public getConfigUrl(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p2, "snapshotN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 227
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v4, "url":Ljava/lang/StringBuilder;
    invoke-static {}, Lc8/xB;->getH5Host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string/jumbo v5, "/appconfig/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string/jumbo v5, "wv_main_config"

    const-string/jumbo v6, "abt"

    const-string/jumbo v7, "a"

    invoke-static {v5, v6, v7}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "target":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 235
    .local v0, "abt":C
    const/16 v5, 0x61

    if-gt v5, v0, :cond_0

    const/16 v5, 0x63

    if-le v0, v5, :cond_1

    .line 236
    :cond_0
    const-string/jumbo v3, "a"

    .line 238
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 242
    const-string/jumbo v5, "??"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Lc8/DB;->commonConfig:Lc8/EB;

    iget v5, v5, Lc8/EB;->customsComboLimit:I

    if-ge v1, v5, :cond_4

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 248
    if-eqz v1, :cond_3

    .line 249
    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string/jumbo v5, "/app.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public declared-synchronized resetConfig()V
    .locals 3

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/fG;->v:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "wv_main_config"

    const-string/jumbo v1, "customs"

    const-string/jumbo v2, "0"

    invoke-static {v0, v1, v2}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCustomConfig(Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "callback"    # Lc8/LB;
    .param p2, "defaultUrl"    # Ljava/lang/String;
    .param p3, "snapshotN"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 62
    sget-object v8, Lc8/DB;->commonConfig:Lc8/EB;

    iget v8, v8, Lc8/EB;->packageAppStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    sget-object v8, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_DISABLED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {p1, v8, v7}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v1

    .line 70
    .local v1, "config":Lc8/WG;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v3, "customList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput v7, p0, Lc8/fG;->updateCount:I

    .line 72
    invoke-virtual {v1}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 73
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 74
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 75
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 76
    .local v0, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    invoke-virtual {v0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getInfo()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    move-result-object v8

    sget-object v9, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_UPDATE_INFO_DELETE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    if-eq v8, v9, :cond_3

    iget v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v9, Lc8/dH;->ZIP_REMOVED:I

    if-ne v8, v9, :cond_4

    :cond_3
    const/4 v5, 0x1

    .line 77
    .local v5, "isDel":Z
    :goto_2
    iget-boolean v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    if-eqz v8, :cond_2

    if-nez v5, :cond_2

    .line 78
    iget-object v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v5    # "isDel":Z
    :cond_4
    move v5, v7

    .line 76
    goto :goto_2

    .line 81
    .end local v0    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 83
    :cond_6
    if-eqz p1, :cond_0

    .line 84
    sget-object v8, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {p1, v8, v7}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    goto :goto_0

    .line 88
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lc8/fG;->updateCount:I

    .line 89
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v7}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    sget-object v7, Lc8/DB;->commonConfig:Lc8/EB;

    iget v7, v7, Lc8/EB;->customsDirectQueryLimit:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-gt v7, v8, :cond_9

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 94
    move-object v2, p2

    .line 98
    .local v2, "configUrl":Ljava/lang/String;
    :goto_3
    invoke-direct {p0, v2, p1, v3, p3}, Lc8/fG;->updateCustomInfos(Ljava/lang/String;Lc8/LB;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v2    # "configUrl":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v7

    const-string/jumbo v8, "6"

    const-string/jumbo v9, "0"

    invoke-static {}, Lc8/MB;->getTargetValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10, p3}, Lc8/KB;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "configUrl":Ljava/lang/String;
    goto :goto_3

    .line 100
    .end local v2    # "configUrl":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, v3, p1, p3}, Lc8/fG;->updateByCombo(Ljava/util/List;Lc8/LB;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
