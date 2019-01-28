.class public Lc8/ZF;
.super Ljava/lang/Object;
.source "WVPackageMonitorImpl.java"

# interfaces
.implements Lc8/aG;


# static fields
.field private static final FIRST_INSTALL_FLAG:Ljava/lang/String; = "FIRST_INSTALL"

.field private static final TAG:Ljava/lang/String; = "WVPackageMonitorImpl"


# instance fields
.field private appBackgroundTime:J

.field private appResumeTime:J

.field private diffTime:J

.field private ignoreTime:J

.field isPkgInUse:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide v0, p0, Lc8/ZF;->diffTime:J

    .line 22
    iput-wide v0, p0, Lc8/ZF;->appResumeTime:J

    .line 23
    iput-wide v0, p0, Lc8/ZF;->appBackgroundTime:J

    .line 24
    iput-wide v0, p0, Lc8/ZF;->ignoreTime:J

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ZF;->isPkgInUse:Z

    return-void
.end method


# virtual methods
.method public commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p1, p2, p3, p4}, Lc8/EF;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public commitPackageQueueInfo(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "isInitialUpdate"    # Ljava/lang/String;
    .param p2, "updateCount"    # J
    .param p4, "succesCount"    # J

    .prologue
    .line 76
    invoke-static {p1, p2, p3, p4, p5}, Lc8/EF;->commitPackageQueueInfo(Ljava/lang/String;JJ)V

    .line 77
    return-void
.end method

.method public commitPackageUpdateStartInfo(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 159
    invoke-static {p1, p2, p3, p4}, Lc8/EF;->commitPackageUpdateStartInfo(JJ)V

    .line 160
    return-void
.end method

.method public commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 86
    iget-wide v6, p0, Lc8/ZF;->appResumeTime:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 87
    const-string/jumbo v6, "WVPackageMonitorImpl"

    const-string/jumbo v7, "WVMonitor must be init first"

    invoke-static {v6, v7}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string/jumbo v6, "WVPackageMonitorImpl"

    const-string/jumbo v7, "FIRST_INSTALL"

    invoke-static {v6, v7, v8, v9}, Lc8/MH;->getLongVal(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 91
    .local v4, "valueFlag":J
    cmp-long v6, v4, v8

    if-nez v6, :cond_1

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 93
    .local v2, "currentTime":J
    iget-wide v6, p0, Lc8/ZF;->appResumeTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    .line 94
    const-string/jumbo v6, "WVPackageMonitorImpl"

    const-string/jumbo v7, "FIRST_INSTALL"

    invoke-static {v6, v7, v2, v3}, Lc8/MH;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 101
    .end local v2    # "currentTime":J
    :cond_1
    iget-boolean v6, p0, Lc8/ZF;->isPkgInUse:Z

    if-eqz v6, :cond_4

    .line 104
    move-object v0, p1

    .local v0, "appName":Ljava/lang/String;
    if-eqz p1, :cond_2

    :try_start_0
    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    const/4 v6, 0x0

    const-string/jumbo v7, "-"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_2
    const-string/jumbo v6, "12"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "15"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 108
    :cond_3
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Lc8/GG;->updateAccessTimes(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "appName":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {p1, p2, p3}, Lc8/EF;->commitPackageAppVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v6, "WVPackageMonitorImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pkgName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " errorMsg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " errorCode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    .restart local v2    # "currentTime":J
    :cond_5
    const-string/jumbo v6, "WVPackageMonitorImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ignore visit error : pkgName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " errorMsg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " errorCode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    .end local v2    # "currentTime":J
    .restart local v0    # "appName":Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Lc8/GG;->updateAccessTimes(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Throwable;
    instance-of v6, v1, Ljava/lang/ClassNotFoundException;

    if-eqz v6, :cond_4

    .line 114
    iput-boolean v10, p0, Lc8/ZF;->isPkgInUse:Z

    goto :goto_1
.end method

.method public commitPackageVisitInfo(Ljava/lang/String;Ljava/lang/String;JJJJJ)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "hasVerifyTime"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "matchTime"    # J
    .param p7, "readTime"    # J
    .param p9, "verifyTime"    # J
    .param p11, "seq"    # J

    .prologue
    .line 81
    invoke-static/range {p1 .. p12}, Lc8/EF;->commitPackageVisitInfo(Ljava/lang/String;Ljava/lang/String;JJJJJ)V

    .line 82
    return-void
.end method

.method public commitPackageVisitSuccess(Ljava/lang/String;J)V
    .locals 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "seq"    # J

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 130
    iget-wide v6, p0, Lc8/ZF;->appResumeTime:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 131
    const-string/jumbo v3, "WVPackageMonitorImpl"

    const-string/jumbo v6, "WVMonitor must be init first"

    invoke-static {v3, v6}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string/jumbo v3, "WVPackageMonitorImpl"

    const-string/jumbo v6, "FIRST_INSTALL"

    invoke-static {v3, v6, v8, v9}, Lc8/MH;->getLongVal(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 135
    .local v4, "valueFlag":J
    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 137
    .local v0, "currentTime":J
    iget-wide v6, p0, Lc8/ZF;->appResumeTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x7530

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    .line 138
    const-string/jumbo v3, "WVPackageMonitorImpl"

    const-string/jumbo v6, "FIRST_INSTALL"

    invoke-static {v3, v6, v0, v1}, Lc8/MH;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 145
    .end local v0    # "currentTime":J
    :cond_1
    iget-boolean v3, p0, Lc8/ZF;->isPkgInUse:Z

    if-eqz v3, :cond_2

    .line 147
    :try_start_0
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6}, Lc8/GG;->updateAccessTimes(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_2
    :goto_1
    invoke-static {p1, p2, p3}, Lc8/EF;->commitPackageVisitSuccess(Ljava/lang/String;J)V

    goto :goto_0

    .line 141
    .restart local v0    # "currentTime":J
    :cond_3
    const-string/jumbo v3, "WVPackageMonitorImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ignore visit success : pkgName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v0    # "currentTime":J
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/ClassNotFoundException;

    if-eqz v3, :cond_2

    .line 150
    iput-boolean v10, p0, Lc8/ZF;->isPkgInUse:Z

    goto :goto_1
.end method

.method public commitPackageWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string/jumbo v0, "WVPackageMonitorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkgName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not in zipApp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {p1, p2}, Lc8/EF;->commitPackageAppWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onStartCleanAppCache(JIIIFIIFI)V
    .locals 1
    .param p1, "beforeDelSpace"    # J
    .param p3, "expectedNum"    # I
    .param p4, "installedNum"    # I
    .param p5, "willDeleteCount"    # I
    .param p6, "customRadio"    # F
    .param p7, "noCacheCount"    # I
    .param p8, "normalCount"    # I
    .param p9, "noCacheRatio"    # F
    .param p10, "cleanCause"    # I

    .prologue
    .line 71
    invoke-static/range {p1 .. p10}, Lc8/EF;->commitPackageClearUpInfo(JIIIFIIFI)V

    .line 72
    return-void
.end method

.method public packageApp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJILjava/lang/String;ZJ)V
    .locals 16
    .param p1, "info"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "packageApp"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "updateType"    # Ljava/lang/String;
    .param p5, "isSuccess"    # Z
    .param p6, "updateTime"    # J
    .param p8, "downloadTime"    # J
    .param p10, "errorType"    # I
    .param p11, "errorMessage"    # Ljava/lang/String;
    .param p12, "isWifi"    # Z
    .param p13, "updateStartTime"    # J

    .prologue
    .line 33
    if-eqz p12, :cond_0

    const-string/jumbo v5, "1"

    .line 34
    .local v5, "wifiState":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->t:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lc8/ZF;->diffTime:J

    add-long v14, v2, v6

    .line 35
    .local v14, "serverTime":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lc8/ZF;->appResumeTime:J

    cmp-long v2, v2, v14

    if-lez v2, :cond_1

    .line 36
    const-string/jumbo v4, "0"

    .line 43
    .local v4, "onlineState":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v14

    sub-long v12, p13, v14

    move-object/from16 v3, p1

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-static/range {v3 .. v13}, Lc8/EF;->commitPackageAppUpdateInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Ljava/lang/String;JJJJ)V

    .line 44
    if-eqz p5, :cond_3

    .line 45
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lc8/EF;->commitPackageAppUpdateSuccess(Ljava/lang/String;)V

    .line 49
    :goto_2
    return-void

    .line 33
    .end local v4    # "onlineState":Ljava/lang/String;
    .end local v5    # "wifiState":Ljava/lang/String;
    .end local v14    # "serverTime":J
    :cond_0
    const-string/jumbo v5, "0"

    goto :goto_0

    .line 37
    .restart local v5    # "wifiState":Ljava/lang/String;
    .restart local v14    # "serverTime":J
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lc8/ZF;->appResumeTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lc8/ZF;->appResumeTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lc8/ZF;->appBackgroundTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 38
    const-string/jumbo v4, "1"

    .restart local v4    # "onlineState":Ljava/lang/String;
    goto :goto_1

    .line 40
    .end local v4    # "onlineState":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "2"

    .restart local v4    # "onlineState":Ljava/lang/String;
    goto :goto_1

    .line 47
    :cond_3
    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p11

    invoke-static {v2, v0, v3}, Lc8/EF;->commitPackageAppUpdateError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public uploadBackgroundTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lc8/ZF;->appBackgroundTime:J

    .line 60
    const-string/jumbo v0, "WVPackageMonitorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadBackgroundTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public uploadDiffTimeTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lc8/ZF;->diffTime:J

    .line 66
    const-string/jumbo v0, "WVPackageMonitorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadDiffTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public uploadStartAppTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lc8/ZF;->appResumeTime:J

    .line 54
    const-string/jumbo v0, "WVPackageMonitorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadAppResumeTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
