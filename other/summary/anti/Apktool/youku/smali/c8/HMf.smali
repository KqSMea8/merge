.class public Lc8/HMf;
.super Lc8/GMf;
.source "RemoteBusiness.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lc8/AOp;Lc8/dOp;Ljava/lang/String;)V
    .locals 0
    .param p1, "mtop"    # Lc8/AOp;
    .param p2, "request"    # Lc8/dOp;
    .param p3, "ttid"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lc8/GMf;-><init>(Lc8/AOp;Lc8/dOp;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method protected constructor <init>(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "mtop"    # Lc8/AOp;
    .param p2, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p3, "ttid"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lc8/GMf;-><init>(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static build(Landroid/content/Context;Lc8/dOp;Ljava/lang/String;)Lc8/HMf;
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "inputData"    # Lc8/dOp;
    .param p2, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    invoke-static {p0, p2}, Lc8/HMf;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    invoke-static {p1, p2}, Lc8/HMf;->build(Lc8/dOp;Ljava/lang/String;)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public static build(Landroid/content/Context;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/HMf;
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p2, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    invoke-static {p0, p2}, Lc8/HMf;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    invoke-static {p1, p2}, Lc8/HMf;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public static build(Lc8/dOp;)Lc8/HMf;
    .locals 1
    .param p0, "inputData"    # Lc8/dOp;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/HMf;->build(Lc8/dOp;Ljava/lang/String;)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public static build(Lc8/dOp;Ljava/lang/String;)Lc8/HMf;
    .locals 2
    .param p0, "inputData"    # Lc8/dOp;
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lc8/HMf;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lc8/AOp;->instance(Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lc8/HMf;-><init>(Lc8/AOp;Lc8/dOp;Ljava/lang/String;)V

    return-object v0
.end method

.method public static build(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/HMf;
    .locals 1
    .param p0, "request"    # Lmtopsdk/mtop/domain/MtopRequest;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/HMf;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public static build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/HMf;
    .locals 2
    .param p0, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lc8/HMf;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lc8/AOp;->instance(Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lc8/HMf;-><init>(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    invoke-static {p0, p1}, Lc8/AOp;->instance(Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lc8/QNp;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Lc8/QNp;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/HMf;->addListener(Lc8/QNp;)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addListener(Lc8/QNp;)Lc8/GMf;
    .locals 1
    .param p1, "x0"    # Lc8/QNp;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/HMf;->addListener(Lc8/QNp;)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Lc8/QNp;)Lc8/HMf;
    .locals 1
    .param p1, "listener"    # Lc8/QNp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    invoke-super {p0, p1}, Lc8/GMf;->addListener(Lc8/QNp;)Lc8/GMf;

    move-result-object v0

    check-cast v0, Lc8/HMf;

    return-object v0
.end method

.method public registeListener(Lc8/CMf;)Lc8/HMf;
    .locals 1
    .param p1, "listener"    # Lc8/CMf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    invoke-super {p0, p1}, Lc8/GMf;->registerListener(Lc8/CMf;)Lc8/GMf;

    move-result-object v0

    check-cast v0, Lc8/HMf;

    return-object v0
.end method

.method public registeListener(Lc8/QNp;)Lc8/HMf;
    .locals 1
    .param p1, "listener"    # Lc8/QNp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    invoke-super {p0, p1}, Lc8/GMf;->registerListener(Lc8/QNp;)Lc8/GMf;

    move-result-object v0

    check-cast v0, Lc8/HMf;

    return-object v0
.end method

.method public bridge synthetic reqContext(Ljava/lang/Object;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/HMf;->reqContext(Ljava/lang/Object;)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reqContext(Ljava/lang/Object;)Lc8/GMf;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/HMf;->reqContext(Ljava/lang/Object;)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public reqContext(Ljava/lang/Object;)Lc8/HMf;
    .locals 1
    .param p1, "requestContext"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1}, Lc8/GMf;->reqContext(Ljava/lang/Object;)Lc8/GMf;

    move-result-object v0

    check-cast v0, Lc8/HMf;

    return-object v0
.end method

.method public bridge synthetic retryTime(I)Lc8/COp;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/HMf;->retryTime(I)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retryTime(I)Lc8/GMf;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/HMf;->retryTime(I)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public retryTime(I)Lc8/HMf;
    .locals 1
    .param p1, "retryTimes"    # I

    .prologue
    .line 105
    invoke-super {p0, p1}, Lc8/GMf;->retryTime(I)Lc8/GMf;

    move-result-object v0

    check-cast v0, Lc8/HMf;

    return-object v0
.end method

.method public bridge synthetic setBizId(I)Lc8/COp;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/HMf;->setBizId(I)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBizId(I)Lc8/GMf;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/HMf;->setBizId(I)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public setBizId(I)Lc8/HMf;
    .locals 1
    .param p1, "bizId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    invoke-super {p0, p1}, Lc8/GMf;->setBizId(I)Lc8/GMf;

    move-result-object v0

    check-cast v0, Lc8/HMf;

    return-object v0
.end method

.method public bridge synthetic setErrorNotifyAfterCache(Z)Lc8/GMf;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/HMf;->setErrorNotifyAfterCache(Z)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public setErrorNotifyAfterCache(Z)Lc8/HMf;
    .locals 1
    .param p1, "bNotify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    invoke-super {p0, p1}, Lc8/GMf;->setErrorNotifyAfterCache(Z)Lc8/GMf;

    move-result-object v0

    check-cast v0, Lc8/HMf;

    return-object v0
.end method

.method public setErrorNotifyNeedAfterCache(Z)V
    .locals 0
    .param p1, "bNeed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    invoke-super {p0, p1}, Lc8/GMf;->setErrorNotifyAfterCache(Z)Lc8/GMf;

    .line 129
    return-void
.end method

.method public bridge synthetic showLoginUI(Z)Lc8/GMf;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lc8/HMf;->showLoginUI(Z)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method public showLoginUI(Z)Lc8/HMf;
    .locals 1
    .param p1, "showUI"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    invoke-super {p0, p1}, Lc8/GMf;->showLoginUI(Z)Lc8/GMf;

    move-result-object v0

    check-cast v0, Lc8/HMf;

    return-object v0
.end method
