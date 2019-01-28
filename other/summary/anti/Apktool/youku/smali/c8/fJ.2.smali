.class public Lc8/fJ;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Lc8/FJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lJ;->registerEvent(Lanet/channel/Session;Lc8/kJ;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/lJ;

.field final synthetic val$session:Lanet/channel/Session;


# direct methods
.method constructor <init>(Lc8/lJ;Lanet/channel/Session;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lc8/fJ;->this$0:Lc8/lJ;

    iput-object p2, p0, Lc8/fJ;->val$session:Lanet/channel/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lanet/channel/Session;Lanet/channel/entity/EventType;Lc8/EJ;)V
    .locals 8
    .param p1, "conn"    # Lanet/channel/Session;
    .param p2, "type"    # Lanet/channel/entity/EventType;
    .param p3, "event"    # Lc8/EJ;

    .prologue
    const/4 v7, 0x1

    .line 429
    const-string/jumbo v1, "awcn.SessionRequest"

    const-string/jumbo v2, "Receive session event"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "type"

    aput-object v6, v4, v5

    aput-object p2, v4, v7

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    new-instance v0, Lc8/JK;

    invoke-direct {v0}, Lc8/JK;-><init>()V

    .line 432
    .local v0, "connEvent":Lc8/JK;
    sget-object v1, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    if-ne p2, v1, :cond_0

    .line 433
    iput-boolean v7, v0, Lc8/JK;->isSuccess:Z

    .line 435
    :cond_0
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v1

    iget-object v2, p0, Lc8/fJ;->val$session:Lanet/channel/Session;

    invoke-virtual {v2}, Lanet/channel/Session;->getRealHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/fJ;->val$session:Lanet/channel/Session;

    invoke-virtual {v3}, Lanet/channel/Session;->getConnStrategy()Lanet/channel/strategy/IConnStrategy;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lc8/MK;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lc8/JK;)V

    .line 436
    return-void
.end method
