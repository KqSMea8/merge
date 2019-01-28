.class public Lc8/XF;
.super Ljava/lang/Object;
.source "WVMonitorImpl.java"

# interfaces
.implements Lc8/GF;
.implements Lc8/HF;
.implements Lc8/cG;


# static fields
.field private static final TAG:Ljava/lang/String; = "WVMonitor"


# instance fields
.field private appStartTime:J

.field private currentUrl:Ljava/lang/String;

.field private dataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/WF;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Z

.field private initTime:J

.field private isInit:Z

.field private needCommitStartTime:Z

.field private zipApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Lc8/XF;->needCommitStartTime:Z

    .line 29
    iput-wide v4, p0, Lc8/XF;->appStartTime:J

    .line 30
    iput-wide v4, p0, Lc8/XF;->initTime:J

    .line 31
    iput-boolean v1, p0, Lc8/XF;->isInit:Z

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/XF;->currentUrl:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/XF;->zipApps:Ljava/util/HashSet;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    iput-boolean v1, p0, Lc8/XF;->enabled:Z

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/XF;->appStartTime:J

    .line 40
    iput-boolean v2, p0, Lc8/XF;->enabled:Z

    .line 41
    return-void
.end method

.method private checkNeedCollectResInfo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lc8/XF;->isPage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    :cond_0
    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static errorNeedReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/Integer;

    .prologue
    .line 127
    invoke-static {}, Lc8/XF;->getConfig()Lc8/OF;

    move-result-object v4

    iget-boolean v2, v4, Lc8/OF;->isErrorBlacklist:Z

    .line 128
    .local v2, "isBlackList":Z
    invoke-static {}, Lc8/XF;->getConfig()Lc8/OF;

    move-result-object v4

    iget-object v0, v4, Lc8/OF;->errorRule:Ljava/util/List;

    .line 129
    .local v0, "errorRule":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/MF;

    .line 130
    .local v3, "rule":Lc8/MF;
    iget-object v4, v3, Lc8/MF;->url:Ljava/lang/String;

    if-eqz v4, :cond_2

    if-eqz p0, :cond_2

    .line 131
    iget-object v4, v3, Lc8/MF;->urlPattern:Ljava/util/regex/Pattern;

    if-nez v4, :cond_1

    .line 132
    iget-object v4, v3, Lc8/MF;->url:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, v3, Lc8/MF;->urlPattern:Ljava/util/regex/Pattern;

    .line 134
    :cond_1
    iget-object v4, v3, Lc8/MF;->urlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    :cond_2
    iget-object v4, v3, Lc8/MF;->msg:Ljava/lang/String;

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    .line 139
    iget-object v4, v3, Lc8/MF;->msgPattern:Ljava/util/regex/Pattern;

    if-nez v4, :cond_3

    .line 140
    iget-object v4, v3, Lc8/MF;->msg:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, v3, Lc8/MF;->msgPattern:Ljava/util/regex/Pattern;

    .line 142
    :cond_3
    iget-object v4, v3, Lc8/MF;->msgPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    :cond_4
    iget-object v4, v3, Lc8/MF;->code:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz p2, :cond_5

    .line 148
    iget-object v4, v3, Lc8/MF;->code:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    :cond_5
    if-nez v2, :cond_7

    const/4 v2, 0x1

    .line 154
    .end local v2    # "isBlackList":Z
    .end local v3    # "rule":Lc8/MF;
    :cond_6
    :goto_0
    return v2

    .line 152
    .restart local v2    # "isBlackList":Z
    .restart local v3    # "rule":Lc8/MF;
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static formatUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 115
    :goto_0
    return-object v2

    .line 110
    :cond_0
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 111
    .local v0, "pos":I
    if-lez v0, :cond_1

    .line 112
    :goto_1
    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 113
    .local v1, "pos2":I
    if-lez v1, :cond_2

    .line 114
    :goto_2
    if-ge v0, v1, :cond_3

    .line 115
    :goto_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 111
    .end local v1    # "pos2":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 113
    .restart local v1    # "pos2":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 114
    goto :goto_3
.end method

.method private static getConfig()Lc8/OF;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lc8/SF;->getInstance()Lc8/SF;

    move-result-object v0

    iget-object v0, v0, Lc8/SF;->config:Lc8/OF;

    return-object v0
.end method

.method private getResData(Ljava/lang/String;)Lc8/UF;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-object v2, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-object v1

    .line 385
    :cond_1
    iget-object v2, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lc8/XF;->currentUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WF;

    .line 386
    .local v0, "data":Lc8/WF;
    if-eqz v0, :cond_0

    .line 389
    iget-object v2, v0, Lc8/WF;->args:Lc8/TF;

    iget-object v2, v2, Lc8/TF;->resStat:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/UF;

    .line 390
    .local v1, "res":Lc8/UF;
    if-nez v1, :cond_0

    .line 391
    invoke-static {}, Lc8/WF;->createNewResStatInstance()Lc8/UF;

    move-result-object v1

    .line 392
    iget-object v2, v0, Lc8/WF;->args:Lc8/TF;

    iget-object v2, v2, Lc8/TF;->resStat:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initData(Ljava/lang/String;)Lc8/WF;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v2, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_1

    .line 160
    const/4 v0, 0x0

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :cond_1
    iget-object v2, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WF;

    .line 163
    .local v0, "dataM":Lc8/WF;
    if-nez v0, :cond_0

    .line 164
    const-class v3, Lc8/XF;

    monitor-enter v3

    .line 165
    if-nez v0, :cond_2

    .line 166
    :try_start_0
    const-string/jumbo v2, "WVMonitor"

    const-string/jumbo v4, "monitor data init"

    invoke-static {v2, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v1, Lc8/WF;

    invoke-direct {v1}, Lc8/WF;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v0    # "dataM":Lc8/WF;
    .local v1, "dataM":Lc8/WF;
    :try_start_1
    iput-object p1, p0, Lc8/XF;->currentUrl:Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 171
    .end local v1    # "dataM":Lc8/WF;
    .restart local v0    # "dataM":Lc8/WF;
    :cond_2
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "dataM":Lc8/WF;
    .restart local v1    # "dataM":Lc8/WF;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "dataM":Lc8/WF;
    .restart local v0    # "dataM":Lc8/WF;
    goto :goto_1
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lc8/XF;->enabled:Z

    goto :goto_0
.end method

.method private isPage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v0, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 370
    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/XF;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Lc8/XF;->formatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lc8/XF;->formatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private pageFinish(Ljava/lang/String;JZ)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "finish"    # Z

    .prologue
    .line 398
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v6, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v6, :cond_0

    .line 404
    iget-object v6, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/WF;

    .line 405
    .local v1, "data":Lc8/WF;
    if-eqz v1, :cond_0

    .line 408
    const-string/jumbo v6, "WVMonitor"

    const-string/jumbo v7, "pageFinish: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-wide v6, v1, Lc8/WF;->startTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 411
    :try_start_0
    iget-wide v6, v1, Lc8/WF;->startTime:J

    sub-long v4, p2, v6

    .line 412
    .local v4, "onLoad":J
    const-string/jumbo v6, "WVMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "url: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " onLoad time :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lc8/XF;->getConfig()Lc8/OF;

    move-result-object v0

    .line 414
    .local v0, "config":Lc8/OF;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lc8/OF;->stat:Lc8/NF;

    iget-wide v6, v6, Lc8/NF;->onLoad:J

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 415
    iget-object v6, v1, Lc8/WF;->stat:Lc8/VF;

    iput-wide v4, v6, Lc8/VF;->onLoad:J

    .line 416
    iget-object v7, v1, Lc8/WF;->stat:Lc8/VF;

    if-eqz p4, :cond_3

    const/4 v6, 0x1

    :goto_1
    iput v6, v7, Lc8/VF;->finish:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 419
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->isHierarchical()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 420
    const-string/jumbo v6, "wvAppMonitor"

    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "monitorType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_2

    .line 423
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v1, Lc8/WF;->wvAppMonitor:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 431
    .end local v2    # "monitorType":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_2
    :try_start_3
    invoke-direct {p0, p1}, Lc8/XF;->upload(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .end local v0    # "config":Lc8/OF;
    .end local v4    # "onLoad":J
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 416
    .restart local v0    # "config":Lc8/OF;
    .restart local v4    # "onLoad":J
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_2

    .restart local v2    # "monitorType":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method private upload(Ljava/lang/String;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 66
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WF;

    .line 71
    .local v0, "data":Lc8/WF;
    if-eqz v0, :cond_0

    .line 75
    iget-object v2, v0, Lc8/WF;->url:Ljava/lang/String;

    invoke-static {v2}, Lc8/XF;->formatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/WF;->url:Ljava/lang/String;

    .line 76
    const/16 v4, 0x3bc5

    invoke-static {p1}, Lc8/XF;->formatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v2, v2, Lc8/VF;->onLoad:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_5

    const-string/jumbo v2, ""

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, v0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v8, v3, Lc8/VF;->onDomLoad:J

    cmp-long v3, v8, v10

    if-nez v3, :cond_6

    iget-object v3, v0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v8, v3, Lc8/VF;->onLoad:J

    cmp-long v3, v8, v10

    if-nez v3, :cond_6

    const-string/jumbo v3, ""

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lc8/WF;->toJsonStringDict()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v2, v3, v6}, Lc8/FF;->commitEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    iget-boolean v2, p0, Lc8/XF;->isInit:Z

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lc8/WF;->startTime:J

    iget-wide v4, p0, Lc8/XF;->initTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 82
    iput-boolean v12, p0, Lc8/XF;->isInit:Z

    .line 83
    const/4 v2, 0x1

    iput-boolean v2, v0, Lc8/WF;->isInit:Z

    .line 84
    iget-wide v2, v0, Lc8/WF;->startTime:J

    iget-wide v4, p0, Lc8/XF;->initTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lc8/WF;->init:J

    .line 86
    :cond_2
    invoke-static {v0}, Lc8/EF;->commitPerformanceInfo(Lc8/WF;)V

    .line 87
    iget-object v2, v0, Lc8/WF;->stat:Lc8/VF;

    iget-object v1, v2, Lc8/VF;->packageAppName:Ljava/lang/String;

    .line 88
    .local v1, "packageAppName":Ljava/lang/String;
    iget-object v2, p0, Lc8/XF;->zipApps:Ljava/util/HashSet;

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lc8/XF;->zipApps:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc8/XF;->appStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lc8/EF;->commitPackageVisitStartInfo(Ljava/lang/String;J)V

    .line 91
    iget-object v2, p0, Lc8/XF;->zipApps:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_3
    iget-boolean v2, p0, Lc8/XF;->needCommitStartTime:Z

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lc8/XF;->appStartTime:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lc8/XF;->appStartTime:J

    iget-wide v4, v0, Lc8/WF;->startTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 94
    iget-object v2, v0, Lc8/WF;->url:Ljava/lang/String;

    iget-wide v4, v0, Lc8/WF;->startTime:J

    iget-wide v6, p0, Lc8/XF;->appStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lc8/EF;->commitStartTimeInfo(Ljava/lang/String;J)V

    .line 95
    iput-boolean v12, p0, Lc8/XF;->needCommitStartTime:Z

    .line 97
    :cond_4
    const-string/jumbo v2, "WVMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upload performance info  URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fromType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lc8/WF;->stat:Lc8/VF;

    iget v4, v4, Lc8/VF;->fromType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " packageAppName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lc8/WF;->stat:Lc8/VF;

    iget-object v4, v4, Lc8/VF;->packageAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 76
    .end local v1    # "packageAppName":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v6, v3, Lc8/VF;->onLoad:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_6
    iget-object v3, v0, Lc8/WF;->stat:Lc8/VF;

    iget v3, v3, Lc8/VF;->finish:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_2
.end method


# virtual methods
.method public didExitAtTime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/XF;->pageFinish(Ljava/lang/String;JZ)V

    .line 275
    return-void
.end method

.method public didGetPageStatusCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lc8/bG;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "fromType"    # I
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "appName"    # Ljava/lang/String;
    .param p6, "appSeq"    # Ljava/lang/String;
    .param p8, "netStat"    # Lc8/bG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/bG;",
            ")V"
        }
    .end annotation

    .prologue
    .local p7, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 255
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-direct {p0, p1}, Lc8/XF;->initData(Ljava/lang/String;)Lc8/WF;

    move-result-object v0

    .line 257
    .local v0, "data":Lc8/WF;
    if-eqz v0, :cond_0

    .line 260
    iget-object v1, v0, Lc8/WF;->args:Lc8/TF;

    iput-object p8, v1, Lc8/TF;->netStat:Lc8/bG;

    .line 261
    if-lez p2, :cond_2

    iget-object v1, v0, Lc8/WF;->args:Lc8/TF;

    iput p2, v1, Lc8/TF;->statusCode:I

    .line 262
    :cond_2
    if-le p3, v2, :cond_3

    iget-object v1, v0, Lc8/WF;->stat:Lc8/VF;

    iget v1, v1, Lc8/VF;->fromType:I

    if-gt v1, v2, :cond_3

    iget-object v1, v0, Lc8/WF;->stat:Lc8/VF;

    iput p3, v1, Lc8/VF;->fromType:I

    .line 263
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lc8/WF;->stat:Lc8/VF;

    iput-object p4, v1, Lc8/VF;->packageAppVersion:Ljava/lang/String;

    .line 265
    :cond_4
    if-eqz p7, :cond_5

    .line 266
    iget-object v2, v0, Lc8/WF;->args:Lc8/TF;

    const-string/jumbo v1, "via"

    invoke-interface {p7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lc8/TF;->via:Ljava/lang/String;

    .line 268
    :cond_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lc8/WF;->stat:Lc8/VF;

    iput-object p5, v1, Lc8/VF;->packageAppName:Ljava/lang/String;

    .line 269
    :cond_6
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lc8/WF;->stat:Lc8/VF;

    iput-object p6, v1, Lc8/VF;->appSeq:Ljava/lang/String;

    goto :goto_0
.end method

.method public didGetResourceStatusCode(Ljava/lang/String;IILjava/util/Map;Lc8/bG;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "fromType"    # I
    .param p5, "netStat"    # Lc8/bG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/bG;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 322
    invoke-direct {p0, p1}, Lc8/XF;->isPage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, p4

    move-object v8, p5

    .line 323
    invoke-virtual/range {v0 .. v8}, Lc8/XF;->didGetPageStatusCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lc8/bG;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-direct {p0, p1}, Lc8/XF;->checkNeedCollectResInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-direct {p0, p1}, Lc8/XF;->getResData(Ljava/lang/String;)Lc8/UF;

    move-result-object v9

    .line 326
    .local v9, "res":Lc8/UF;
    if-eqz v9, :cond_0

    .line 329
    iput p3, v9, Lc8/UF;->fromType:I

    .line 330
    iput p2, v9, Lc8/UF;->statusCode:I

    .line 331
    if-eqz p4, :cond_2

    const-string/jumbo v0, "Via"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    iput-object v0, v9, Lc8/UF;->via:Ljava/lang/String;

    .line 332
    if-eqz p5, :cond_0

    invoke-static {}, Lc8/XF;->getConfig()Lc8/OF;

    move-result-object v0

    iget-object v0, v0, Lc8/OF;->stat:Lc8/NF;

    iget-boolean v0, v0, Lc8/NF;->netstat:Z

    if-eqz v0, :cond_0

    .line 333
    iput-object p5, v9, Lc8/UF;->netStat:Lc8/bG;

    goto :goto_0

    .line 331
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public didGetResourceVerifyCode(Ljava/lang/String;JJII)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "verifyResTime"    # J
    .param p4, "verifyTime"    # J
    .param p6, "verifyError"    # I
    .param p7, "lruSize"    # I

    .prologue
    .line 341
    iget-object v2, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v2, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lc8/XF;->currentUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WF;

    .line 345
    .local v0, "data":Lc8/WF;
    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0, p1}, Lc8/XF;->isPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 350
    iget-object v2, v0, Lc8/WF;->stat:Lc8/VF;

    iput-wide p2, v2, Lc8/VF;->verifyResTime:J

    .line 351
    iget-object v2, v0, Lc8/WF;->stat:Lc8/VF;

    iput-wide p4, v2, Lc8/VF;->verifyTime:J

    .line 352
    iget-object v2, v0, Lc8/WF;->stat:Lc8/VF;

    iput p6, v2, Lc8/VF;->verifyError:I

    .line 359
    :cond_2
    :goto_1
    iget-object v2, v0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v4, v2, Lc8/VF;->allVerifyTime:J

    add-long/2addr v4, p4

    iput-wide v4, v2, Lc8/VF;->allVerifyTime:J

    .line 360
    iget-object v2, v0, Lc8/WF;->stat:Lc8/VF;

    iput p7, v2, Lc8/VF;->verifyCacheSize:I

    goto :goto_0

    .line 353
    :cond_3
    invoke-direct {p0, p1}, Lc8/XF;->checkNeedCollectResInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    invoke-direct {p0, p1}, Lc8/XF;->getResData(Ljava/lang/String;)Lc8/UF;

    move-result-object v1

    .line 355
    .local v1, "res":Lc8/UF;
    iput-wide p2, v1, Lc8/UF;->verifyResTime:J

    .line 356
    iput-wide p4, v1, Lc8/UF;->verifyTime:J

    .line 357
    iput p6, v1, Lc8/UF;->verifyError:I

    goto :goto_1
.end method

.method public didOccurJSError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "line"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 455
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const-string/jumbo v1, "WVMonitor"

    const-string/jumbo v2, "reportJsError: %s ///// %s ///// %s ///// %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p3, v3, v4

    aput-object p2, v3, v6

    aput-object p4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lc8/XF;->errorNeedReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    const-string/jumbo v1, "message=%s\nline=%s\nfile=%s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v5

    aput-object p4, v2, v4

    aput-object p3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "JavaScriptError"

    invoke-static {v1, v4, v0, p1}, Lc8/EF;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public didOccurNativeError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 442
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const-string/jumbo v1, "WVMonitor"

    const-string/jumbo v2, "reportNativeError: %s ///// %s ///// %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p3, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p3, v1}, Lc8/XF;->errorNeedReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    const-string/jumbo v1, "message=%s\ncode=%d"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "NativeError"

    invoke-static {v1, p2, v0, p1}, Lc8/EF;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public didOccurUpdateConfigError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-static {p1, p2, p3}, Lc8/EF;->commitConifgUpdateError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public didOccurUpdateConfigSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 485
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-static {p1}, Lc8/EF;->commitConifgUpdateSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public didPageDomLoadAtTime(Ljava/lang/String;J)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 199
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v1, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WF;

    .line 204
    .local v0, "data":Lc8/WF;
    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v1, "WVMonitor"

    const-string/jumbo v4, "domLoad: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-wide v4, v0, Lc8/WF;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 209
    iget-wide v4, v0, Lc8/WF;->startTime:J

    sub-long v2, p2, v4

    .line 210
    .local v2, "onReady":J
    invoke-static {}, Lc8/XF;->getConfig()Lc8/OF;

    move-result-object v1

    iget-object v1, v1, Lc8/OF;->stat:Lc8/NF;

    iget-wide v4, v1, Lc8/NF;->onDomLoad:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 211
    iget-object v1, v0, Lc8/WF;->stat:Lc8/VF;

    iput-wide v2, v1, Lc8/VF;->onDomLoad:J

    goto :goto_0
.end method

.method public didPageFinishLoadAtTime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 192
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/XF;->pageFinish(Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method public didPageOccurSelfDefinedEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 234
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 250
    :cond_0
    return-void

    .line 235
    :cond_1
    iget-object v4, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_0

    .line 238
    iget-object v4, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WF;

    .line 239
    .local v0, "data":Lc8/WF;
    if-eqz v0, :cond_0

    .line 242
    const-string/jumbo v4, "WVMonitor"

    const-string/jumbo v5, "domLoad: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-wide v4, v0, Lc8/WF;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 245
    iget-object v4, v0, Lc8/WF;->args:Lc8/TF;

    iget-object v3, v4, Lc8/TF;->selfDefine:Ljava/util/Map;

    .line 246
    .local v3, "selfDefine":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 247
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v0, Lc8/WF;->startTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public didPagePerformanceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 500
    iget-object v1, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v1, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WF;

    .line 504
    .local v0, "data":Lc8/WF;
    if-eqz v0, :cond_0

    .line 507
    iput-object p2, v0, Lc8/WF;->performanceInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method public didPageReceiveFirstByteAtTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 218
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v1, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WF;

    .line 223
    .local v0, "data":Lc8/WF;
    if-eqz v0, :cond_0

    .line 226
    const-string/jumbo v1, "WVMonitor"

    const-string/jumbo v2, "domLoad: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-wide v2, v0, Lc8/WF;->startTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 228
    iget-object v1, v0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v2, v0, Lc8/WF;->startTime:J

    sub-long v2, p2, v2

    iput-wide v2, v1, Lc8/VF;->firstByteTime:J

    goto :goto_0
.end method

.method public didPageStartLoadAtTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 178
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const-string/jumbo v1, "WVMonitor"

    const-string/jumbo v2, "pageStart: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1}, Lc8/XF;->initData(Ljava/lang/String;)Lc8/WF;

    move-result-object v0

    .line 183
    .local v0, "data":Lc8/WF;
    if-eqz v0, :cond_0

    .line 186
    iput-wide p2, v0, Lc8/WF;->startTime:J

    .line 187
    iput-object p1, v0, Lc8/WF;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public didPerformanceCheckResult(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "score"    # J
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "bizcode"    # Ljava/lang/String;
    .param p6, "result"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-static/range {p1 .. p6}, Lc8/EF;->commitWebPerfCheckInfo(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public didResourceFinishLoadAtTime(Ljava/lang/String;JLjava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "protocolType"    # Ljava/lang/String;
    .param p5, "tcpTime"    # J

    .prologue
    .line 298
    iget-object v3, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v3, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v3, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lc8/XF;->currentUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WF;

    .line 302
    .local v0, "data":Lc8/WF;
    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    invoke-direct {p0, p1}, Lc8/XF;->checkNeedCollectResInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    invoke-direct {p0, p1}, Lc8/XF;->getResData(Ljava/lang/String;)Lc8/UF;

    move-result-object v2

    .line 308
    .local v2, "res":Lc8/UF;
    iget-wide v4, v0, Lc8/WF;->startTime:J

    sub-long v4, p2, v4

    iput-wide v4, v2, Lc8/UF;->end:J

    .line 309
    iput-object p4, v2, Lc8/UF;->protocolType:Ljava/lang/String;

    .line 310
    iput-wide p5, v2, Lc8/UF;->tcpTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v2    # "res":Lc8/UF;
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WVMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "didResourceFinishLoadAtTime Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lc8/XF;->isPage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    iput-object p4, v0, Lc8/WF;->protocolType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public didResourceStartLoadAtTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 279
    iget-object v3, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v3, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v3, p0, Lc8/XF;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lc8/XF;->currentUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WF;

    .line 283
    .local v0, "data":Lc8/WF;
    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    invoke-direct {p0, p1}, Lc8/XF;->checkNeedCollectResInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    invoke-direct {p0, p1}, Lc8/XF;->getResData(Ljava/lang/String;)Lc8/UF;

    move-result-object v2

    .line 289
    .local v2, "res":Lc8/UF;
    iget-wide v4, v0, Lc8/WF;->startTime:J

    sub-long v4, p2, v4

    iput-wide v4, v2, Lc8/UF;->start:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    .end local v2    # "res":Lc8/UF;
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WVMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "didResourceStartLoadAtTime Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public didUpdateConfig(Ljava/lang/String;IJII)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "updateTime"    # J
    .param p5, "isSuccess"    # I
    .param p6, "updateCount"    # I

    .prologue
    .line 477
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-static/range {p1 .. p6}, Lc8/EF;->commitConifgUpdateInfo(Ljava/lang/String;IJII)V

    .line 480
    const-string/jumbo v0, "WVMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public didWebViewInitAtTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 492
    invoke-direct {p0}, Lc8/XF;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/XF;->isInit:Z

    .line 495
    iput-wide p1, p0, Lc8/XF;->initTime:J

    goto :goto_0
.end method
