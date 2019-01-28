.class public Lc8/tQp;
.super Lc8/vQp;
.source "XStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/xstate/XStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XStateStub"
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/xstate/XStateService;


# direct methods
.method public constructor <init>(Lmtopsdk/xstate/XStateService;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lc8/tQp;->this$0:Lmtopsdk/xstate/XStateService;

    invoke-direct {p0}, Lc8/vQp;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p1}, Lc8/sQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lc8/tQp;->this$0:Lmtopsdk/xstate/XStateService;

    invoke-virtual {v0}, Lmtopsdk/xstate/XStateService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/sQp;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public removeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p1}, Lc8/sQp;->removeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1, p2}, Lc8/sQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public unInit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lc8/sQp;->unInit()V

    .line 76
    return-void
.end method
