.class public Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;
.super Lcom/ali/mobisecenhance/ld/tools/Upload;
.source "BaseUpLoad.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;

.field private static final reportType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .prologue
    .line 19
    :cond_0
    const-class v0, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/Upload;-><init>()V

    return-void
.end method

.method private static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 34
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 35
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 39
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static native getHttpContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static reportStartUpInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/ConfigInfo;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseDir"    # Ljava/lang/String;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "configs"    # Lcom/ali/mobisecenhance/ld/ConfigInfo;
    .param p4, "isFirstStartUp"    # Z
    .param p5, "startUpStatus"    # Ljava/lang/String;
    .param p6, "nativeStatus"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->getCrashInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 52
    .local v15, "crashinfo":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 54
    .local v13, "appVersion":Ljava/lang/String;
    sget-object v2, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enhanceVersion is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/ali/mobisecenhance/ld/ConfigInfo;->enhanceVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v2, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appVersion is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v16, Ljava/lang/Exception;

    const-string v2, "Current Stack"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    .local v16, "current":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    sget-object v2, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->keyMd5:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/ali/mobisecenhance/ld/ConfigInfo;->enhanceVersion:Ljava/lang/String;

    .line 61
    invoke-virtual/range {p3 .. p3}, Lcom/ali/mobisecenhance/ld/ConfigInfo;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez p6, :cond_0

    const-string v9, "null"

    :goto_0
    if-nez v15, :cond_1

    const-string v10, "null"

    :goto_1
    const-string v11, "false"

    if-nez v13, :cond_2

    const-string v12, "null"

    :goto_2
    move-object/from16 v3, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    .line 60
    invoke-static/range {v2 .. v12}, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->getHttpContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 67
    .local v24, "upjson":Ljava/lang/String;
    sget-object v2, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upjson is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v2, "%s?keymd5=%s&datamd5=%s&type=%s"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->baseUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "report"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->keyMd5:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v3, v4, v5, v0}, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->genCrashReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 71
    .local v19, "finalUrl":Ljava/lang/String;
    sget-object v2, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finalUrl is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :try_start_0
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->doHttpConnect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 77
    .local v20, "result":Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 78
    sget-object v2, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->TAG:Ljava/lang/String;

    const-string v4, "send ok "

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v21, "{\"resultcode\":"

    .line 80
    .local v21, "s1":Ljava/lang/String;
    const-string v22, "\"}"

    .line 82
    .local v22, "s2":Ljava/lang/String;
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 83
    .local v23, "start":I
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 84
    .local v18, "end":I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int v2, v2, v18

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 85
    .local v14, "body":Ljava/lang/String;
    sget-object v2, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send over, message body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->deleteCrashInfo(Ljava/lang/String;)V

    .line 87
    const/4 v2, 0x1

    .line 94
    .end local v14    # "body":Ljava/lang/String;
    .end local v18    # "end":I
    .end local v20    # "result":Ljava/lang/String;
    .end local v21    # "s1":Ljava/lang/String;
    .end local v22    # "s2":Ljava/lang/String;
    .end local v23    # "start":I
    :goto_3
    return v2

    .end local v19    # "finalUrl":Ljava/lang/String;
    .end local v24    # "upjson":Ljava/lang/String;
    :cond_0
    move-object/from16 v9, p6

    .line 61
    goto/16 :goto_0

    :cond_1
    move-object v10, v15

    goto/16 :goto_1

    :cond_2
    move-object v12, v13

    goto/16 :goto_2

    .line 90
    .restart local v19    # "finalUrl":Ljava/lang/String;
    .restart local v20    # "result":Ljava/lang/String;
    .restart local v24    # "upjson":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->TAG:Ljava/lang/String;

    const-string v4, "send failed "

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v2, 0x0

    goto :goto_3

    .line 92
    .end local v20    # "result":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 93
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const/4 v2, 0x0

    goto :goto_3
.end method
