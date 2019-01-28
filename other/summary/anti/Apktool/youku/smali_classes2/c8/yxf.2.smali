.class public Lc8/yxf;
.super Ljava/lang/Object;
.source "StreamResultHandler.java"


# instance fields
.field public final contentLength:I

.field private data:[B

.field private mCancelled:Z

.field private final mConsumer:Lc8/oyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/oyf",
            "<*",
            "Lc8/Jxf;",
            ">;"
        }
    .end annotation
.end field

.field private final mProgressStep:I

.field private mProgressStepCount:I

.field private readLength:I


# direct methods
.method public constructor <init>(Lc8/oyf;II)V
    .locals 0
    .param p2, "content"    # I
    .param p3, "progressStep"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<*",
            "Lc8/Jxf;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<*Lcom/taobao/phenix/request/ImageRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lc8/yxf;->mConsumer:Lc8/oyf;

    .line 24
    iput p2, p0, Lc8/yxf;->contentLength:I

    .line 25
    iput p3, p0, Lc8/yxf;->mProgressStep:I

    .line 26
    return-void
.end method


# virtual methods
.method public getEncodeData()Lc8/bxf;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 77
    new-instance v2, Lc8/bxf;

    invoke-virtual {p0}, Lc8/yxf;->isDataIncomplete()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lc8/yxf;->data:[B

    iget v4, p0, Lc8/yxf;->readLength:I

    invoke-direct {v2, v0, v3, v1, v4}, Lc8/bxf;-><init>(Z[BII)V

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getReadLength()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lc8/yxf;->readLength:I

    return v0
.end method

.method public inLimit(I)Z
    .locals 2
    .param p1, "newRead"    # I

    .prologue
    .line 29
    iget v0, p0, Lc8/yxf;->contentLength:I

    if-lez v0, :cond_0

    iget v0, p0, Lc8/yxf;->readLength:I

    add-int/2addr v0, p1

    iget v1, p0, Lc8/yxf;->contentLength:I

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancellationCalled()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lc8/yxf;->mCancelled:Z

    return v0
.end method

.method public isDataIncomplete()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lc8/yxf;->data:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/yxf;->contentLength:I

    if-lez v0, :cond_1

    iget v0, p0, Lc8/yxf;->readLength:I

    iget v1, p0, Lc8/yxf;->contentLength:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onProgressUpdate(I)Z
    .locals 7
    .param p1, "newRead"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 38
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lc8/yxf;->readLength:I

    add-int/2addr v2, p1

    iput v2, p0, Lc8/yxf;->readLength:I

    .line 39
    iget-object v2, p0, Lc8/yxf;->mConsumer:Lc8/oyf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    move v2, v3

    .line 57
    :goto_0
    monitor-exit p0

    return v2

    .line 43
    :cond_0
    :try_start_1
    iget v2, p0, Lc8/yxf;->contentLength:I

    if-lez v2, :cond_2

    iget v2, p0, Lc8/yxf;->mProgressStep:I

    if-lez v2, :cond_2

    .line 44
    iget v2, p0, Lc8/yxf;->readLength:I

    int-to-float v2, v2

    iget v5, p0, Lc8/yxf;->contentLength:I

    int-to-float v5, v5

    div-float v1, v2, v5

    .line 45
    .local v1, "progress":F
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v1

    iget v5, p0, Lc8/yxf;->mProgressStep:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-int v0, v2

    .line 46
    .local v0, "newStepCount":I
    iget v2, p0, Lc8/yxf;->mProgressStepCount:I

    if-gt v0, v2, :cond_1

    iget v2, p0, Lc8/yxf;->readLength:I

    iget v5, p0, Lc8/yxf;->contentLength:I

    if-ne v2, v5, :cond_2

    .line 47
    :cond_1
    iput v0, p0, Lc8/yxf;->mProgressStepCount:I

    .line 48
    iget-object v2, p0, Lc8/yxf;->mConsumer:Lc8/oyf;

    invoke-interface {v2, v1}, Lc8/oyf;->onProgressUpdate(F)V

    .line 51
    .end local v0    # "newStepCount":I
    .end local v1    # "progress":F
    :cond_2
    iget-object v2, p0, Lc8/yxf;->mConsumer:Lc8/oyf;

    invoke-interface {v2}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Jxf;

    invoke-virtual {v2}, Lc8/Jxf;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    const-string/jumbo v3, "Stream"

    iget-object v2, p0, Lc8/yxf;->mConsumer:Lc8/oyf;

    invoke-interface {v2}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Jxf;

    const-string/jumbo v5, "Request is cancelled while reading stream"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v2, v5, v6}, Lc8/qwf;->i(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v2, p0, Lc8/yxf;->mConsumer:Lc8/oyf;

    invoke-interface {v2}, Lc8/oyf;->onCancellation()V

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/yxf;->mCancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v4

    .line 55
    goto :goto_0

    :cond_3
    move v2, v3

    .line 57
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setupData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 73
    iput-object p1, p0, Lc8/yxf;->data:[B

    .line 74
    return-void
.end method
