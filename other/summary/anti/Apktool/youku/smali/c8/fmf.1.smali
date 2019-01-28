.class public Lc8/fmf;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/emf;,
        Lcom/taobao/downloader/api/Request$Priority;,
        Lcom/taobao/downloader/api/Request$Method;,
        Lcom/taobao/downloader/api/Request$Status;,
        Lcom/taobao/downloader/api/Request$Network;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/fmf;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field public bizId:Ljava/lang/String;

.field public body:[B

.field public bodyContentType:Ljava/lang/String;

.field c:Z

.field public cachePath:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/taobao/downloader/api/Request$Status;

.field public foreground:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private g:Z

.field private h:J

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lc8/kmf;

.field private j:Lc8/smf;

.field public listener:Lc8/vmf;

.field public md5:Ljava/lang/String;

.field public method:Lcom/taobao/downloader/api/Request$Method;

.field public name:Ljava/lang/String;

.field public netConnection:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lc8/xmf;",
            ">;"
        }
    .end annotation
.end field

.field public network:Lcom/taobao/downloader/api/Request$Network;

.field public priority:Lcom/taobao/downloader/api/Request$Priority;

.field public retryPolicy:Lc8/Amf;

.field public size:J

.field public tag:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public useCache:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean v2, p0, Lc8/fmf;->foreground:Z

    .line 95
    iput-boolean v3, p0, Lc8/fmf;->g:Z

    .line 96
    iput-boolean v3, p0, Lc8/fmf;->useCache:Z

    .line 97
    iput v2, p0, Lc8/fmf;->a:I

    .line 98
    iput v2, p0, Lc8/fmf;->b:I

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/fmf;->size:J

    .line 100
    iput v3, p0, Lc8/fmf;->d:I

    .line 101
    sget-object v0, Lcom/taobao/downloader/api/Request$Priority;->NORMAL:Lcom/taobao/downloader/api/Request$Priority;

    iput-object v0, p0, Lc8/fmf;->priority:Lcom/taobao/downloader/api/Request$Priority;

    .line 102
    sget-object v0, Lcom/taobao/downloader/api/Request$Network;->MOBILE:Lcom/taobao/downloader/api/Request$Network;

    iput-object v0, p0, Lc8/fmf;->network:Lcom/taobao/downloader/api/Request$Network;

    .line 103
    sget-object v0, Lcom/taobao/downloader/api/Request$Status;->STARTED:Lcom/taobao/downloader/api/Request$Status;

    iput-object v0, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    .line 104
    sget-object v0, Lcom/taobao/downloader/api/Request$Method;->GET:Lcom/taobao/downloader/api/Request$Method;

    iput-object v0, p0, Lc8/fmf;->method:Lcom/taobao/downloader/api/Request$Method;

    .line 105
    iput-boolean v2, p0, Lc8/fmf;->c:Z

    .line 106
    new-instance v0, Lc8/smf;

    invoke-direct {v0}, Lc8/smf;-><init>()V

    iput-object v0, p0, Lc8/fmf;->j:Lc8/smf;

    .line 107
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/taobao/downloader/api/Request$Status;->STARTED:Lcom/taobao/downloader/api/Request$Status;

    iput-object v0, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/fmf;->c:Z

    .line 112
    return-void
.end method

.method a(Lc8/kmf;)V
    .locals 2

    .prologue
    .line 127
    iput-object p1, p0, Lc8/fmf;->i:Lc8/kmf;

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/fmf;->h:J

    .line 129
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lc8/fmf;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lc8/fmf;->cachePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/fmf;->cachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lc8/fmf;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized checkIsPauseOrCancel()Z
    .locals 2

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->PAUSED:Lcom/taobao/downloader/api/Request$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->CANCELED:Lcom/taobao/downloader/api/Request$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compareTo(Lc8/fmf;)I
    .locals 2

    .prologue
    .line 257
    iget-boolean v0, p0, Lc8/fmf;->foreground:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lc8/fmf;->foreground:Z

    if-nez v0, :cond_0

    .line 258
    const/4 v0, -0x1

    .line 264
    :goto_0
    return v0

    .line 259
    :cond_0
    iget-boolean v0, p0, Lc8/fmf;->foreground:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lc8/fmf;->foreground:Z

    if-eqz v0, :cond_1

    .line 260
    const/4 v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lc8/fmf;->priority:Lcom/taobao/downloader/api/Request$Priority;

    .line 263
    iget-object v1, p1, Lc8/fmf;->priority:Lcom/taobao/downloader/api/Request$Priority;

    .line 264
    if-ne v0, v1, :cond_2

    iget v0, p0, Lc8/fmf;->a:I

    iget v1, p1, Lc8/fmf;->a:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/taobao/downloader/api/Request$Priority;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/taobao/downloader/api/Request$Priority;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lc8/fmf;

    invoke-virtual {p0, p1}, Lc8/fmf;->compareTo(Lc8/fmf;)I

    move-result v0

    return v0
.end method

.method declared-synchronized d()V
    .locals 4

    .prologue
    .line 200
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string/jumbo v0, "Request"

    const-string/jumbo v1, "cancel"

    invoke-virtual {p0}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_0
    sget-object v0, Lcom/taobao/downloader/api/Request$Status;->CANCELED:Lcom/taobao/downloader/api/Request$Status;

    iput-object v0, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 287
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized finish()V
    .locals 6

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->STARTED:Lcom/taobao/downloader/api/Request$Status;

    if-eq v0, v1, :cond_1

    .line 228
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string/jumbo v0, "Request"

    const-string/jumbo v1, "finish"

    invoke-virtual {p0}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "status"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lc8/fmf;->i:Lc8/kmf;

    invoke-virtual {v0, p0}, Lc8/kmf;->a(Lc8/fmf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_1
    :try_start_1
    sget-object v0, Lc8/dmf;->a:[I

    iget-object v1, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    invoke-virtual {v1}, Lcom/taobao/downloader/api/Request$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lc8/fmf;->listener:Lc8/vmf;

    iget-object v1, p0, Lc8/fmf;->j:Lc8/smf;

    iget-boolean v1, v1, Lc8/smf;->g:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc8/fmf;->h:J

    sub-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Lc8/vmf;->onCompleted(ZJ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    :try_start_3
    const-string/jumbo v1, "Request"

    const-string/jumbo v2, "finish"

    invoke-virtual {p0}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    :pswitch_1
    :try_start_4
    iget-object v0, p0, Lc8/fmf;->listener:Lc8/vmf;

    iget-boolean v1, p0, Lc8/fmf;->c:Z

    invoke-interface {v0, v1}, Lc8/vmf;->onPaused(Z)V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v0, p0, Lc8/fmf;->listener:Lc8/vmf;

    invoke-interface {v0}, Lc8/vmf;->onCanceled()V

    goto :goto_0

    .line 245
    :pswitch_3
    iget-object v0, p0, Lc8/fmf;->listener:Lc8/vmf;

    iget-object v1, p0, Lc8/fmf;->j:Lc8/smf;

    iget v1, v1, Lc8/smf;->a:I

    iget-object v2, p0, Lc8/fmf;->j:Lc8/smf;

    iget-object v2, v2, Lc8/smf;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/vmf;->onError(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getEnterQueueTime()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lc8/fmf;->h:J

    return-wide v0
.end method

.method public getResponse()Lc8/smf;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lc8/fmf;->j:Lc8/smf;

    return-object v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lc8/fmf;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/fmf;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/fmf;->b:I

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lc8/fmf;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/fmf;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/fmf;->e:Ljava/lang/String;

    .line 135
    :cond_0
    iget-object v0, p0, Lc8/fmf;->e:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getStatus()Lcom/taobao/downloader/api/Request$Status;
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc8/fmf;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/fmf;->name:Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/fmf;->cachePath:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hitCache()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 213
    iget-boolean v1, p0, Lc8/fmf;->useCache:Z

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lc8/fmf;->cachePath:Ljava/lang/String;

    iget-object v3, p0, Lc8/fmf;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lc8/fmf;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lc8/fmf;->size:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lc8/fmf;->md5:Ljava/lang/String;

    .line 218
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lc8/fmf;->md5:Ljava/lang/String;

    invoke-static {v1}, Lc8/Qmf;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportRange()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lc8/fmf;->g:Z

    return v0
.end method

.method public declared-synchronized resume()V
    .locals 6

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->STARTED:Lcom/taobao/downloader/api/Request$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->CANCELED:Lcom/taobao/downloader/api/Request$Status;

    if-eq v0, v1, :cond_1

    .line 174
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string/jumbo v0, "Request"

    const-string/jumbo v1, "resume"

    invoke-virtual {p0}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_0
    invoke-virtual {p0}, Lc8/fmf;->a()V

    .line 178
    iget-object v0, p0, Lc8/fmf;->i:Lc8/kmf;

    invoke-virtual {v0, p0}, Lc8/kmf;->add(Lc8/fmf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_1
    :try_start_1
    const-string/jumbo v0, "Request"

    const-string/jumbo v1, "resume"

    invoke-virtual {p0}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "illegal status"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsNetworkLimit(Z)V
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Lc8/fmf;->c:Z

    .line 151
    return-void
.end method

.method public declared-synchronized setStatus(Lcom/taobao/downloader/api/Request$Status;)V
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportRange(Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lc8/fmf;->g:Z

    .line 155
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 6

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->STARTED:Lcom/taobao/downloader/api/Request$Status;

    if-ne v0, v1, :cond_1

    .line 189
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string/jumbo v0, "Request"

    const-string/jumbo v1, "stop"

    invoke-virtual {p0}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_0
    sget-object v0, Lcom/taobao/downloader/api/Request$Status;->PAUSED:Lcom/taobao/downloader/api/Request$Status;

    iput-object v0, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/fmf;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :cond_1
    :try_start_1
    const-string/jumbo v0, "Request"

    const-string/jumbo v1, "stop"

    invoke-virtual {p0}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "illegal status"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/fmf;->f:Lcom/taobao/downloader/api/Request$Status;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Request{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    const-string/jumbo v1, "url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/fmf;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    const-string/jumbo v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/fmf;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    const-string/jumbo v1, ", md5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/fmf;->md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    const-string/jumbo v1, ", tag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/fmf;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    const-string/jumbo v1, ", cachePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/fmf;->cachePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    const-string/jumbo v1, ", useCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lc8/fmf;->useCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 276
    const-string/jumbo v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/fmf;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 277
    const-string/jumbo v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/fmf;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    const-string/jumbo v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/fmf;->method:Lcom/taobao/downloader/api/Request$Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    const-string/jumbo v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/fmf;->priority:Lcom/taobao/downloader/api/Request$Priority;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    const-string/jumbo v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/fmf;->network:Lcom/taobao/downloader/api/Request$Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
