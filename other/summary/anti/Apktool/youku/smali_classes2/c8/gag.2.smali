.class public Lc8/gag;
.super Ljava/lang/Object;
.source "WXStreamModule.java"

# interfaces
.implements Lc8/CVf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamHttpListener"
.end annotation


# instance fields
.field private mCallback:Lc8/fag;

.field private mProgressCallback:Lc8/EWf;

.field private mRespHeaders:Ljava/util/Map;
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

.field private mResponse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc8/fag;Lc8/EWf;)V
    .locals 1
    .param p1, "callback"    # Lc8/fag;
    .param p2, "progressCallback"    # Lc8/EWf;

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/gag;->mResponse:Ljava/util/Map;

    .line 304
    iput-object p1, p0, Lc8/gag;->mCallback:Lc8/fag;

    .line 305
    iput-object p2, p0, Lc8/gag;->mProgressCallback:Lc8/EWf;

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lc8/fag;Lc8/EWf;Lc8/dag;)V
    .locals 0
    .param p1, "x0"    # Lc8/fag;
    .param p2, "x1"    # Lc8/EWf;
    .param p3, "x2"    # Lc8/dag;

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Lc8/gag;-><init>(Lc8/fag;Lc8/EWf;)V

    return-void
.end method


# virtual methods
.method public onHeadersReceived(ILjava/util/Map;)V
    .locals 6
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lc8/gag;->mResponse:Ljava/util/Map;

    const-string/jumbo v4, "readyState"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v3, p0, Lc8/gag;->mResponse:Ljava/util/Map;

    const-string/jumbo v4, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 329
    .local v2, "simpleHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 330
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 331
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 332
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 333
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 334
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "_"

    move-object v4, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    goto :goto_1

    .line 339
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_2
    iget-object v3, p0, Lc8/gag;->mResponse:Ljava/util/Map;

    const-string/jumbo v4, "headers"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iput-object v2, p0, Lc8/gag;->mRespHeaders:Ljava/util/Map;

    .line 341
    iget-object v3, p0, Lc8/gag;->mProgressCallback:Lc8/EWf;

    if-eqz v3, :cond_3

    .line 342
    iget-object v3, p0, Lc8/gag;->mProgressCallback:Lc8/EWf;

    iget-object v4, p0, Lc8/gag;->mResponse:Ljava/util/Map;

    invoke-interface {v3, v4}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 344
    :cond_3
    return-void
.end method

.method public onHttpFinish(Lc8/SXf;)V
    .locals 3
    .param p1, "response"    # Lc8/SXf;

    .prologue
    .line 358
    iget-object v0, p0, Lc8/gag;->mCallback:Lc8/fag;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lc8/gag;->mCallback:Lc8/fag;

    iget-object v1, p0, Lc8/gag;->mRespHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Lc8/fag;->onResponse(Lc8/SXf;Ljava/util/Map;)V

    .line 362
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    const-string/jumbo v1, "WXStreamModule"

    if-eqz p1, :cond_2

    iget-object v0, p1, Lc8/SXf;->originalData:[B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lc8/SXf;->originalData:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {v1, v0}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_1
    return-void

    .line 363
    :cond_2
    const-string/jumbo v0, "response data is NUll!"

    goto :goto_0
.end method

.method public onHttpResponseProgress(I)V
    .locals 3
    .param p1, "loadedLength"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lc8/gag;->mResponse:Ljava/util/Map;

    const-string/jumbo v1, "length"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lc8/gag;->mProgressCallback:Lc8/EWf;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lc8/gag;->mProgressCallback:Lc8/EWf;

    iget-object v1, p0, Lc8/gag;->mResponse:Ljava/util/Map;

    invoke-interface {v0, v1}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 353
    :cond_0
    return-void
.end method

.method public onHttpStart()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lc8/gag;->mProgressCallback:Lc8/EWf;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lc8/gag;->mResponse:Ljava/util/Map;

    const-string/jumbo v1, "readyState"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lc8/gag;->mResponse:Ljava/util/Map;

    const-string/jumbo v1, "length"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lc8/gag;->mProgressCallback:Lc8/EWf;

    iget-object v1, p0, Lc8/gag;->mResponse:Ljava/util/Map;

    invoke-interface {v0, v1}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 316
    :cond_0
    return-void
.end method

.method public onHttpUploadProgress(I)V
    .locals 0
    .param p1, "uploadProgress"    # I

    .prologue
    .line 321
    return-void
.end method
