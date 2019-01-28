.class public final Lc8/Bko;
.super Lc8/Fko;
.source "Passport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gko;->unbindSNS(Lc8/Mko;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lc8/Mko;


# direct methods
.method constructor <init>(Lc8/Mko;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lc8/Bko;->val$aCallback:Lc8/Mko;

    invoke-direct {p0}, Lc8/Fko;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 2
    .param p1, "aCode"    # I
    .param p2, "aMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 608
    iget-object v1, p0, Lc8/Bko;->val$aCallback:Lc8/Mko;

    if-eqz v1, :cond_0

    .line 609
    new-instance v0, Lc8/Oko;

    invoke-direct {v0}, Lc8/Oko;-><init>()V

    .line 610
    .local v0, "result":Lc8/Oko;
    invoke-virtual {v0, p1}, Lc8/Oko;->setResultCode(I)V

    .line 611
    invoke-virtual {v0, p2}, Lc8/Oko;->setResultMsg(Ljava/lang/String;)V

    .line 612
    if-nez p1, :cond_1

    .line 613
    iget-object v1, p0, Lc8/Bko;->val$aCallback:Lc8/Mko;

    invoke-interface {v1, v0}, Lc8/Mko;->onSuccess(Lc8/Oko;)V

    .line 618
    .end local v0    # "result":Lc8/Oko;
    :cond_0
    :goto_0
    return-void

    .line 615
    .restart local v0    # "result":Lc8/Oko;
    :cond_1
    iget-object v1, p0, Lc8/Bko;->val$aCallback:Lc8/Mko;

    invoke-interface {v1, v0}, Lc8/Mko;->onFailure(Lc8/Oko;)V

    goto :goto_0
.end method
