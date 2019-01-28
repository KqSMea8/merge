.class public Lc8/xvf;
.super Ljava/lang/Object;
.source "HttpLoaderBuilder.java"

# interfaces
.implements Lc8/rvf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/rvf",
        "<",
        "Lc8/Exf;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field public static final DEFAULT_READ_TIMEOUT:I = 0x2710


# instance fields
.field private mConnectTimeout:Ljava/lang/Integer;

.field private mHaveBuilt:Z

.field private mHttpLoader:Lc8/Exf;

.field private mReadTimeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized build()Lc8/Exf;
    .locals 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/xvf;->mHaveBuilt:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lc8/xvf;->mHttpLoader:Lc8/Exf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_0
    monitor-exit p0

    return-object v0

    .line 40
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lc8/xvf;->mHaveBuilt:Z

    .line 41
    iget-object v0, p0, Lc8/xvf;->mHttpLoader:Lc8/Exf;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lc8/Cxf;

    invoke-direct {v0}, Lc8/Cxf;-><init>()V

    iput-object v0, p0, Lc8/xvf;->mHttpLoader:Lc8/Exf;

    .line 44
    :cond_1
    iget-object v1, p0, Lc8/xvf;->mHttpLoader:Lc8/Exf;

    iget-object v0, p0, Lc8/xvf;->mConnectTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/xvf;->mConnectTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-interface {v1, v0}, Lc8/Exf;->connectTimeout(I)V

    .line 45
    iget-object v1, p0, Lc8/xvf;->mHttpLoader:Lc8/Exf;

    iget-object v0, p0, Lc8/xvf;->mReadTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/xvf;->mReadTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    invoke-interface {v1, v0}, Lc8/Exf;->readTimeout(I)V

    .line 46
    iget-object v0, p0, Lc8/xvf;->mHttpLoader:Lc8/Exf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :cond_2
    const/16 v0, 0x3a98

    goto :goto_1

    .line 45
    :cond_3
    const/16 v0, 0x2710

    goto :goto_2

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lc8/xvf;->build()Lc8/Exf;

    move-result-object v0

    return-object v0
.end method

.method public connectTimeout(I)Lc8/xvf;
    .locals 2
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 24
    iget-boolean v0, p0, Lc8/xvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "HttpLoaderBuilder has been built, not allow connectTimeout() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lc8/xvf;->mConnectTimeout:Ljava/lang/Integer;

    .line 26
    return-object p0

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readTimeout(I)Lc8/xvf;
    .locals 2
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 30
    iget-boolean v0, p0, Lc8/xvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "HttpLoaderBuilder has been built, not allow readTimeout() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lc8/xvf;->mReadTimeout:Ljava/lang/Integer;

    .line 32
    return-object p0

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lc8/rvf;
    .locals 1

    .prologue
    .line 7
    check-cast p1, Lc8/Exf;

    invoke-virtual {p0, p1}, Lc8/xvf;->with(Lc8/Exf;)Lc8/xvf;

    move-result-object v0

    return-object v0
.end method

.method public with(Lc8/Exf;)Lc8/xvf;
    .locals 2
    .param p1, "httpLoader"    # Lc8/Exf;

    .prologue
    .line 18
    iget-boolean v0, p0, Lc8/xvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "HttpLoaderBuilder has been built, not allow with() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 19
    iput-object p1, p0, Lc8/xvf;->mHttpLoader:Lc8/Exf;

    .line 20
    return-object p0

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
