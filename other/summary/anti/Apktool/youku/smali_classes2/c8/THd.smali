.class public Lc8/THd;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Lc8/aId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/VHd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiPartBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/THd;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/aId;"
    }
.end annotation


# instance fields
.field private mCustomContentType:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mHeadersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiPartFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiPartParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPathParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPercentageThresholdForCancelling:I

.field private mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

.field private mQueryParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/Object;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1325
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->MEDIUM:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    iput-object v0, p0, Lc8/THd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 1313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/THd;->mHeadersMap:Ljava/util/HashMap;

    .line 1314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/THd;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 1315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/THd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 1316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/THd;->mPathParameterMap:Ljava/util/HashMap;

    .line 1317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/THd;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 1319
    const/4 v0, 0x0

    iput v0, p0, Lc8/THd;->mPercentageThresholdForCancelling:I

    .line 1326
    iput-object p1, p0, Lc8/THd;->mUrl:Ljava/lang/String;

    .line 1327
    return-void
.end method

.method static synthetic access$4100(Lc8/THd;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    .locals 1
    .param p0, "x0"    # Lc8/THd;

    .prologue
    .line 1308
    iget-object v0, p0, Lc8/THd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    return-object v0
.end method

.method static synthetic access$4200(Lc8/THd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/THd;

    .prologue
    .line 1308
    iget-object v0, p0, Lc8/THd;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lc8/THd;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/THd;

    .prologue
    .line 1308
    iget-object v0, p0, Lc8/THd;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4400(Lc8/THd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/THd;

    .prologue
    .line 1308
    iget-object v0, p0, Lc8/THd;->mHeadersMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4500(Lc8/THd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/THd;

    .prologue
    .line 1308
    iget-object v0, p0, Lc8/THd;->mQueryParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4600(Lc8/THd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/THd;

    .prologue
    .line 1308
    iget-object v0, p0, Lc8/THd;->mPathParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4700(Lc8/THd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/THd;

    .prologue
    .line 1308
    iget-object v0, p0, Lc8/THd;->mMultiPartParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4800(Lc8/THd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/THd;

    .prologue
    .line 1308
    iget-object v0, p0, Lc8/THd;->mMultiPartFileMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4900(Lc8/THd;)I
    .locals 1
    .param p0, "x0"    # Lc8/THd;

    .prologue
    .line 1308
    iget v0, p0, Lc8/THd;->mPercentageThresholdForCancelling:I

    return v0
.end method

.method static synthetic access$5000(Lc8/THd;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lc8/THd;

    .prologue
    .line 1308
    iget-object v0, p0, Lc8/THd;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$5100(Lc8/THd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/THd;

    .prologue
    .line 1308
    iget-object v0, p0, Lc8/THd;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lc8/THd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/THd;

    .prologue
    .line 1308
    iget-object v0, p0, Lc8/THd;->mCustomContentType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/THd;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1365
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    iget-object v0, p0, Lc8/THd;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    return-object p0
.end method

.method public addHeaders(Ljava/util/HashMap;)Lc8/THd;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 1371
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    .local p1, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1372
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1373
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/THd;->mHeadersMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1376
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/THd;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addHeaders(Ljava/util/HashMap;)Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/THd;->addHeaders(Ljava/util/HashMap;)Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public addMultipartFile(Ljava/lang/String;Ljava/io/File;)Lc8/THd;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1436
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    iget-object v0, p0, Lc8/THd;->mMultiPartFileMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    return-object p0
.end method

.method public addMultipartParameter(Ljava/util/HashMap;)Lc8/THd;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 1427
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    .local p1, "multiPartParameterMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1428
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1429
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/THd;->mMultiPartParameterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1432
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/THd;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1359
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    iget-object v0, p0, Lc8/THd;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    return-object p0
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/THd;->addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/THd;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1343
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    iget-object v0, p0, Lc8/THd;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    return-object p0
.end method

.method public addQueryParameter(Ljava/util/HashMap;)Lc8/THd;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 1349
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    .local p1, "queryParameterMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1350
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1351
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/THd;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1354
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/THd;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addQueryParameter(Ljava/util/HashMap;)Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/THd;->addQueryParameter(Ljava/util/HashMap;)Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public build()Lc8/VHd;
    .locals 1

    .prologue
    .line 1460
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    new-instance v0, Lc8/VHd;

    invoke-direct {v0, p0}, Lc8/VHd;-><init>(Lc8/THd;)V

    return-object v0
.end method

.method public doNotCacheResponse()Lc8/THd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1382
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic doNotCacheResponse()Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0}, Lc8/THd;->doNotCacheResponse()Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyFromNetwork()Lc8/THd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1394
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyFromNetwork()Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0}, Lc8/THd;->getResponseOnlyFromNetwork()Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyIfCached()Lc8/THd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1388
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyIfCached()Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0}, Lc8/THd;->getResponseOnlyIfCached()Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lc8/THd;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1411
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    iput-object p1, p0, Lc8/THd;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1412
    return-object p0
.end method

.method public bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/THd;->setExecutor(Ljava/util/concurrent/Executor;)Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/THd;
    .locals 0
    .param p1, "maxAge"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1400
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/THd;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/THd;
    .locals 0
    .param p1, "maxStale"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1406
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/THd;->setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/THd;
    .locals 0
    .param p1, "priority"    # Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/networking/common/Priority;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1331
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    iput-object p1, p0, Lc8/THd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 1332
    return-object p0
.end method

.method public bridge synthetic setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/THd;->setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)Lc8/THd;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1337
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    iput-object p1, p0, Lc8/THd;->mTag:Ljava/lang/Object;

    .line 1338
    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/THd;->setTag(Ljava/lang/Object;)Lc8/THd;

    move-result-object v0

    return-object v0
.end method

.method public setUserAgent(Ljava/lang/String;)Lc8/THd;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1417
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    iput-object p1, p0, Lc8/THd;->mUserAgent:Ljava/lang/String;

    .line 1418
    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Lc8/THd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/THd;->setUserAgent(Ljava/lang/String;)Lc8/THd;

    move-result-object v0

    return-object v0
.end method
