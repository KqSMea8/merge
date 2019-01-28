.class public final Lc8/NSb;
.super Ljava/lang/Object;
.source "CrashReport.java"


# static fields
.field public static final TYPE_ANR:Ljava/lang/String; = "anr"

.field public static final TYPE_JAVA:Ljava/lang/String; = "java"

.field public static final TYPE_NATIVE:Ljava/lang/String; = "native"


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentTrigger:Z

.field mPropertys:Lc8/bTb;

.field mReportContent:Ljava/lang/String;

.field mReportFile:Ljava/io/File;

.field mReportName:Ljava/lang/String;

.field mReportPath:Ljava/lang/String;

.field mReportType:Ljava/lang/String;

.field mReporterContext:Lc8/kTb;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lc8/bTb;

    invoke-direct {v0}, Lc8/bTb;-><init>()V

    iput-object v0, p0, Lc8/NSb;->mPropertys:Lc8/bTb;

    .line 85
    return-void
.end method

.method public static buildCrashReport(Landroid/content/Context;Ljava/io/File;Lc8/kTb;Z)Lc8/NSb;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reportFile"    # Ljava/io/File;
    .param p2, "reporterContext"    # Lc8/kTb;
    .param p3, "currentTrigger"    # Z

    .prologue
    const/16 v10, 0xb

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "reportName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "reportPath":Ljava/lang/String;
    invoke-static {v4}, Lc8/NSb;->parseReportName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "parts":[Ljava/lang/String;
    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 128
    :goto_0
    return-object v1

    .line 94
    :cond_0
    new-instance v1, Lc8/NSb;

    invoke-direct {v1}, Lc8/NSb;-><init>()V

    .line 95
    .local v1, "crashReport":Lc8/NSb;
    iput-object p0, v1, Lc8/NSb;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, v1, Lc8/NSb;->mReporterContext:Lc8/kTb;

    .line 97
    iput-object p1, v1, Lc8/NSb;->mReportFile:Ljava/io/File;

    .line 98
    iput-object v4, v1, Lc8/NSb;->mReportName:Ljava/lang/String;

    .line 99
    iput-object v5, v1, Lc8/NSb;->mReportPath:Ljava/lang/String;

    .line 100
    iget-object v6, v1, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v7, Lc8/aTb;

    const-string/jumbo v8, "CRASH_SDK_NAME"

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 101
    iget-object v6, v1, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v7, Lc8/aTb;

    const-string/jumbo v8, "CRASH_SDK_VERSION"

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 102
    iget-object v6, v1, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v7, Lc8/aTb;

    const-string/jumbo v8, "CRASH_SDK_BUILD"

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 103
    iget-object v6, v1, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v7, Lc8/aTb;

    const-string/jumbo v8, "BRAND"

    const/4 v9, 0x3

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 104
    iget-object v6, v1, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v7, Lc8/aTb;

    const-string/jumbo v8, "DEVICE_MODEL"

    const/4 v9, 0x4

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 105
    iget-object v6, v1, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v7, Lc8/aTb;

    const-string/jumbo v8, "UTDID"

    const/4 v9, 0x5

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 106
    iget-object v6, v1, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v7, Lc8/aTb;

    const-string/jumbo v8, "APP_KEY"

    const/4 v9, 0x6

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 108
    const/4 v6, 0x7

    aget-object v6, v3, v6

    invoke-static {v6}, Lc8/NSb;->revertUnderscore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lc8/vTb;->getContextAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "currentAppVersion":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 114
    move-object v0, v2

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "crashreporter update appversion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/USb;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v2    # "currentAppVersion":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v6, v1, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v7, Lc8/aTb;

    const-string/jumbo v8, "APP_VERSION"

    invoke-direct {v7, v8, v0}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 122
    iget-object v6, v1, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v7, Lc8/aTb;

    const-string/jumbo v8, "REPORT_CREATE_TIMESTAMP"

    const/16 v9, 0x8

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 123
    iget-object v6, v1, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v7, Lc8/aTb;

    const-string/jumbo v8, "REPORT_CREATE_TIME"

    const/16 v9, 0x9

    aget-object v9, v3, v9

    invoke-direct {v7, v8, v9}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 124
    iget-object v6, v1, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v7, Lc8/aTb;

    const-string/jumbo v8, "REPORT_TAG"

    const/16 v9, 0xa

    aget-object v9, v3, v9

    invoke-static {v9}, Lc8/NSb;->revertUnderscore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 125
    iget-object v6, v1, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v7, Lc8/aTb;

    const-string/jumbo v8, "REPORT_TYPE"

    aget-object v9, v3, v10

    invoke-direct {v7, v8, v9}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 126
    aget-object v6, v3, v10

    iput-object v6, v1, Lc8/NSb;->mReportType:Ljava/lang/String;

    .line 127
    iput-boolean p3, v1, Lc8/NSb;->mCurrentTrigger:Z

    goto/16 :goto_0

    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static buildReportName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "utdid"    # Ljava/lang/String;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "reportType"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p2}, Lc8/NSb;->replaceUnderscore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-static {p5}, Lc8/NSb;->replaceUnderscore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CrashSDK_1.0.0.0__df_df_df_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Lc8/vTb;->getGMT8Time(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "df"

    invoke-static {p5, v1}, Lc8/OTb;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseReportName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "reportName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xb

    .line 72
    invoke-static {p0}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ".log"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const-string/jumbo v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 75
    aget-object v1, v0, v4

    const-string/jumbo v2, ".log"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 76
    const-string/jumbo v1, "java"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "native"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "anr"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceUnderscore(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    const-string/jumbo v0, "_"

    const-string/jumbo v1, "&#95;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static revertUnderscore(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 62
    if-eqz p0, :cond_0

    const-string/jumbo v0, "&#95;"

    const-string/jumbo v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public deleteReportFile()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lc8/NSb;->mReportFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lc8/NSb;->mReportFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 160
    :cond_0
    return-void
.end method

.method public extractPropertys()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lc8/NSb;->mReporterContext:Lc8/kTb;

    invoke-virtual {p0, v0}, Lc8/NSb;->extractPropertys(Lc8/kTb;)V

    .line 133
    return-void
.end method

.method public extractPropertys(Lc8/kTb;)V
    .locals 4
    .param p1, "reporterContext"    # Lc8/kTb;

    .prologue
    .line 136
    iget-object v0, p0, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v1, Lc8/aTb;

    const-string/jumbo v2, "USERNICK"

    const-string/jumbo v3, "USERNICK"

    invoke-virtual {p1, v3}, Lc8/kTb;->getPropertyAndSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 137
    iget-object v0, p0, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v1, Lc8/aTb;

    const-string/jumbo v2, "BRAND"

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 138
    iget-object v0, p0, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v1, Lc8/aTb;

    const-string/jumbo v2, "DEVICE_MODEL"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 139
    iget-object v0, p0, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v1, Lc8/aTb;

    const-string/jumbo v2, "UTDID"

    const-string/jumbo v3, "UTDID"

    invoke-virtual {p1, v3}, Lc8/kTb;->getPropertyAndSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 140
    iget-object v0, p0, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v1, Lc8/aTb;

    const-string/jumbo v2, "IMEI"

    const-string/jumbo v3, "IMEI"

    invoke-virtual {p1, v3}, Lc8/kTb;->getPropertyAndSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 141
    iget-object v0, p0, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v1, Lc8/aTb;

    const-string/jumbo v2, "IMSI"

    const-string/jumbo v3, "IMSI"

    invoke-virtual {p1, v3}, Lc8/kTb;->getPropertyAndSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 142
    iget-object v0, p0, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v1, Lc8/aTb;

    const-string/jumbo v2, "DEVICE_ID"

    const-string/jumbo v3, "DEVICE_ID"

    invoke-virtual {p1, v3}, Lc8/kTb;->getPropertyAndSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 143
    iget-object v0, p0, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v1, Lc8/aTb;

    const-string/jumbo v2, "CHANNEL"

    const-string/jumbo v3, "CHANNEL"

    invoke-virtual {p1, v3}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 144
    iget-object v0, p0, Lc8/NSb;->mPropertys:Lc8/bTb;

    new-instance v1, Lc8/aTb;

    const-string/jumbo v2, "APP_ID"

    const-string/jumbo v3, "APP_ID"

    invoke-virtual {p1, v3}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/bTb;->add(Lc8/YSb;)V

    .line 150
    return-void
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lc8/NSb;->mPropertys:Lc8/bTb;

    invoke-virtual {v0, p1}, Lc8/bTb;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReportContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lc8/NSb;->mReportContent:Ljava/lang/String;

    invoke-static {v0}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/NSb;->mReportFile:Ljava/io/File;

    invoke-static {v0}, Lc8/vTb;->readFully(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/NSb;->mReportContent:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/NSb;->mReportContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lc8/NSb;->mReportContent:Ljava/lang/String;

    invoke-static {v0}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lc8/NSb;->getReportContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/NSb;->mReportContent:Ljava/lang/String;

    .line 190
    :cond_0
    iget-object v0, p0, Lc8/NSb;->mReportContent:Ljava/lang/String;

    invoke-static {v0}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lc8/NSb;->mReportContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "log end:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
