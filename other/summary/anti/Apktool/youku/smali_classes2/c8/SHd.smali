.class public Lc8/SHd;
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
    name = "GetRequestBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/SHd;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/aId;"
    }
.end annotation


# instance fields
.field private mDecodeConfig:Landroid/graphics/Bitmap$Config;

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

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMethod:I

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

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mTag:Ljava/lang/Object;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    const/4 v1, 0x0

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->MEDIUM:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    iput-object v0, p0, Lc8/SHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 833
    iput v1, p0, Lc8/SHd;->mMethod:I

    .line 840
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/SHd;->mHeadersMap:Ljava/util/HashMap;

    .line 841
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/SHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 842
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/SHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 849
    iput-object p1, p0, Lc8/SHd;->mUrl:Ljava/lang/String;

    .line 850
    iput v1, p0, Lc8/SHd;->mMethod:I

    .line 851
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # I

    .prologue
    .line 853
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->MEDIUM:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    iput-object v0, p0, Lc8/SHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 833
    const/4 v0, 0x0

    iput v0, p0, Lc8/SHd;->mMethod:I

    .line 840
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/SHd;->mHeadersMap:Ljava/util/HashMap;

    .line 841
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/SHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 842
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/SHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 854
    iput-object p1, p0, Lc8/SHd;->mUrl:Ljava/lang/String;

    .line 855
    iput p2, p0, Lc8/SHd;->mMethod:I

    .line 856
    return-void
.end method

.method static synthetic access$000(Lc8/SHd;)I
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget v0, p0, Lc8/SHd;->mMethod:I

    return v0
.end method

.method static synthetic access$100(Lc8/SHd;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget-object v0, p0, Lc8/SHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/SHd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget-object v0, p0, Lc8/SHd;->mPathParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lc8/SHd;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget-object v0, p0, Lc8/SHd;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1200(Lc8/SHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget-object v0, p0, Lc8/SHd;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/SHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget-object v0, p0, Lc8/SHd;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/SHd;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget-object v0, p0, Lc8/SHd;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lc8/SHd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget-object v0, p0, Lc8/SHd;->mHeadersMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lc8/SHd;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget-object v0, p0, Lc8/SHd;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method static synthetic access$600(Lc8/SHd;)I
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget v0, p0, Lc8/SHd;->mMaxHeight:I

    return v0
.end method

.method static synthetic access$700(Lc8/SHd;)I
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget v0, p0, Lc8/SHd;->mMaxWidth:I

    return v0
.end method

.method static synthetic access$800(Lc8/SHd;)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget-object v0, p0, Lc8/SHd;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method static synthetic access$900(Lc8/SHd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/SHd;

    .prologue
    .line 831
    iget-object v0, p0, Lc8/SHd;->mQueryParameterMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/SHd;
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
    .line 894
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    iget-object v0, p0, Lc8/SHd;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    return-object p0
.end method

.method public addHeaders(Ljava/util/HashMap;)Lc8/SHd;
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
    .line 900
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    .local p1, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 901
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

    .line 902
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/SHd;->mHeadersMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 905
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/SHd;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addHeaders(Ljava/util/HashMap;)Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/SHd;->addHeaders(Ljava/util/HashMap;)Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/SHd;
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
    .line 888
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    iget-object v0, p0, Lc8/SHd;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    return-object p0
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/SHd;->addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/SHd;
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
    .line 872
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    iget-object v0, p0, Lc8/SHd;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    return-object p0
.end method

.method public addQueryParameter(Ljava/util/HashMap;)Lc8/SHd;
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
    .line 878
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    .local p1, "queryParameterMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 879
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

    .line 880
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/SHd;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 883
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/SHd;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addQueryParameter(Ljava/util/HashMap;)Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/SHd;->addQueryParameter(Ljava/util/HashMap;)Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public build()Lc8/VHd;
    .locals 1

    .prologue
    .line 971
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    new-instance v0, Lc8/VHd;

    invoke-direct {v0, p0}, Lc8/VHd;-><init>(Lc8/SHd;)V

    return-object v0
.end method

.method public doNotCacheResponse()Lc8/SHd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 911
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic doNotCacheResponse()Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0}, Lc8/SHd;->doNotCacheResponse()Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyFromNetwork()Lc8/SHd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyFromNetwork()Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0}, Lc8/SHd;->getResponseOnlyFromNetwork()Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyIfCached()Lc8/SHd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 917
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyIfCached()Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0}, Lc8/SHd;->getResponseOnlyIfCached()Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lc8/SHd;
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
    .line 940
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    iput-object p1, p0, Lc8/SHd;->mExecutor:Ljava/util/concurrent/Executor;

    .line 941
    return-object p0
.end method

.method public bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/SHd;->setExecutor(Ljava/util/concurrent/Executor;)Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/SHd;
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
    .line 929
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/SHd;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/SHd;
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
    .line 935
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/SHd;->setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/SHd;
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
    .line 860
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    iput-object p1, p0, Lc8/SHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 861
    return-object p0
.end method

.method public bridge synthetic setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/SHd;->setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)Lc8/SHd;
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
    .line 866
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    iput-object p1, p0, Lc8/SHd;->mTag:Ljava/lang/Object;

    .line 867
    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/SHd;->setTag(Ljava/lang/Object;)Lc8/SHd;

    move-result-object v0

    return-object v0
.end method

.method public setUserAgent(Ljava/lang/String;)Lc8/SHd;
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
    .line 946
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    iput-object p1, p0, Lc8/SHd;->mUserAgent:Ljava/lang/String;

    .line 947
    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 831
    .local p0, "this":Lc8/SHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/SHd;->setUserAgent(Ljava/lang/String;)Lc8/SHd;

    move-result-object v0

    return-object v0
.end method
