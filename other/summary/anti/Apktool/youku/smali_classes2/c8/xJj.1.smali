.class public Lc8/xJj;
.super Lc8/rJj;
.source "MTopCall.java"


# instance fields
.field private apiID:Lc8/ENp;

.field private mtopBuilder:Lc8/COp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lc8/rJj;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncCall(Lc8/OIj;)V
    .locals 3
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/xJj;->mtopBuilder:Lc8/COp;

    new-instance v1, Lc8/zJj;

    iget-object v2, p0, Lc8/xJj;->converter:Lc8/TJj;

    invoke-direct {v1, p1, v2}, Lc8/zJj;-><init>(Lc8/OIj;Lc8/TJj;)V

    invoke-virtual {v0, v1}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    .line 38
    iget-object v0, p0, Lc8/xJj;->mtopBuilder:Lc8/COp;

    invoke-virtual {v0}, Lc8/COp;->asyncRequest()Lc8/ENp;

    move-result-object v0

    iput-object v0, p0, Lc8/xJj;->apiID:Lc8/ENp;

    .line 39
    return-void
.end method

.method public asyncUICall(Lc8/OIj;)V
    .locals 4
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 43
    iget-object v0, p0, Lc8/xJj;->mtopBuilder:Lc8/COp;

    new-instance v1, Lc8/zJj;

    sget-object v2, Lc8/xJj;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lc8/xJj;->converter:Lc8/TJj;

    invoke-direct {v1, p1, v2, v3}, Lc8/zJj;-><init>(Lc8/OIj;Landroid/os/Handler;Lc8/TJj;)V

    invoke-virtual {v0, v1}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    .line 44
    iget-object v0, p0, Lc8/xJj;->mtopBuilder:Lc8/COp;

    invoke-virtual {v0}, Lc8/COp;->asyncRequest()Lc8/ENp;

    move-result-object v0

    iput-object v0, p0, Lc8/xJj;->apiID:Lc8/ENp;

    .line 45
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lc8/xJj;->apiID:Lc8/ENp;

    invoke-virtual {v0}, Lc8/ENp;->cancelApiCall()Z

    .line 50
    return-void
.end method

.method protected construct(Lc8/dJj;)V
    .locals 1
    .param p1, "ykRequest"    # Lc8/dJj;

    .prologue
    .line 25
    iput-object p1, p0, Lc8/xJj;->ykRequest:Lc8/dJj;

    .line 26
    new-instance v0, Lc8/UJj;

    invoke-direct {v0}, Lc8/UJj;-><init>()V

    iput-object v0, p0, Lc8/xJj;->converter:Lc8/TJj;

    .line 27
    iget-object v0, p0, Lc8/xJj;->converter:Lc8/TJj;

    check-cast v0, Lc8/UJj;

    invoke-virtual {v0, p1}, Lc8/UJj;->requestConvert(Lc8/dJj;)Lc8/COp;

    move-result-object v0

    iput-object v0, p0, Lc8/xJj;->mtopBuilder:Lc8/COp;

    .line 28
    return-void
.end method

.method public syncCall()Lc8/eJj;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lc8/xJj;->converter:Lc8/TJj;

    iget-object v1, p0, Lc8/xJj;->mtopBuilder:Lc8/COp;

    invoke-virtual {v1}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/TJj;->responseConvert(Ljava/lang/Object;)Lc8/eJj;

    move-result-object v0

    return-object v0
.end method
