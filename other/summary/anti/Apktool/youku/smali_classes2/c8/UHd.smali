.class public Lc8/UHd;
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
    name = "PostRequestBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/UHd;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/aId;"
    }
.end annotation


# instance fields
.field private mBodyParameterMap:Ljava/util/HashMap;
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

.field private mByte:[B

.field private mCustomContentType:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFile:Ljava/io/File;

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

.field private mJsonArray:Lorg/json/JSONArray;

.field private mJsonObject:Lorg/json/JSONObject;

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

.field private mStringBody:Ljava/lang/String;

.field private mTag:Ljava/lang/Object;

.field private mUrl:Ljava/lang/String;

.field private mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;
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

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->MEDIUM:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    iput-object v0, p0, Lc8/UHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 999
    iput v2, p0, Lc8/UHd;->mMethod:I

    .line 1002
    iput-object v1, p0, Lc8/UHd;->mJsonObject:Lorg/json/JSONObject;

    .line 1003
    iput-object v1, p0, Lc8/UHd;->mJsonArray:Lorg/json/JSONArray;

    .line 1004
    iput-object v1, p0, Lc8/UHd;->mStringBody:Ljava/lang/String;

    .line 1005
    iput-object v1, p0, Lc8/UHd;->mByte:[B

    .line 1006
    iput-object v1, p0, Lc8/UHd;->mFile:Ljava/io/File;

    .line 1007
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/UHd;->mHeadersMap:Ljava/util/HashMap;

    .line 1008
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/UHd;->mBodyParameterMap:Ljava/util/HashMap;

    .line 1009
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/UHd;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 1010
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/UHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 1011
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/UHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 1019
    iput-object p1, p0, Lc8/UHd;->mUrl:Ljava/lang/String;

    .line 1020
    iput v2, p0, Lc8/UHd;->mMethod:I

    .line 1021
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # I

    .prologue
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    const/4 v1, 0x0

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->MEDIUM:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    iput-object v0, p0, Lc8/UHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 999
    const/4 v0, 0x1

    iput v0, p0, Lc8/UHd;->mMethod:I

    .line 1002
    iput-object v1, p0, Lc8/UHd;->mJsonObject:Lorg/json/JSONObject;

    .line 1003
    iput-object v1, p0, Lc8/UHd;->mJsonArray:Lorg/json/JSONArray;

    .line 1004
    iput-object v1, p0, Lc8/UHd;->mStringBody:Ljava/lang/String;

    .line 1005
    iput-object v1, p0, Lc8/UHd;->mByte:[B

    .line 1006
    iput-object v1, p0, Lc8/UHd;->mFile:Ljava/io/File;

    .line 1007
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/UHd;->mHeadersMap:Ljava/util/HashMap;

    .line 1008
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/UHd;->mBodyParameterMap:Ljava/util/HashMap;

    .line 1009
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/UHd;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 1010
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/UHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 1011
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/UHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 1024
    iput-object p1, p0, Lc8/UHd;->mUrl:Ljava/lang/String;

    .line 1025
    iput p2, p0, Lc8/UHd;->mMethod:I

    .line 1026
    return-void
.end method

.method static synthetic access$1300(Lc8/UHd;)I
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget v0, p0, Lc8/UHd;->mMethod:I

    return v0
.end method

.method static synthetic access$1400(Lc8/UHd;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    return-object v0
.end method

.method static synthetic access$1500(Lc8/UHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lc8/UHd;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lc8/UHd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mHeadersMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lc8/UHd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mBodyParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lc8/UHd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lc8/UHd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mQueryParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2100(Lc8/UHd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mPathParameterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lc8/UHd;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$2300(Lc8/UHd;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mJsonArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$2400(Lc8/UHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mStringBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lc8/UHd;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2600(Lc8/UHd;)[B
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mByte:[B

    return-object v0
.end method

.method static synthetic access$2700(Lc8/UHd;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$2800(Lc8/UHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lc8/UHd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/UHd;

    .prologue
    .line 996
    iget-object v0, p0, Lc8/UHd;->mCustomContentType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addBodyParameter(Ljava/util/HashMap;)Lc8/UHd;
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
    .line 1132
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    .local p1, "bodyParameterMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1133
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

    .line 1134
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/UHd;->mBodyParameterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1137
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/UHd;
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
    .line 1064
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    iget-object v0, p0, Lc8/UHd;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    return-object p0
.end method

.method public addHeaders(Ljava/util/HashMap;)Lc8/UHd;
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
    .line 1070
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    .local p1, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1071
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

    .line 1072
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/UHd;->mHeadersMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1075
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/UHd;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addHeaders(Ljava/util/HashMap;)Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/UHd;->addHeaders(Ljava/util/HashMap;)Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/UHd;
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
    .line 1058
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    iget-object v0, p0, Lc8/UHd;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    return-object p0
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/UHd;->addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/UHd;
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
    .line 1042
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    iget-object v0, p0, Lc8/UHd;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    return-object p0
.end method

.method public addQueryParameter(Ljava/util/HashMap;)Lc8/UHd;
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
    .line 1048
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    .local p1, "queryParameterMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1049
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

    .line 1050
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/UHd;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1053
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/UHd;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addQueryParameter(Ljava/util/HashMap;)Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/UHd;->addQueryParameter(Ljava/util/HashMap;)Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public build()Lc8/VHd;
    .locals 1

    .prologue
    .line 1180
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    new-instance v0, Lc8/VHd;

    invoke-direct {v0, p0}, Lc8/VHd;-><init>(Lc8/UHd;)V

    return-object v0
.end method

.method public doNotCacheResponse()Lc8/UHd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1081
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic doNotCacheResponse()Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0}, Lc8/UHd;->doNotCacheResponse()Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyFromNetwork()Lc8/UHd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1093
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyFromNetwork()Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0}, Lc8/UHd;->getResponseOnlyFromNetwork()Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyIfCached()Lc8/UHd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1087
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic getResponseOnlyIfCached()Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0}, Lc8/UHd;->getResponseOnlyIfCached()Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lc8/UHd;
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
    .line 1110
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    iput-object p1, p0, Lc8/UHd;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1111
    return-object p0
.end method

.method public bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/UHd;->setExecutor(Ljava/util/concurrent/Executor;)Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/UHd;
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
    .line 1099
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/UHd;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/UHd;
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
    .line 1105
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    return-object p0
.end method

.method public bridge synthetic setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/UHd;->setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/UHd;
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
    .line 1030
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    iput-object p1, p0, Lc8/UHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 1031
    return-object p0
.end method

.method public bridge synthetic setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/UHd;->setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)Lc8/UHd;
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
    .line 1036
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    iput-object p1, p0, Lc8/UHd;->mTag:Ljava/lang/Object;

    .line 1037
    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/UHd;->setTag(Ljava/lang/Object;)Lc8/UHd;

    move-result-object v0

    return-object v0
.end method

.method public setUserAgent(Ljava/lang/String;)Lc8/UHd;
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
    .line 1117
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    iput-object p1, p0, Lc8/UHd;->mUserAgent:Ljava/lang/String;

    .line 1118
    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lc8/aId;
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lc8/UHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lc8/UHd;->setUserAgent(Ljava/lang/String;)Lc8/UHd;

    move-result-object v0

    return-object v0
.end method
