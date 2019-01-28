.class public Lc8/Jlf;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile b:Lc8/Jlf;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/fmf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/Jlf;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/Jlf;->c:Ljava/util/Set;

    .line 51
    :try_start_0
    sget-object v0, Lc8/kmf;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/taobao/downloader/api/Request$Priority;
    .locals 6

    .prologue
    .line 270
    const/16 v1, 0xa

    .line 272
    :try_start_0
    const-string/jumbo v0, "com.taobao.downloader.BizIdConstants"

    const-string/jumbo v2, "getPriorityByBiz"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v2, v3, v4}, Lc8/Pmf;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 275
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 286
    sget-object v0, Lcom/taobao/downloader/api/Request$Priority;->NORMAL:Lcom/taobao/downloader/api/Request$Priority;

    .line 289
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 277
    :sswitch_0
    sget-object v0, Lcom/taobao/downloader/api/Request$Priority;->LOW:Lcom/taobao/downloader/api/Request$Priority;

    goto :goto_1

    .line 280
    :sswitch_1
    sget-object v0, Lcom/taobao/downloader/api/Request$Priority;->NORMAL:Lcom/taobao/downloader/api/Request$Priority;

    goto :goto_1

    .line 283
    :sswitch_2
    sget-object v0, Lcom/taobao/downloader/api/Request$Priority;->HIGH:Lcom/taobao/downloader/api/Request$Priority;

    goto :goto_1

    .line 275
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 249
    const-string/jumbo v0, "compat-%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lc8/Emf;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Emf;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lc8/fmf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v0, p1, Lc8/Emf;->downloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Fmf;

    .line 106
    iget-object v1, v0, Lc8/Fmf;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const/4 v1, 0x0

    .line 109
    iget-object v2, v0, Lc8/Fmf;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/net/URL;

    iget-object v6, v0, Lc8/Fmf;->url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    :goto_1
    iget-object v2, p1, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-object v2, v2, Lcom/taobao/downloader/request/Param;->fileStorePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    sget-object v2, Lc8/omf;->context:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    iget-object v1, v0, Lc8/Fmf;->name:Ljava/lang/String;

    goto :goto_1

    .line 123
    :cond_2
    sget-object v2, Lc8/omf;->context:Landroid/content/Context;

    const-string/jumbo v5, "download-sdk/tmp"

    invoke-static {v2, v5}, Lc8/Omf;->getStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    :goto_2
    new-instance v5, Lc8/emf;

    invoke-direct {v5}, Lc8/emf;-><init>()V

    iget-object v6, v0, Lc8/Fmf;->url:Ljava/lang/String;

    .line 129
    invoke-virtual {v5, v6}, Lc8/emf;->setUrl(Ljava/lang/String;)Lc8/emf;

    move-result-object v5

    .line 130
    invoke-virtual {v5, v1}, Lc8/emf;->setName(Ljava/lang/String;)Lc8/emf;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v2}, Lc8/emf;->setCachePath(Ljava/lang/String;)Lc8/emf;

    move-result-object v1

    iget-object v2, v0, Lc8/Fmf;->md5:Ljava/lang/String;

    .line 132
    invoke-virtual {v1, v2}, Lc8/emf;->setMd5(Ljava/lang/String;)Lc8/emf;

    move-result-object v1

    iget-wide v6, v0, Lc8/Fmf;->size:J

    .line 133
    invoke-virtual {v1, v6, v7}, Lc8/emf;->setSize(J)Lc8/emf;

    move-result-object v0

    .line 134
    invoke-direct {p0, p2}, Lc8/Jlf;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/emf;->setTag(Ljava/lang/String;)Lc8/emf;

    move-result-object v0

    iget-object v1, p1, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-object v1, v1, Lcom/taobao/downloader/request/Param;->bizId:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v1}, Lc8/emf;->setBizId(Ljava/lang/String;)Lc8/emf;

    move-result-object v0

    iget-object v1, p1, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-boolean v1, v1, Lcom/taobao/downloader/request/Param;->useCache:Z

    .line 136
    invoke-virtual {v0, v1}, Lc8/emf;->setUseCache(Z)Lc8/emf;

    move-result-object v0

    iget-object v1, p1, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-object v1, v1, Lcom/taobao/downloader/request/Param;->bizId:Ljava/lang/String;

    .line 137
    invoke-direct {p0, v1}, Lc8/Jlf;->a(Ljava/lang/String;)Lcom/taobao/downloader/api/Request$Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/emf;->setPriority(Lcom/taobao/downloader/api/Request$Priority;)Lc8/emf;

    move-result-object v0

    iget-object v1, p1, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget v1, v1, Lcom/taobao/downloader/request/Param;->network:I

    .line 138
    invoke-direct {p0, v1}, Lc8/Jlf;->b(I)Lcom/taobao/downloader/api/Request$Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/emf;->setNetwork(Lcom/taobao/downloader/api/Request$Network;)Lc8/emf;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lc8/emf;->build()Lc8/fmf;

    move-result-object v0

    .line 140
    iget-object v1, p1, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-boolean v1, v1, Lcom/taobao/downloader/request/Param;->foreground:Z

    iput-boolean v1, v0, Lc8/fmf;->foreground:Z

    .line 141
    new-instance v1, Lc8/Olf;

    invoke-direct {v1, p0, p1}, Lc8/Olf;-><init>(Lc8/Jlf;Lc8/Emf;)V

    iput-object v1, v0, Lc8/fmf;->retryPolicy:Lc8/Amf;

    .line 161
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 125
    :cond_3
    iget-object v2, p1, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-object v2, v2, Lcom/taobao/downloader/request/Param;->fileStorePath:Ljava/lang/String;

    goto :goto_2

    .line 164
    :cond_4
    return-object v3

    .line 113
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method private b(I)Lcom/taobao/downloader/api/Request$Network;
    .locals 1

    .prologue
    .line 255
    sparse-switch p1, :sswitch_data_0

    .line 261
    sget-object v0, Lcom/taobao/downloader/api/Request$Network;->WIFI:Lcom/taobao/downloader/api/Request$Network;

    .line 264
    :goto_0
    return-object v0

    .line 258
    :sswitch_0
    sget-object v0, Lcom/taobao/downloader/api/Request$Network;->MOBILE:Lcom/taobao/downloader/api/Request$Network;

    goto :goto_0

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getInstance()Lc8/Jlf;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lc8/Jlf;->b:Lc8/Jlf;

    if-nez v0, :cond_1

    .line 59
    const-class v1, Lc8/Jlf;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lc8/Jlf;->b:Lc8/Jlf;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lc8/Jlf;

    invoke-direct {v0}, Lc8/Jlf;-><init>()V

    sput-object v0, Lc8/Jlf;->b:Lc8/Jlf;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lc8/Jlf;->b:Lc8/Jlf;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    const-string/jumbo v0, "CompatLoader"

    const-string/jumbo v1, "init @Deprecated"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Lc8/Ylf;->getInstance()Lc8/Ylf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Ylf;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lc8/Jlf;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fmf;

    .line 195
    invoke-direct {p0, p1}, Lc8/Jlf;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lc8/fmf;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v0}, Lc8/fmf;->stop()V

    goto :goto_0

    .line 199
    :cond_1
    return-void
.end method

.method public download(Lc8/Emf;Lc8/Dmf;)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    const-string/jumbo v1, "CompatLoader"

    const-string/jumbo v2, "download @Deprecated, use DLFactory instead"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v8, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    if-eqz p1, :cond_0

    iget-object v1, p1, Lc8/Emf;->downloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    :cond_0
    const-string/jumbo v1, "CompatLoader"

    const-string/jumbo v2, "download"

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "request is empty"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v8, v3}, Lc8/Nmf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_1
    :goto_0
    return v0

    .line 81
    :cond_2
    iget-object v1, p0, Lc8/Jlf;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 82
    invoke-direct {p0, p1, v1}, Lc8/Jlf;->a(Lc8/Emf;I)Ljava/util/List;

    move-result-object v2

    .line 83
    iget-object v3, p0, Lc8/Jlf;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 85
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_3

    .line 86
    new-instance v0, Lc8/Imf;

    iget-object v3, p1, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-boolean v3, v3, Lcom/taobao/downloader/request/Param;->askIfNetLimit:Z

    invoke-direct {v0, v2, v3, p2}, Lc8/Imf;-><init>(Ljava/util/List;ZLc8/Dmf;)V

    .line 87
    invoke-virtual {v0}, Lc8/Imf;->a()V

    move v0, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 90
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fmf;

    .line 91
    new-instance v2, Lc8/Jmf;

    iget-object v3, p1, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-boolean v3, v3, Lcom/taobao/downloader/request/Param;->askIfNetLimit:Z

    invoke-direct {v2, v0, v3, p2}, Lc8/Jmf;-><init>(Lc8/fmf;ZLc8/Dmf;)V

    iput-object v2, v0, Lc8/fmf;->listener:Lc8/vmf;

    .line 92
    invoke-static {}, Lc8/Ylf;->getInstance()Lc8/Ylf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Ylf;->getRequestQueue()Lc8/kmf;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_4

    .line 94
    invoke-virtual {v2, v0}, Lc8/kmf;->add(Lc8/fmf;)V

    :goto_1
    move v0, v1

    .line 98
    goto :goto_0

    .line 96
    :cond_4
    const-string/jumbo v2, "CompatLoader"

    const-string/jumbo v3, "download fail"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "reason"

    aput-object v5, v4, v6

    const-string/jumbo v5, "fail as DLFactory not init"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "request"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v2, v3, v8, v4}, Lc8/Nmf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public fetch(Ljava/lang/String;Ljava/lang/String;Lc8/Dmf;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 169
    const-string/jumbo v0, "CompatLoader"

    const-string/jumbo v1, "fetch @Deprecated, use DLFactory instead"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "url"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "biz"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, -0x1

    .line 189
    :goto_0
    return v0

    .line 174
    :cond_0
    :try_start_0
    const-string/jumbo v0, "com.taobao.downloader.TbDownloader"

    const-string/jumbo v1, "mRequests"

    invoke-static {v0, v1}, Lc8/Pmf;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fmf;

    .line 176
    iget-object v2, v0, Lc8/fmf;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iget-object v1, p0, Lc8/Jlf;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 178
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/fmf;->tag:Ljava/lang/String;

    .line 179
    new-instance v2, Lc8/Jmf;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p3}, Lc8/Jmf;-><init>(Lc8/fmf;ZLc8/Dmf;)V

    iput-object v2, v0, Lc8/fmf;->listener:Lc8/vmf;

    .line 180
    invoke-static {}, Lc8/Ylf;->getInstance()Lc8/Ylf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Ylf;->getRequestQueue()Lc8/kmf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/kmf;->add(Lc8/fmf;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 181
    goto :goto_0

    :catch_0
    move-exception v0

    .line 187
    :cond_2
    new-instance v0, Lc8/Emf;

    invoke-direct {v0, p1}, Lc8/Emf;-><init>(Ljava/lang/String;)V

    .line 188
    iget-object v1, v0, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iput-object p2, v1, Lcom/taobao/downloader/request/Param;->bizId:Ljava/lang/String;

    .line 189
    invoke-virtual {p0, v0, p3}, Lc8/Jlf;->download(Lc8/Emf;Lc8/Dmf;)I

    move-result v0

    goto :goto_0
.end method

.method public getLocalFile(Ljava/lang/String;Lc8/Fmf;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    invoke-static {p1, p2}, Lc8/Omf;->getLocalFile(Ljava/lang/String;Lc8/Fmf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public modify(ILc8/Gmf;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lc8/Jlf;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fmf;

    .line 227
    invoke-direct {p0, p1}, Lc8/Jlf;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lc8/fmf;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p2, Lc8/Gmf;->foreground:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lc8/fmf;->foreground:Z

    .line 229
    iget-object v2, p2, Lc8/Gmf;->network:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lc8/Jlf;->b(I)Lcom/taobao/downloader/api/Request$Network;

    move-result-object v2

    iput-object v2, v0, Lc8/fmf;->network:Lcom/taobao/downloader/api/Request$Network;

    .line 231
    iget-object v2, p2, Lc8/Gmf;->status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    invoke-virtual {v0}, Lc8/fmf;->resume()V

    goto :goto_0

    .line 236
    :pswitch_1
    invoke-virtual {v0}, Lc8/fmf;->stop()V

    goto :goto_0

    .line 239
    :pswitch_2
    invoke-virtual {v0}, Lc8/fmf;->stop()V

    goto :goto_0

    .line 246
    :cond_1
    return-void

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resume(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lc8/Jlf;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fmf;

    .line 213
    invoke-direct {p0, p1}, Lc8/Jlf;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lc8/fmf;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v0}, Lc8/fmf;->resume()V

    goto :goto_0

    .line 217
    :cond_1
    return-void
.end method

.method public suspend(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lc8/Jlf;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fmf;

    .line 204
    invoke-direct {p0, p1}, Lc8/Jlf;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lc8/fmf;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v0}, Lc8/fmf;->stop()V

    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method
