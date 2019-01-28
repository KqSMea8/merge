.class public Lc8/Jen;
.super Ljava/lang/Object;
.source "UTracker.java"


# static fields
.field static final Begin:Ljava/lang/String; = "video_cache_begin"

.field static final Delete:Ljava/lang/String; = "video_cache_delete"

.field static final Fail:Ljava/lang/String; = "video_cache_fail"

.field static final Page:Ljava/lang/String; = "Page_Extend"

.field static final Pause:Ljava/lang/String; = "video_cache_pause"

.field static final Success:Ljava/lang/String; = "video_cache_success"

.field static cachedBytes:J

.field static lastTimeCheck:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 59
    sput-wide v0, Lc8/Jen;->lastTimeCheck:J

    .line 60
    sput-wide v0, Lc8/Jen;->cachedBytes:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeSpace()J
    .locals 6
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lc8/Jen;->lastTimeCheck:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 63
    const-string/jumbo v2, "download_file_path"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lc8/oen;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "root":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    sget-wide v2, Lc8/Jen;->cachedBytes:J

    .line 70
    :goto_0
    return-wide v2

    .line 67
    :cond_0
    new-instance v0, Lc8/wfn;

    invoke-direct {v0, v1}, Lc8/wfn;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "m":Lc8/wfn;
    invoke-virtual {v0}, Lc8/wfn;->getFreeSize()J

    move-result-wide v2

    sput-wide v2, Lc8/Jen;->cachedBytes:J

    .line 70
    :cond_1
    sget-wide v2, Lc8/Jen;->cachedBytes:J

    goto :goto_0
.end method

.method public static readableFormat(I)Ljava/lang/String;
    .locals 2
    .param p0, "format"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 73
    packed-switch p0, :pswitch_data_0

    .line 85
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 75
    :pswitch_1
    const-string/jumbo v0, "\u9ad8\u6e05"

    goto :goto_0

    .line 77
    :pswitch_2
    const-string/jumbo v0, "\u7701\u6d41"

    goto :goto_0

    .line 79
    :pswitch_3
    const-string/jumbo v0, "\u6807\u6e05"

    goto :goto_0

    .line 81
    :pswitch_4
    const-string/jumbo v0, "\u8d85\u6e05"

    goto :goto_0

    .line 83
    :pswitch_5
    const-string/jumbo v0, "1080P"

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static track(Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;)V
    .locals 6
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    const/4 v3, 0x0

    .line 44
    const-string/jumbo v0, "Page_Extend"

    const/16 v1, 0x4e1f

    new-instance v5, Lcom/youku/service/download/UTracker$1;

    invoke-direct {v5, p1}, Lcom/youku/service/download/UTracker$1;-><init>(Lcom/youku/service/download/DownloadInfo;)V

    move-object v2, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 57
    return-void
.end method

.method public static trackBegin(Lcom/youku/service/download/DownloadInfo;)V
    .locals 1
    .param p0, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 24
    const-string/jumbo v0, "video_cache_begin"

    invoke-static {v0, p0}, Lc8/Jen;->track(Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;)V

    .line 25
    return-void
.end method

.method public static trackDelete(Lcom/youku/service/download/DownloadInfo;)V
    .locals 1
    .param p0, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 32
    const-string/jumbo v0, "video_cache_delete"

    invoke-static {v0, p0}, Lc8/Jen;->track(Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;)V

    .line 33
    return-void
.end method

.method public static trackFail(Lcom/youku/service/download/DownloadInfo;)V
    .locals 1
    .param p0, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 36
    const-string/jumbo v0, "video_cache_fail"

    invoke-static {v0, p0}, Lc8/Jen;->track(Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;)V

    .line 37
    return-void
.end method

.method public static trackPause(Lcom/youku/service/download/DownloadInfo;)V
    .locals 1
    .param p0, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 28
    const-string/jumbo v0, "video_cache_pause"

    invoke-static {v0, p0}, Lc8/Jen;->track(Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;)V

    .line 29
    return-void
.end method

.method public static trackSuccess(Lcom/youku/service/download/DownloadInfo;)V
    .locals 1
    .param p0, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 40
    const-string/jumbo v0, "video_cache_success"

    invoke-static {v0, p0}, Lc8/Jen;->track(Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;)V

    .line 41
    return-void
.end method
