.class public Lmtopsdk/mtop/domain/ResponseSource;
.super Ljava/lang/Object;
.source "ResponseSource.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cacheBlock:Ljava/lang/String;

.field private cacheKey:Ljava/lang/String;

.field public cacheManager:Lc8/sNp;

.field public cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

.field public mtopContext:Lc8/IMp;

.field public requireConnection:Z

.field public rpcCache:Lanetwork/network/cache/RpcCache;

.field public seqNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/IMp;Lc8/sNp;)V
    .locals 1
    .param p1, "mtopContext"    # Lc8/IMp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cacheManager"    # Lc8/sNp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    .line 63
    iput-object p1, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopContext:Lc8/IMp;

    .line 64
    iput-object p2, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheManager:Lc8/sNp;

    .line 65
    iget-object v0, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->seqNo:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getCacheBlock()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheBlock:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheBlock:Ljava/lang/String;

    .line 84
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheManager:Lc8/sNp;

    iget-object v1, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopContext:Lc8/IMp;

    iget-object v1, v1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/sNp;->getBlockName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheBlock:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheBlock:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheKey:Ljava/lang/String;

    .line 75
    :goto_0
    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheManager:Lc8/sNp;

    iget-object v1, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopContext:Lc8/IMp;

    invoke-interface {v0, v1}, Lc8/sNp;->getCacheKey(Lc8/IMp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheKey:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheKey:Ljava/lang/String;

    goto :goto_0
.end method
