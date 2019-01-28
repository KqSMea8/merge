.class public final Lc8/iTb;
.super Ljava/lang/Object;
.source "ReportBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/eTb;,
        Lc8/hTb;,
        Lc8/fTb;,
        Lc8/gTb;
    }
.end annotation


# instance fields
.field mConfiguration:Lc8/LSb;

.field mContext:Landroid/content/Context;

.field mReporterContext:Lc8/kTb;

.field mStorageManager:Lc8/rTb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/kTb;Lc8/LSb;Lc8/rTb;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "repoterContext"    # Lc8/kTb;
    .param p3, "configuration"    # Lc8/LSb;
    .param p4, "storageManager"    # Lc8/rTb;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lc8/iTb;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    .line 39
    iput-object p3, p0, Lc8/iTb;->mConfiguration:Lc8/LSb;

    .line 40
    iput-object p4, p0, Lc8/iTb;->mStorageManager:Lc8/rTb;

    .line 41
    return-void
.end method

.method private listProcessCrashReportFile()[Ljava/io/File;
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lc8/iTb;->mStorageManager:Lc8/rTb;

    new-instance v2, Lc8/cTb;

    invoke-direct {v2, p0}, Lc8/cTb;-><init>(Lc8/iTb;)V

    invoke-virtual {v1, v2}, Lc8/rTb;->listProcessTombstoneFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 152
    .local v0, "reportFiles":[Ljava/io/File;
    return-object v0
.end method


# virtual methods
.method public buildANRReport(Lc8/ESb;Ljava/util/Map;)Lc8/NSb;
    .locals 20
    .param p1, "tracesFinder"    # Lc8/ESb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/ESb;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/NSb;"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "externalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lc8/iTb;->clearCrashRepoterFile()V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 107
    .local v6, "timestamp":J
    const-string/jumbo v8, "scan"

    .line 108
    .local v8, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v3, "UTDID"

    invoke-virtual {v2, v3}, Lc8/kTb;->getPropertyAndSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v4, "APP_KEY"

    invoke-virtual {v2, v4}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v5, "APP_VERSION"

    invoke-virtual {v2, v5}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "anr"

    invoke-static/range {v3 .. v9}, Lc8/NSb;->buildReportName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "reportName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/iTb;->mStorageManager:Lc8/rTb;

    invoke-virtual {v2, v15}, Lc8/rTb;->getProcessTombstoneFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 113
    .local v18, "reportFile":Ljava/io/File;
    new-instance v10, Lc8/eTb;

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/iTb;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/iTb;->mConfiguration:Lc8/LSb;

    move-object/from16 v11, p0

    move-wide/from16 v16, v6

    move-object/from16 v19, p1

    invoke-direct/range {v10 .. v19}, Lc8/eTb;-><init>(Lc8/iTb;Landroid/content/Context;Lc8/kTb;Lc8/LSb;Ljava/lang/String;JLjava/io/File;Lc8/ESb;)V

    .line 115
    .local v10, "printWrite":Lc8/eTb;
    invoke-virtual {v10}, Lc8/eTb;->print()V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/iTb;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3, v4}, Lc8/NSb;->buildCrashReport(Landroid/content/Context;Ljava/io/File;Lc8/kTb;Z)Lc8/NSb;

    move-result-object v2

    return-object v2
.end method

.method public buildNativeExceptionReport(Ljava/io/File;Ljava/util/Map;)Lc8/NSb;
    .locals 9
    .param p1, "jniLogFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/NSb;"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "externalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lc8/iTb;->clearCrashRepoterFile()V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 85
    .local v4, "timestamp":J
    const-string/jumbo v6, "scan"

    .line 86
    .local v6, "tag":Ljava/lang/String;
    iget-object v1, p0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v2, "UTDID"

    invoke-virtual {v1, v2}, Lc8/kTb;->getPropertyAndSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v3, "APP_KEY"

    invoke-virtual {v2, v3}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v7, "APP_VERSION"

    invoke-virtual {v3, v7}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "native"

    invoke-static/range {v1 .. v7}, Lc8/NSb;->buildReportName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "reportName":Ljava/lang/String;
    iget-object v1, p0, Lc8/iTb;->mStorageManager:Lc8/rTb;

    invoke-virtual {v1, v8}, Lc8/rTb;->getProcessTombstoneFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 92
    .local v0, "distFile":Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 93
    iget-object v1, p0, Lc8/iTb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lc8/NSb;->buildCrashReport(Landroid/content/Context;Ljava/io/File;Lc8/kTb;Z)Lc8/NSb;

    move-result-object v1

    return-object v1
.end method

.method public buildUncaughtExceptionReport(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/util/Map;)Lc8/NSb;
    .locals 22
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Thread;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lc8/NSb;"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lc8/iTb;->clearCrashRepoterFile()V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 55
    .local v6, "timestamp":J
    const-string/jumbo v8, "catch"

    .line 56
    .local v8, "tag":Ljava/lang/String;
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "REPORT_IGNORE"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string/jumbo v8, "ignore"

    .line 59
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v3, "UTDID"

    invoke-virtual {v2, v3}, Lc8/kTb;->getPropertyAndSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v4, "APP_KEY"

    invoke-virtual {v2, v4}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v5, "APP_VERSION"

    invoke-virtual {v2, v5}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "java"

    invoke-static/range {v3 .. v9}, Lc8/NSb;->buildReportName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 63
    .local v15, "reportName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/iTb;->mStorageManager:Lc8/rTb;

    invoke-virtual {v2, v15}, Lc8/rTb;->getProcessTombstoneFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 65
    .local v18, "reportFile":Ljava/io/File;
    new-instance v10, Lc8/hTb;

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/iTb;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/iTb;->mConfiguration:Lc8/LSb;

    move-object/from16 v11, p0

    move-wide/from16 v16, v6

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    invoke-direct/range {v10 .. v21}, Lc8/hTb;-><init>(Lc8/iTb;Landroid/content/Context;Lc8/kTb;Lc8/LSb;Ljava/lang/String;JLjava/io/File;Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/util/Map;)V

    .line 70
    .local v10, "printWrite":Lc8/hTb;
    invoke-virtual {v10}, Lc8/hTb;->print()V

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/iTb;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3, v4}, Lc8/NSb;->buildCrashReport(Landroid/content/Context;Ljava/io/File;Lc8/kTb;Z)Lc8/NSb;

    move-result-object v2

    return-object v2
.end method

.method public clearCrashRepoterFile()V
    .locals 8

    .prologue
    const/16 v7, 0x14

    .line 160
    :try_start_0
    invoke-direct {p0}, Lc8/iTb;->listProcessCrashReportFile()[Ljava/io/File;

    move-result-object v0

    .line 161
    .local v0, "crashReportFiles":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-le v6, v7, :cond_1

    .line 162
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 163
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v6, Lc8/dTb;

    invoke-direct {v6, p0}, Lc8/dTb;-><init>(Lc8/iTb;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    const/4 v5, 0x0

    .line 178
    .local v5, "size":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 179
    .local v2, "file":Ljava/io/File;
    if-le v5, v7, :cond_0

    .line 180
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v0    # "crashReportFiles":[Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v5    # "size":I
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "clear crashReport file"

    invoke-static {v6, v1}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public listProcessCrashReport()[Lc8/NSb;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 125
    invoke-direct {p0}, Lc8/iTb;->listProcessCrashReportFile()[Ljava/io/File;

    move-result-object v6

    .line 126
    .local v6, "reportFiles":[Ljava/io/File;
    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v2, "crashReports":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/motu/crashreporter/CrashReport;>;"
    move-object v0, v6

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v6

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 129
    .local v5, "reportFile":Ljava/io/File;
    iget-object v7, p0, Lc8/iTb;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lc8/iTb;->mReporterContext:Lc8/kTb;

    invoke-static {v7, v5, v8, v9}, Lc8/NSb;->buildCrashReport(Landroid/content/Context;Ljava/io/File;Lc8/kTb;Z)Lc8/NSb;

    move-result-object v1

    .line 130
    .local v1, "crashReport":Lc8/NSb;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "crashReport":Lc8/NSb;
    .end local v5    # "reportFile":Ljava/io/File;
    :cond_0
    new-array v7, v9, [Lc8/NSb;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lc8/NSb;

    .line 134
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "crashReports":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/motu/crashreporter/CrashReport;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method
