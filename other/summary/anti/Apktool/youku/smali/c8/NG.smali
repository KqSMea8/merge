.class public Lc8/NG;
.super Ljava/lang/Object;
.source "ZipAppManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static zipAppManager:Lc8/NG;


# instance fields
.field private isInit:Z

.field private zipAppFile:Lc8/AG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "PackageApp-ZipAppManager"

    sput-object v0, Lc8/NG;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/NG;->isInit:Z

    return-void
.end method

.method private dealAppResFileName(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)V
    .locals 7
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "isInstall"    # Z

    .prologue
    const/4 v6, 0x1

    .line 188
    if-nez p2, :cond_0

    .line 189
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v4

    sget-object v5, Lc8/dH;->APP_RES_NAME:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v6}, Lc8/AG;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "appResPath":Ljava/lang/String;
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v4

    sget-object v5, Lc8/dH;->APP_RES_INC_NAME:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v6}, Lc8/AG;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "appResIncPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "appResFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 193
    .local v3, "ok":Z
    sget-object v5, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " : appResFile changeName : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_1

    const-string/jumbo v4, "sussess!"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v0    # "appResFile":Ljava/io/File;
    .end local v1    # "appResIncPath":Ljava/lang/String;
    .end local v2    # "appResPath":Ljava/lang/String;
    .end local v3    # "ok":Z
    :cond_0
    return-void

    .line 193
    .restart local v0    # "appResFile":Ljava/io/File;
    .restart local v1    # "appResIncPath":Ljava/lang/String;
    .restart local v2    # "appResPath":Ljava/lang/String;
    .restart local v3    # "ok":Z
    :cond_1
    const-string/jumbo v4, "failed!"

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/NG;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lc8/NG;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/NG;->zipAppManager:Lc8/NG;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lc8/NG;

    invoke-direct {v0}, Lc8/NG;-><init>()V

    sput-object v0, Lc8/NG;->zipAppManager:Lc8/NG;

    .line 58
    :cond_0
    sget-object v0, Lc8/NG;->zipAppManager:Lc8/NG;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseUrlMappingInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ZZ)Z
    .locals 27
    .param p0, "zipAppInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p1, "isTemp"    # Z
    .param p2, "isInstall"    # Z

    .prologue
    .line 238
    if-nez p0, :cond_0

    .line 239
    const/16 v22, 0x0

    .line 351
    :goto_0
    return v22

    .line 241
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v22

    sget-object v23, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 242
    sget-object v22, Lc8/NG;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "zcache not need parse appinfo.wvc"

    invoke-static/range {v22 .. v23}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/16 v22, 0x1

    goto :goto_0

    .line 245
    :cond_1
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v22

    sget-object v23, Lc8/dH;->APP_INFO_NAME:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lc8/AG;->readZipAppRes(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "appinfo":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v22

    sget-object v23, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 248
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "//h5."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual/range {v23 .. v23}, Landroid/taobao/windvane/config/EnvEnum;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ".taobao.com/app/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    .line 250
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v22

    sget-object v23, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE2:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 251
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 253
    :cond_3
    sget-object v22, Lc8/NG;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "parseUrlMappingInfo fail. appinfo.wvc is empty."

    invoke-static/range {v22 .. v23}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 257
    :cond_4
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    .local v6, "appInfoResObj":Lorg/json/JSONObject;
    const-string/jumbo v22, "appMonitor"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    const-string/jumbo v22, "mappingUrl"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 261
    .local v12, "mappingUrl":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 262
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    .line 263
    sget-object v22, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " : mappingUrl : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-nez v22, :cond_5

    .line 269
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    .line 270
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lc8/NG;->TAG:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "-Folders"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "create empty folders: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_5
    if-eqz p2, :cond_6

    .line 274
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lc8/NG;->TAG:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "-Folders"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "Override update, folders should be clear"

    invoke-static/range {v22 .. v23}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_6
    const-string/jumbo v22, "removedFolders"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 278
    .local v14, "removedFolders":Lorg/json/JSONArray;
    if-eqz v14, :cond_9

    .line 280
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_9

    .line 281
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 282
    .local v17, "rmFolder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lc8/NG;->TAG:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "-Folders"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " : remvoe folder : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 265
    .end local v11    # "i":I
    .end local v14    # "removedFolders":Lorg/json/JSONArray;
    .end local v17    # "rmFolder":Ljava/lang/String;
    :cond_8
    sget-object v22, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " mappingUrl is empty!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 347
    .end local v6    # "appInfoResObj":Lorg/json/JSONObject;
    .end local v12    # "mappingUrl":Ljava/lang/String;
    :catch_0
    move-exception v22

    invoke-virtual/range {p0 .. p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v22

    sget-object v23, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE2:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 348
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 289
    .restart local v6    # "appInfoResObj":Lorg/json/JSONObject;
    .restart local v12    # "mappingUrl":Ljava/lang/String;
    .restart local v14    # "removedFolders":Lorg/json/JSONArray;
    :cond_9
    :try_start_1
    const-string/jumbo v22, "addFolders"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 290
    .local v5, "addFolders":Lorg/json/JSONArray;
    if-eqz v5, :cond_b

    .line 292
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_b

    .line 293
    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "addFolder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lc8/NG;->TAG:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "-Folders"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " : add folder : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 300
    .end local v4    # "addFolder":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_b
    const-string/jumbo v22, "removedRes"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 301
    .local v15, "removedRes":Lorg/json/JSONArray;
    if-eqz v15, :cond_e

    if-eqz v12, :cond_e

    .line 302
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_e

    .line 303
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 304
    .local v18, "rmRes":Ljava/lang/String;
    if-eqz v8, :cond_c

    .line 305
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lc8/AG;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 306
    .local v16, "rmFilePath":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 309
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 312
    invoke-static {v9}, Lc8/JD;->deleteFile(Ljava/io/File;)Z

    move-result v13

    .line 313
    .local v13, "ok":Z
    sget-object v23, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, " : delete res:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, " : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-eqz v13, :cond_d

    const-string/jumbo v22, "sussess!"

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .end local v9    # "file":Ljava/io/File;
    .end local v13    # "ok":Z
    .end local v16    # "rmFilePath":Ljava/lang/String;
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 313
    .restart local v9    # "file":Ljava/io/File;
    .restart local v13    # "ok":Z
    .restart local v16    # "rmFilePath":Ljava/lang/String;
    :cond_d
    const-string/jumbo v22, "failed!"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 320
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "i":I
    .end local v13    # "ok":Z
    .end local v16    # "rmFilePath":Ljava/lang/String;
    .end local v18    # "rmRes":Ljava/lang/String;
    :cond_e
    :try_start_2
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lc8/AG;->getZipRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "appRootPath":Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v19, "rootDir":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 323
    new-instance v22, Lc8/MG;

    invoke-direct/range {v22 .. v22}, Lc8/MG;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v10

    .line 330
    .local v10, "files":[Ljava/lang/String;
    if-nez v10, :cond_10

    const/16 v20, 0x0

    .line 332
    .local v20, "size":I
    :goto_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lc8/NG;->TAG:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "-Folders"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " local existed "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " dirs."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 334
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lc8/NG;->TAG:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "-Folders"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "ZCache: folders index does not match the local files, indexed ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "], local existed ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->localFolders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->localFolders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 337
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v22

    const-string/jumbo v23, "WrongFolderIndex"

    const/16 v24, -0x1

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " / "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " ["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getZipUrl()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v22 .. v26}, Lc8/aG;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    .end local v5    # "addFolders":Lorg/json/JSONArray;
    .end local v6    # "appInfoResObj":Lorg/json/JSONObject;
    .end local v7    # "appRootPath":Ljava/lang/String;
    .end local v10    # "files":[Ljava/lang/String;
    .end local v12    # "mappingUrl":Ljava/lang/String;
    .end local v14    # "removedFolders":Lorg/json/JSONArray;
    .end local v15    # "removedRes":Lorg/json/JSONArray;
    .end local v19    # "rootDir":Ljava/io/File;
    .end local v20    # "size":I
    :cond_f
    :goto_7
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 330
    .restart local v5    # "addFolders":Lorg/json/JSONArray;
    .restart local v6    # "appInfoResObj":Lorg/json/JSONObject;
    .restart local v7    # "appRootPath":Ljava/lang/String;
    .restart local v10    # "files":[Ljava/lang/String;
    .restart local v12    # "mappingUrl":Ljava/lang/String;
    .restart local v14    # "removedFolders":Lorg/json/JSONArray;
    .restart local v15    # "removedRes":Lorg/json/JSONArray;
    .restart local v19    # "rootDir":Ljava/io/File;
    :cond_10
    array-length v0, v10

    move/from16 v20, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 342
    .end local v7    # "appRootPath":Ljava/lang/String;
    .end local v10    # "files":[Ljava/lang/String;
    .end local v19    # "rootDir":Ljava/io/File;
    :catch_1
    move-exception v21

    .line 343
    .local v21, "t":Ljava/lang/Throwable;
    :try_start_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lc8/NG;->TAG:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "-Folders"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "Check folders"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7
.end method

.method public static validInstallZipPackage(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Z
    .locals 14
    .param p0, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p1, "isInstall"    # Z

    .prologue
    .line 365
    :try_start_0
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v11

    sget-object v12, Lc8/dH;->APP_RES_NAME:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-virtual {v11, p0, v12, v13}, Lc8/AG;->readZipAppRes(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "appres":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 367
    sget-object v11, Lc8/NG;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "validZipPackage fail. appres is empty."

    invoke-static {v11, v12}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v11, 0x0

    .line 420
    .end local v1    # "appres":Ljava/lang/String;
    :goto_0
    return v11

    .line 371
    .restart local v1    # "appres":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x1

    invoke-static {v1, v11}, Lc8/fH;->parseAppResConfig(Ljava/lang/String;Z)Lc8/SG;

    move-result-object v0

    .line 372
    .local v0, "AppResInfo":Lc8/SG;
    if-nez v0, :cond_1

    .line 373
    sget-object v11, Lc8/NG;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "validZipPackage fail. AppResInfo valid fail."

    invoke-static {v11, v12}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v11, 0x0

    goto :goto_0

    .line 377
    :cond_1
    iget-object v11, v0, Lc8/SG;->mResfileMap:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 378
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/AppResConfig$FileInfo;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 381
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 382
    .local v4, "fileInfo":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/AppResConfig$FileInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/RG;

    iget-object v5, v11, Lc8/RG;->v:Ljava/lang/String;

    .line 383
    .local v5, "hash":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 385
    .local v10, "path":Ljava/lang/String;
    if-eqz p0, :cond_3

    sget-object v11, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v12

    if-eq v11, v12, :cond_3

    .line 386
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 390
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, p0, v10, v12}, Lc8/AG;->readZipAppResByte(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)[B

    move-result-object v2

    .line 392
    .local v2, "data":[B
    if-eqz v2, :cond_2

    array-length v11, v2

    if-lez v11, :cond_2

    .line 396
    invoke-static {v2}, Lc8/NH;->md5ToHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 400
    .end local v2    # "data":[B
    :cond_4
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 401
    sget-object v11, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "[invalid]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 408
    .end local v4    # "fileInfo":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/AppResConfig$FileInfo;>;"
    .end local v5    # "hash":Ljava/lang/String;
    .end local v10    # "path":Ljava/lang/String;
    :cond_6
    if-eqz p0, :cond_8

    sget-object v11, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v12

    if-ne v11, v12, :cond_8

    .line 409
    if-nez p1, :cond_7

    .line 410
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v11

    invoke-virtual {v11}, Lc8/WG;->getZcacheResConfig()Ljava/util/Hashtable;

    move-result-object v11

    iget-object v12, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 411
    .local v9, "list_org":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_7

    .line 412
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 414
    .end local v6    # "i":I
    .end local v9    # "list_org":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    iget-object v11, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-static {v11, v8}, Lc8/LG;->updateZcacheurlMap(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 416
    .end local v0    # "AppResInfo":Lc8/SG;
    .end local v1    # "appres":Ljava/lang/String;
    .end local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/AppResConfig$FileInfo;>;>;"
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 417
    .local v3, "e":Ljava/lang/Exception;
    sget-object v11, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "validZipPackage fail. parse config fail: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/4 v11, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public checkCopyUpdateDel(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)I
    .locals 10
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "isInstall"    # Z

    .prologue
    .line 120
    if-eqz p2, :cond_2

    :try_start_0
    const-string/jumbo v3, "install"

    .line 122
    .local v3, "typeName":Ljava/lang/String;
    :goto_0
    invoke-static {p1, p2}, Lc8/NG;->validInstallZipPackage(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Z

    move-result v2

    .line 123
    .local v2, "res":Z
    iget-boolean v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    if-eqz v4, :cond_0

    .line 125
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    .line 126
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v4

    const/16 v5, 0x1776

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lc8/qH;->onEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 128
    :cond_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    sget-object v4, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": validZipPackage :["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    if-nez v2, :cond_3

    .line 132
    sget v4, Lc8/UG;->ERR_CHECK_ZIP:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iget-object v7, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ErrorMsg = ERR_CHECK_ZIP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lc8/JG;->error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V

    .line 133
    sget v4, Lc8/UG;->ERR_CHECK_ZIP:I

    .line 176
    .end local v2    # "res":Z
    .end local v3    # "typeName":Ljava/lang/String;
    :goto_1
    return v4

    .line 120
    :cond_2
    const-string/jumbo v3, "upgrade"

    goto/16 :goto_0

    .line 137
    .restart local v2    # "res":Z
    .restart local v3    # "typeName":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    invoke-static {p1, v4, p2}, Lc8/NG;->parseUrlMappingInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ZZ)Z

    move-result v2

    .line 138
    if-nez v2, :cond_4

    .line 139
    sget v4, Lc8/UG;->ERR_FILE_READ:I

    const-string/jumbo v5, "ErrorMsg = ERR_FILE_READ_MAPPINGINFO"

    invoke-static {p1, v4, v5}, Lc8/JG;->error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V

    .line 140
    sget v4, Lc8/UG;->ERR_FILE_READ:I

    goto :goto_1

    .line 144
    :cond_4
    invoke-direct {p0, p1, p2}, Lc8/NG;->dealAppResFileName(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)V

    .line 147
    iget-object v4, p0, Lc8/NG;->zipAppFile:Lc8/AG;

    invoke-virtual {v4, p1}, Lc8/AG;->copyZipApp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Z

    move-result v2

    .line 148
    if-nez v2, :cond_5

    .line 149
    sget v4, Lc8/UG;->ERR_FILE_COPY:I

    const-string/jumbo v5, "ErrorMsg = ERR_FILE_COPY"

    invoke-static {p1, v4, v5}, Lc8/JG;->error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V

    .line 150
    sget v4, Lc8/UG;->ERR_FILE_COPY:I

    goto :goto_1

    .line 152
    :cond_5
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 153
    sget-object v4, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": copyZipApp :["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_6
    sget v4, Lc8/dH;->ZIP_NEWEST:I

    iput v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 158
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lc8/LG;->updateGlobalConfig(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Z

    move-result v2

    .line 159
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 160
    sget-object v4, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": UpdateGlobalConfig :["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_7
    if-nez v2, :cond_8

    .line 163
    sget v4, Lc8/UG;->ERR_FILE_SAVE:I

    const-string/jumbo v5, "ErrorMsg = ERR_FILE_SAVE"

    invoke-static {p1, v4, v5}, Lc8/JG;->error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V

    .line 164
    sget v4, Lc8/UG;->ERR_FILE_SAVE:I

    goto/16 :goto_1

    .line 168
    :cond_8
    iget-object v4, p0, Lc8/NG;->zipAppFile:Lc8/AG;

    invoke-virtual {v4, p1}, Lc8/AG;->deleteHisZipApp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Z

    move-result v0

    .line 169
    .local v0, "del":Z
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 170
    sget-object v4, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": deleteHisZipApp :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_9
    sget v4, Lc8/UG;->SECCUSS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 173
    .end local v0    # "del":Z
    .end local v2    # "res":Z
    .end local v3    # "typeName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    sget v4, Lc8/UG;->ERR_SYSTEM:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ErrorMsg = ERR_SYSTEM : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lc8/JG;->error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V

    .line 175
    sget-object v4, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkCopyUpdateDel Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget v4, Lc8/UG;->ERR_SYSTEM:I

    goto/16 :goto_1
.end method

.method public declared-synchronized init()Z
    .locals 4

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/NG;->isInit:Z

    if-nez v1, :cond_0

    .line 68
    sget-object v1, Lc8/NG;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "init: zipapp init start ."

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v1

    iput-object v1, p0, Lc8/NG;->zipAppFile:Lc8/AG;

    .line 70
    iget-object v1, p0, Lc8/NG;->zipAppFile:Lc8/AG;

    invoke-virtual {v1}, Lc8/AG;->createZipAppInitDir()Z

    move-result v0

    .line 71
    .local v0, "isSuccess":Z
    sget-object v1, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init: zipapp init finished .isSuccess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-boolean v0, p0, Lc8/NG;->isInit:Z

    .line 73
    iget-boolean v1, p0, Lc8/NG;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v0    # "isSuccess":Z
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public install(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)I
    .locals 5
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "destFile"    # Ljava/lang/String;
    .param p3, "isInstall"    # Z

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    sget-object v1, Lc8/NG;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "install: check fail :appInfo is null or destFile is null"

    invoke-static {v1, v2}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget v1, Lc8/UG;->ERR_PARAM:I

    const-string/jumbo v2, "ErrorMsg = ERR_PARAM"

    invoke-static {p1, v1, v2}, Lc8/JG;->error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V

    .line 93
    sget v1, Lc8/UG;->ERR_PARAM:I

    .line 107
    :goto_0
    return v1

    .line 96
    :cond_1
    iget-object v1, p0, Lc8/NG;->zipAppFile:Lc8/AG;

    invoke-virtual {v1, p1, p2}, Lc8/AG;->unZipToTmp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "unZipInfo":Ljava/lang/String;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    sget-object v1, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "install: unZipToTmp :["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_2
    iget-boolean v1, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    if-eqz v1, :cond_3

    .line 101
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    const/16 v2, 0x1775

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/qH;->onEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 103
    :cond_3
    const-string/jumbo v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    sget v1, Lc8/UG;->ERR_FILE_UNZIP:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ErrorMsg = ERR_FILE_UNZIP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lc8/JG;->error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V

    .line 105
    sget v1, Lc8/UG;->ERR_FILE_UNZIP:I

    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {p0, p1, p3}, Lc8/NG;->checkCopyUpdateDel(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)I

    move-result v1

    goto :goto_0
.end method

.method public unInstall(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)I
    .locals 5
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .prologue
    .line 206
    :try_start_0
    iget-object v2, p0, Lc8/NG;->zipAppFile:Lc8/AG;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lc8/AG;->deleteZipApp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Z

    move-result v1

    .line 207
    .local v1, "res":Z
    if-nez v1, :cond_1

    .line 208
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    sget-object v2, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unInstall: deleteZipApp :fail ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    sget v2, Lc8/UG;->ERR_FILE_DEL:I

    .line 226
    .end local v1    # "res":Z
    :goto_0
    return v2

    .line 214
    .restart local v1    # "res":Z
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lc8/LG;->updateGlobalConfig(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Z

    move-result v1

    .line 215
    if-nez v1, :cond_3

    .line 216
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    sget-object v2, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unInstall: updateGlobalConfig :fail ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_2
    sget v2, Lc8/UG;->ERR_FILE_SAVE:I

    goto :goto_0

    .line 222
    :cond_3
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v2

    iget-object v3, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/WG;->removeZcacheRes(Ljava/lang/String;)V

    .line 223
    sget v2, Lc8/UG;->SECCUSS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v1    # "res":Z
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unInstall Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget v2, Lc8/UG;->ERR_SYSTEM:I

    goto :goto_0
.end method

.method public validRunningZipPackage(Ljava/lang/String;)I
    .locals 9
    .param p1, "patch"    # Ljava/lang/String;

    .prologue
    .line 425
    :try_start_0
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v5

    invoke-virtual {v5, p1}, Lc8/AG;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "appres":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 427
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 428
    sget-object v5, Lc8/NG;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validZipPackage fail. appres is empty.patch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    sget v5, Lc8/UG;->ERR_NOTFOUND_APPRES:I

    .line 454
    .end local v1    # "appres":Ljava/lang/String;
    :goto_0
    return v5

    .line 433
    .restart local v1    # "appres":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    invoke-static {v1, v5}, Lc8/fH;->parseAppResConfig(Ljava/lang/String;Z)Lc8/SG;

    move-result-object v0

    .line 434
    .local v0, "AppResInfo":Lc8/SG;
    if-nez v0, :cond_3

    .line 435
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 436
    sget-object v5, Lc8/NG;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "validZipPackage fail. AppResInfo valid fail."

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_2
    sget v5, Lc8/UG;->ERR_VERIFY_APPRES:I

    goto :goto_0

    .line 440
    :cond_3
    iget-object v5, v0, Lc8/SG;->mResfileMap:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 441
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/AppResConfig$FileInfo;>;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 442
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 443
    .local v2, "fileInfo":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/AppResConfig$FileInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/RG;

    .line 448
    .local v3, "fileInfoVal":Lc8/RG;
    invoke-static {}, Lc8/cH;->getInstance()Lc8/cH;

    move-result-object v5

    iget-object v6, v3, Lc8/RG;->url:Ljava/lang/String;

    iget-object v7, v3, Lc8/RG;->v:Ljava/lang/String;

    iget-object v8, v3, Lc8/RG;->headers:Lorg/json/JSONObject;

    invoke-virtual {v5, v6, v7, v8}, Lc8/cH;->put(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 454
    .end local v0    # "AppResInfo":Lc8/SG;
    .end local v1    # "appres":Ljava/lang/String;
    .end local v2    # "fileInfo":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/AppResConfig$FileInfo;>;"
    .end local v3    # "fileInfoVal":Lc8/RG;
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/AppResConfig$FileInfo;>;>;"
    :catch_0
    move-exception v5

    sget v5, Lc8/UG;->ERR_VERIFY_APPRES:I

    goto :goto_0

    .line 450
    .restart local v0    # "AppResInfo":Lc8/SG;
    .restart local v1    # "appres":Ljava/lang/String;
    .restart local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/AppResConfig$FileInfo;>;>;"
    :cond_4
    :try_start_1
    sget v5, Lc8/UG;->SECCUSS:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
