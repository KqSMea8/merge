.class public Lc8/RHd;
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
    name = "DownloadBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/RHd;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/aId;"
    }
.end annotation


# instance fields
.field private mDirPath:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFileName:Ljava/lang/String;

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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dirPath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1200
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1186
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->MEDIUM:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    iput-object v0, p0, Lc8/RHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 1189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/RHd;->mHeadersMap:Ljava/util/HashMap;

    .line 1190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/RHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 1191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/RHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 1195
    const/4 v0, 0x0

    iput v0, p0, Lc8/RHd;->mPercentageThresholdForCancelling:I

    .line 1201
    iput-object p1, p0, Lc8/RHd;->mUrl:Ljava/lang/String;

    .line 1202
    iput-object p2, p0, Lc8/RHd;->mDirPath:Ljava/lang/String;

    .line 1203
    iput-object p3, p0, Lc8/RHd;->mFileName:Ljava/lang/String;

    .line 1204
    return-void
.end method

.method static synthetic access$3000(Lc8/RHd;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    .locals 1
    .param p0, "x0"    # Lc8/RHd;

    .prologue
    .line 1184
    iget-object v0, p0, Lc8/RHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    return-object v0
.end method

.method static synthetic access$3100(Lc8/RHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RHd;

    .prologue
    .line 1184
    iget-object v0, p0, Lc8/RHd;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lc8/RHd;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/RHd;

    .prologue
    .line 1184
    iget-object v0, p0, Lc8/RHd;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lc8/RHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RHd;

    .prologue
    .line 1184
    iget-object v0, p0, Lc8/RHd;->mDirPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lc8/RHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RHd;

    .prologue
    .line 1184
    iget-object v0, p0, Lc8/RHd;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lc8/RHd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/RHd;

    .prologue
    .line 1184
    iget-object v0, p0, Lc8/RHd;->mHeadersMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3600(Lc8/RHd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/RHd;

    .prologue
    .line 1184
    iget-object v0, p0, Lc8/RHd;->mQueryParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3700(Lc8/RHd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/RHd;

    .prologue
    .line 1184
    iget-object v0, p0, Lc8/RHd;->mPathParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3800(Lc8/RHd;)I
    .locals 1
    .param p0, "x0"    # Lc8/RHd;

    .prologue
    .line 1184
    iget v0, p0, Lc8/RHd;->mPercentageThresholdForCancelling:I

    return v0
.end method

.method static synthetic access$3900(Lc8/RHd;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lc8/RHd;

    .prologue
    .line 1184
    iget-object v0, p0, Lc8/RHd;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$4000(Lc8/RHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RHd;

    .prologue
    .line 1184
    iget-object v0, p0, Lc8/RHd;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/RHd;
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
    .line 1220
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    iget-object v0, p0, Lc8/RHd;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    return-object p0
.end method

.method public addHeaders(Ljava/util/HashMap;)Lc8/RHd;
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
    .line 1226
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    .local p1, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1227
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

    .line 1228
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/RHd;->mHeadersMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1231
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/RHd;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addHeaders(Ljava/util/HashMap;)Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/RHd;->addHeaders(Ljava/util/HashMap;)Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/RHd;
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
    .line 1252
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    iget-object v0, p0, Lc8/RHd;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    return-object p0
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/RHd;->addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/RHd;
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
    .line 1236
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    iget-object v0, p0, Lc8/RHd;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    return-object p0
.end method

.method public addQueryParameter(Ljava/util/HashMap;)Lc8/RHd;
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
    .line 1242
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    .local p1, "queryParameterMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1243
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

    .line 1244
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/RHd;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1247
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/RHd;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addQueryParameter(Ljava/util/HashMap;)Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/RHd;->addQueryParameter(Ljava/util/HashMap;)Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public build()Lc8/VHd;
    .locals 1

    .prologue
    .line 1304
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    new-instance v0, Lc8/VHd;

    invoke-direct {v0, p0}, Lc8/VHd;-><init>(Lc8/RHd;)V

    return-object v0
.end method

.method public doNotCacheResponse()Lc8/RHd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1259
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic doNotCacheResponse()Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0}, Lc8/RHd;->doNotCacheResponse()Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyFromNetwork()Lc8/RHd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1271
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyFromNetwork()Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0}, Lc8/RHd;->getResponseOnlyFromNetwork()Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyIfCached()Lc8/RHd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1265
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyIfCached()Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0}, Lc8/RHd;->getResponseOnlyIfCached()Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lc8/RHd;
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
    .line 1288
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    iput-object p1, p0, Lc8/RHd;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1289
    return-object p0
.end method

.method public bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/RHd;->setExecutor(Ljava/util/concurrent/Executor;)Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/RHd;
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
    .line 1277
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/RHd;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/RHd;
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
    .line 1283
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/RHd;->setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/RHd;
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
    .line 1208
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    iput-object p1, p0, Lc8/RHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 1209
    return-object p0
.end method

.method public bridge synthetic setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/RHd;->setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)Lc8/RHd;
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
    .line 1214
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    iput-object p1, p0, Lc8/RHd;->mTag:Ljava/lang/Object;

    .line 1215
    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/RHd;->setTag(Ljava/lang/Object;)Lc8/RHd;

    move-result-object v0

    return-object v0
.end method

.method public setUserAgent(Ljava/lang/String;)Lc8/RHd;
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
    .line 1294
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    iput-object p1, p0, Lc8/RHd;->mUserAgent:Ljava/lang/String;

    .line 1295
    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lc8/RHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$DownloadBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/RHd;->setUserAgent(Ljava/lang/String;)Lc8/RHd;

    move-result-object v0

    return-object v0
.end method
