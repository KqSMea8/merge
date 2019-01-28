.class public final Lc8/fSe;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/dSe;,
        Lc8/eSe;,
        Lc8/bSe;
    }
.end annotation


# instance fields
.field private final cache:Lc8/nTe;

.field private hitCount:I

.field final internalCache:Lc8/qTe;

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .prologue
    .line 168
    sget-object v0, Lc8/fVe;->SYSTEM:Lc8/fVe;

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/fSe;-><init>(Ljava/io/File;JLc8/fVe;)V

    .line 169
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLc8/fVe;)V
    .locals 6
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .param p4, "fileSystem"    # Lc8/fVe;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lc8/ZRe;

    invoke-direct {v0, p0}, Lc8/ZRe;-><init>(Lc8/fSe;)V

    iput-object v0, p0, Lc8/fSe;->internalCache:Lc8/qTe;

    .line 172
    const v2, 0x31191

    const/4 v3, 0x2

    move-object v0, p4

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lc8/nTe;->create(Lc8/fVe;Ljava/io/File;IIJ)Lc8/nTe;

    move-result-object v0

    iput-object v0, p0, Lc8/fSe;->cache:Lc8/nTe;

    .line 173
    return-void
.end method

.method private abortQuietly(Lc8/kTe;)V
    .locals 1
    .param p1, "editor"    # Lc8/kTe;

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 270
    :try_start_0
    invoke-virtual {p1}, Lc8/kTe;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/fSe;Lc8/cTe;)Lc8/wUe;
    .locals 1
    .param p0, "x0"    # Lc8/fSe;
    .param p1, "x1"    # Lc8/cTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lc8/fSe;->put(Lc8/cTe;)Lc8/wUe;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/fSe;Lc8/VSe;)V
    .locals 0
    .param p0, "x0"    # Lc8/fSe;
    .param p1, "x1"    # Lc8/VSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lc8/fSe;->remove(Lc8/VSe;)V

    return-void
.end method

.method static synthetic access$1000(Lc8/aWp;)I
    .locals 1
    .param p0, "x0"    # Lc8/aWp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p0}, Lc8/fSe;->readInt(Lc8/aWp;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lc8/fSe;Lc8/cTe;Lc8/cTe;)V
    .locals 0
    .param p0, "x0"    # Lc8/fSe;
    .param p1, "x1"    # Lc8/cTe;
    .param p2, "x2"    # Lc8/cTe;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lc8/fSe;->update(Lc8/cTe;Lc8/cTe;)V

    return-void
.end method

.method static synthetic access$300(Lc8/fSe;)V
    .locals 0
    .param p0, "x0"    # Lc8/fSe;

    .prologue
    .line 131
    invoke-direct {p0}, Lc8/fSe;->trackConditionalCacheHit()V

    return-void
.end method

.method static synthetic access$400(Lc8/fSe;Lc8/zUe;)V
    .locals 0
    .param p0, "x0"    # Lc8/fSe;
    .param p1, "x1"    # Lc8/zUe;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lc8/fSe;->trackResponse(Lc8/zUe;)V

    return-void
.end method

.method static synthetic access$808(Lc8/fSe;)I
    .locals 2
    .param p0, "x0"    # Lc8/fSe;

    .prologue
    .line 131
    iget v0, p0, Lc8/fSe;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc8/fSe;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$908(Lc8/fSe;)I
    .locals 2
    .param p0, "x0"    # Lc8/fSe;

    .prologue
    .line 131
    iget v0, p0, Lc8/fSe;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc8/fSe;->writeAbortCount:I

    return v0
.end method

.method private put(Lc8/cTe;)Lc8/wUe;
    .locals 6
    .param p1, "response"    # Lc8/cTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 211
    invoke-virtual {p1}, Lc8/cTe;->request()Lc8/VSe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "requestMethod":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/cTe;->request()Lc8/VSe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/RUe;->invalidatesCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 215
    :try_start_0
    invoke-virtual {p1}, Lc8/cTe;->request()Lc8/VSe;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/fSe;->remove(Lc8/VSe;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    :cond_0
    :goto_0
    return-object v3

    .line 221
    :cond_1
    const-string/jumbo v4, "GET"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    invoke-static {p1}, Lc8/UUe;->hasVaryAll(Lc8/cTe;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    new-instance v1, Lc8/eSe;

    invoke-direct {v1, p1}, Lc8/eSe;-><init>(Lc8/cTe;)V

    .line 233
    .local v1, "entry":Lc8/eSe;
    const/4 v0, 0x0

    .line 235
    .local v0, "editor":Lc8/kTe;
    :try_start_1
    iget-object v4, p0, Lc8/fSe;->cache:Lc8/nTe;

    invoke-virtual {p1}, Lc8/cTe;->request()Lc8/VSe;

    move-result-object v5

    invoke-static {v5}, Lc8/fSe;->urlToKey(Lc8/VSe;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/nTe;->edit(Ljava/lang/String;)Lc8/kTe;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v1, v0}, Lc8/eSe;->writeTo(Lc8/kTe;)V

    .line 240
    new-instance v4, Lc8/bSe;

    invoke-direct {v4, p0, v0}, Lc8/bSe;-><init>(Lc8/fSe;Lc8/kTe;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 242
    :catch_0
    move-exception v4

    invoke-direct {p0, v0}, Lc8/fSe;->abortQuietly(Lc8/kTe;)V

    goto :goto_0

    .end local v0    # "editor":Lc8/kTe;
    .end local v1    # "entry":Lc8/eSe;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private static readInt(Lc8/aWp;)I
    .locals 7
    .param p0, "source"    # Lc8/aWp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    :try_start_0
    invoke-interface {p0}, Lc8/aWp;->readDecimalLong()J

    move-result-wide v2

    .line 682
    .local v2, "result":J
    invoke-interface {p0}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "line":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 684
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "expected an int but was \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "result":J
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 686
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "result":J
    :cond_1
    long-to-int v4, v2

    return v4
.end method

.method private remove(Lc8/VSe;)V
    .locals 2
    .param p1, "request"    # Lc8/VSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lc8/fSe;->cache:Lc8/nTe;

    invoke-static {p1}, Lc8/fSe;->urlToKey(Lc8/VSe;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/nTe;->remove(Ljava/lang/String;)Z

    .line 249
    return-void
.end method

.method private declared-synchronized trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc8/fSe;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/fSe;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized trackResponse(Lc8/zUe;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lc8/zUe;

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc8/fSe;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/fSe;->requestCount:I

    .line 397
    iget-object v0, p1, Lc8/zUe;->networkRequest:Lc8/VSe;

    if-eqz v0, :cond_1

    .line 399
    iget v0, p0, Lc8/fSe;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/fSe;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 401
    :cond_1
    :try_start_1
    iget-object v0, p1, Lc8/zUe;->cacheResponse:Lc8/cTe;

    if-eqz v0, :cond_0

    .line 403
    iget v0, p0, Lc8/fSe;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/fSe;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private update(Lc8/cTe;Lc8/cTe;)V
    .locals 4
    .param p1, "cached"    # Lc8/cTe;
    .param p2, "network"    # Lc8/cTe;

    .prologue
    .line 252
    new-instance v1, Lc8/eSe;

    invoke-direct {v1, p2}, Lc8/eSe;-><init>(Lc8/cTe;)V

    .line 253
    .local v1, "entry":Lc8/eSe;
    invoke-virtual {p1}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v3

    check-cast v3, Lc8/dSe;

    invoke-static {v3}, Lc8/dSe;->access$500(Lc8/dSe;)Lc8/mTe;

    move-result-object v2

    .line 254
    .local v2, "snapshot":Lc8/mTe;
    const/4 v0, 0x0

    .line 256
    .local v0, "editor":Lc8/kTe;
    :try_start_0
    invoke-virtual {v2}, Lc8/mTe;->edit()Lc8/kTe;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v1, v0}, Lc8/eSe;->writeTo(Lc8/kTe;)V

    .line 259
    invoke-virtual {v0}, Lc8/kTe;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v3

    invoke-direct {p0, v0}, Lc8/fSe;->abortQuietly(Lc8/kTe;)V

    goto :goto_0
.end method

.method private static urlToKey(Lc8/VSe;)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # Lc8/VSe;

    .prologue
    .line 176
    invoke-virtual {p0}, Lc8/VSe;->urlString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/ATe;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method get(Lc8/VSe;)Lc8/cTe;
    .locals 6
    .param p1, "request"    # Lc8/VSe;

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-static {p1}, Lc8/fSe;->urlToKey(Lc8/VSe;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lc8/fSe;->cache:Lc8/nTe;

    invoke-virtual {v5, v1}, Lc8/nTe;->get(Ljava/lang/String;)Lc8/mTe;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 185
    .local v3, "snapshot":Lc8/mTe;
    if-nez v3, :cond_1

    move-object v2, v4

    .line 207
    .end local v3    # "snapshot":Lc8/mTe;
    :cond_0
    :goto_0
    return-object v2

    .line 190
    :catch_0
    move-exception v5

    move-object v2, v4

    goto :goto_0

    .line 194
    .restart local v3    # "snapshot":Lc8/mTe;
    :cond_1
    :try_start_1
    new-instance v0, Lc8/eSe;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lc8/mTe;->getSource(I)Lc8/uWp;

    move-result-object v5

    invoke-direct {v0, v5}, Lc8/eSe;-><init>(Lc8/uWp;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    .local v0, "entry":Lc8/eSe;
    invoke-virtual {v0, p1, v3}, Lc8/eSe;->response(Lc8/VSe;Lc8/mTe;)Lc8/cTe;

    move-result-object v2

    .line 202
    .local v2, "response":Lc8/cTe;
    invoke-virtual {v0, p1, v2}, Lc8/eSe;->matches(Lc8/VSe;Lc8/cTe;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 203
    invoke-virtual {v2}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v5

    invoke-static {v5}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v4

    .line 204
    goto :goto_0

    .line 196
    .end local v0    # "entry":Lc8/eSe;
    .end local v2    # "response":Lc8/cTe;
    :catch_1
    move-exception v5

    invoke-static {v3}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v4

    .line 197
    goto :goto_0
.end method
