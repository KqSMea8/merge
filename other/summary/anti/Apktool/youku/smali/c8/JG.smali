.class public Lc8/JG;
.super Ljava/lang/Object;
.source "AppInfoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/HG;,
        Lc8/IG;
    }
.end annotation


# static fields
.field private static isFirstTime:Z

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/IG;",
            ">;"
        }
    .end annotation
.end field

.field private static startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lc8/JG;->map:Ljava/util/Map;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lc8/JG;->isFirstTime:Z

    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/JG;->startTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static download(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v1, Lc8/JG;->map:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IG;

    .line 45
    .local v0, "data":Lc8/IG;
    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/IG;->download_end:J

    .line 48
    :cond_0
    return-void
.end method

.method public static error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V
    .locals 7
    .param p0, "info"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p1, "error_type"    # I
    .param p2, "error_message"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getNameandVersion()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lc8/JG;->map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IG;

    .line 62
    .local v0, "data":Lc8/IG;
    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/IG;->operate_end:J

    .line 64
    iput-boolean v6, v0, Lc8/IG;->success:Z

    .line 65
    iput p1, v0, Lc8/IG;->error_type:I

    .line 66
    iput-object p2, v0, Lc8/IG;->error_message:Ljava/lang/String;

    .line 67
    invoke-static {p0, v0}, Lc8/JG;->upload(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Lc8/IG;)V

    .line 69
    :cond_0
    iget-boolean v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    if-eqz v2, :cond_1

    .line 70
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v2

    const/16 v3, 0x1777

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getZipUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lc8/qH;->onEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 72
    :cond_1
    return-void
.end method

.method public static start(Ljava/lang/String;I)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "updateType"    # I

    .prologue
    .line 30
    new-instance v0, Lc8/IG;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/IG;-><init>(Lc8/HG;)V

    .line 31
    .local v0, "data":Lc8/IG;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/IG;->download_start:J

    .line 32
    iput p1, v0, Lc8/IG;->update_type:I

    .line 33
    sget-object v1, Lc8/JG;->map:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-static {}, Lc8/TH;->isWiFiActive()Z

    move-result v1

    iput-boolean v1, v0, Lc8/IG;->is_wifi:Z

    .line 35
    iget-wide v2, v0, Lc8/IG;->download_start:J

    iput-wide v2, v0, Lc8/IG;->update_start_time:J

    .line 37
    :cond_0
    sget-object v1, Lc8/JG;->map:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-boolean v1, Lc8/JG;->isFirstTime:Z

    if-eqz v1, :cond_1

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lc8/sG;->getInstance()Lc8/sG;

    move-result-object v1

    iget-wide v4, v1, Lc8/sG;->pkgInitTime:J

    sub-long/2addr v2, v4

    sput-wide v2, Lc8/JG;->startTime:J

    .line 41
    :cond_1
    return-void
.end method

.method public static success(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .prologue
    .line 51
    sget-object v1, Lc8/JG;->map:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getNameandVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IG;

    .line 52
    .local v0, "data":Lc8/IG;
    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/IG;->operate_end:J

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/IG;->success:Z

    .line 55
    invoke-static {p0, v0}, Lc8/JG;->upload(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Lc8/IG;)V

    .line 57
    :cond_0
    return-void
.end method

.method public static upload(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Lc8/IG;)V
    .locals 19
    .param p0, "info"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p1, "data"    # Lc8/IG;

    .prologue
    .line 75
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 76
    sget-boolean v2, Lc8/JG;->isFirstTime:Z

    if-eqz v2, :cond_0

    .line 78
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v2

    sget-wide v6, Lc8/JG;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lc8/sG;->getInstance()Lc8/sG;

    move-result-object v3

    iget-wide v10, v3, Lc8/sG;->pkgInitTime:J

    sub-long/2addr v8, v10

    invoke-interface {v2, v6, v7, v8, v9}, Lc8/aG;->commitPackageUpdateStartInfo(JJ)V

    .line 79
    const/4 v2, 0x0

    sput-boolean v2, Lc8/JG;->isFirstTime:Z

    .line 81
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getNameandVersion()Ljava/lang/String;

    move-result-object v18

    .line 82
    .local v18, "name":Ljava/lang/String;
    const/16 v2, 0x5f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 83
    .local v17, "index":I
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "appName":Ljava/lang/String;
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "version":Ljava/lang/String;
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lc8/IG;->update_type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    iget-boolean v7, v0, Lc8/IG;->success:Z

    move-object/from16 v0, p1

    iget-wide v8, v0, Lc8/IG;->operate_end:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lc8/IG;->download_start:J

    sub-long/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lc8/IG;->download_end:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lc8/IG;->download_start:J

    sub-long/2addr v10, v12

    move-object/from16 v0, p1

    iget v12, v0, Lc8/IG;->error_type:I

    move-object/from16 v0, p1

    iget-object v13, v0, Lc8/IG;->error_message:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lc8/IG;->is_wifi:Z

    move-object/from16 v0, p1

    iget-wide v15, v0, Lc8/IG;->update_start_time:J

    move-object/from16 v3, p0

    invoke-interface/range {v2 .. v16}, Lc8/aG;->packageApp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJILjava/lang/String;ZJ)V

    .line 87
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lc8/JG;->map:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 88
    sget-object v2, Lc8/JG;->map:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    .end local v17    # "index":I
    .end local v18    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method
