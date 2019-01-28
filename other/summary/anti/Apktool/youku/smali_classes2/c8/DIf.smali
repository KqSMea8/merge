.class public Lc8/DIf;
.super Ljava/lang/Object;
.source "MsgRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/BIf;,
        Lc8/CIf;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsgRouter"

.field private static instance:Lc8/DIf;


# instance fields
.field private callbackManager:Lc8/vIf;

.field private controlStream:Lc8/VJf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/VJf",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation
.end field

.field private mDownStream:Lc8/VJf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/VJf",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseStrategy:Lc8/BIf;

.field private mSendStrategy:Lc8/CIf;

.field private mUpStream:Lc8/VJf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/VJf",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation
.end field

.field private monitorManager:Lc8/VIf;

.field private networkManager:Lc8/xJf;

.field private responseManager:Lc8/GIf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lc8/DIf;

    invoke-direct {v0}, Lc8/DIf;-><init>()V

    sput-object v0, Lc8/DIf;->instance:Lc8/DIf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lc8/VJf;

    invoke-direct {v0}, Lc8/VJf;-><init>()V

    iput-object v0, p0, Lc8/DIf;->mUpStream:Lc8/VJf;

    .line 30
    new-instance v0, Lc8/VJf;

    invoke-direct {v0}, Lc8/VJf;-><init>()V

    iput-object v0, p0, Lc8/DIf;->mDownStream:Lc8/VJf;

    .line 31
    new-instance v0, Lc8/VJf;

    invoke-direct {v0}, Lc8/VJf;-><init>()V

    iput-object v0, p0, Lc8/DIf;->controlStream:Lc8/VJf;

    .line 33
    new-instance v0, Lc8/GIf;

    invoke-direct {v0}, Lc8/GIf;-><init>()V

    iput-object v0, p0, Lc8/DIf;->responseManager:Lc8/GIf;

    .line 34
    new-instance v0, Lc8/vIf;

    invoke-direct {v0}, Lc8/vIf;-><init>()V

    iput-object v0, p0, Lc8/DIf;->callbackManager:Lc8/vIf;

    .line 35
    new-instance v0, Lc8/VIf;

    invoke-direct {v0}, Lc8/VIf;-><init>()V

    iput-object v0, p0, Lc8/DIf;->monitorManager:Lc8/VIf;

    .line 36
    new-instance v0, Lc8/xJf;

    invoke-direct {v0}, Lc8/xJf;-><init>()V

    iput-object v0, p0, Lc8/DIf;->networkManager:Lc8/xJf;

    .line 124
    new-instance v0, Lc8/zIf;

    invoke-direct {v0, p0}, Lc8/zIf;-><init>(Lc8/DIf;)V

    iput-object v0, p0, Lc8/DIf;->mSendStrategy:Lc8/CIf;

    .line 131
    new-instance v0, Lc8/AIf;

    invoke-direct {v0, p0}, Lc8/AIf;-><init>(Lc8/DIf;)V

    iput-object v0, p0, Lc8/DIf;->mResponseStrategy:Lc8/BIf;

    .line 142
    return-void
.end method

.method public static getInstance()Lc8/DIf;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lc8/DIf;->instance:Lc8/DIf;

    return-object v0
.end method


# virtual methods
.method public getCallbackManager()Lc8/vIf;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc8/DIf;->callbackManager:Lc8/vIf;

    return-object v0
.end method

.method public getControlStream()Lc8/VJf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/VJf",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lc8/DIf;->controlStream:Lc8/VJf;

    return-object v0
.end method

.method public getDownStream()Lc8/VJf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/VJf",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lc8/DIf;->mDownStream:Lc8/VJf;

    return-object v0
.end method

.method public getMonitorManager()Lc8/VIf;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc8/DIf;->monitorManager:Lc8/VIf;

    return-object v0
.end method

.method public getNetworkManager()Lc8/xJf;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lc8/DIf;->networkManager:Lc8/xJf;

    return-object v0
.end method

.method public getResponseManager()Lc8/GIf;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lc8/DIf;->responseManager:Lc8/GIf;

    return-object v0
.end method

.method public getUpStream()Lc8/VJf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/VJf",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lc8/DIf;->mUpStream:Lc8/VJf;

    return-object v0
.end method

.method public onInitialized()V
    .locals 4

    .prologue
    .line 87
    const-string/jumbo v0, "MsgRouter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onInitialized >>>"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lc8/DIf;->mSendStrategy:Lc8/CIf;

    iget-object v1, p0, Lc8/DIf;->mUpStream:Lc8/VJf;

    invoke-virtual {v1}, Lc8/VJf;->getObservable()Lc8/Vlq;

    move-result-object v1

    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Vlq;->subscribeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/CIf;->onSend(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lc8/DIf;->getNetworkManager()Lc8/xJf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribe(Lc8/inq;)Lc8/Pmq;

    .line 93
    iget-object v0, p0, Lc8/DIf;->mResponseStrategy:Lc8/BIf;

    iget-object v1, p0, Lc8/DIf;->controlStream:Lc8/VJf;

    .line 94
    invoke-virtual {v1}, Lc8/VJf;->getObservable()Lc8/Vlq;

    move-result-object v1

    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Vlq;->subscribeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v1

    new-instance v2, Lc8/yIf;

    invoke-direct {v2, p0}, Lc8/yIf;-><init>(Lc8/DIf;)V

    .line 95
    invoke-virtual {v1, v2}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v1

    .line 94
    invoke-interface {v0, v1}, Lc8/BIf;->onResponse(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lc8/DIf;->getCallbackManager()Lc8/vIf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribe(Lc8/inq;)Lc8/Pmq;

    .line 104
    const-string/jumbo v0, "MKT"

    const-string/jumbo v1, "MKT_MSG_DURATION"

    new-instance v2, Lcom/taobao/tao/messagekit/base/MsgRouter$2;

    invoke-direct {v2, p0}, Lcom/taobao/tao/messagekit/base/MsgRouter$2;-><init>(Lc8/DIf;)V

    new-instance v3, Lcom/taobao/tao/messagekit/base/MsgRouter$3;

    invoke-direct {v3, p0}, Lcom/taobao/tao/messagekit/base/MsgRouter$3;-><init>(Lc8/DIf;)V

    invoke-static {v0, v1, v2, v3}, Lc8/dKf;->register(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 118
    invoke-static {}, Lc8/cJf;->getReportProcessor()Lc8/cJf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cJf;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 120
    invoke-static {}, Lc8/cJf;->getReportProcessor()Lc8/cJf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cJf;->start()V

    .line 122
    :cond_0
    return-void
.end method

.method public setResponseStrategy(Lc8/BIf;)V
    .locals 0
    .param p1, "strategy"    # Lc8/BIf;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lc8/DIf;->mResponseStrategy:Lc8/BIf;

    goto :goto_0
.end method

.method public setSendStrategy(Lc8/CIf;)V
    .locals 0
    .param p1, "strategy"    # Lc8/CIf;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iput-object p1, p0, Lc8/DIf;->mSendStrategy:Lc8/CIf;

    goto :goto_0
.end method
