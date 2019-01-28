.class public final Lc8/pko;
.super Lc8/Fko;
.source "Passport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gko;->bindMobile(Lc8/Mko;)V
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
    .line 896
    iput-object p1, p0, Lc8/pko;->val$aCallback:Lc8/Mko;

    invoke-direct {p0}, Lc8/Fko;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 3
    .param p1, "aCode"    # I
    .param p2, "aMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 900
    :try_start_0
    iget-object v2, p0, Lc8/pko;->val$aCallback:Lc8/Mko;

    if-eqz v2, :cond_0

    .line 901
    new-instance v1, Lc8/Nko;

    invoke-direct {v1}, Lc8/Nko;-><init>()V

    .line 902
    .local v1, "result":Lc8/Nko;
    invoke-virtual {v1, p1}, Lc8/Nko;->setResultCode(I)V

    .line 903
    invoke-virtual {v1, p2}, Lc8/Nko;->setResultMsg(Ljava/lang/String;)V

    .line 904
    if-nez p1, :cond_1

    .line 905
    iget-object v2, p0, Lc8/pko;->val$aCallback:Lc8/Mko;

    invoke-interface {v2, v1}, Lc8/Mko;->onSuccess(Lc8/Oko;)V

    .line 913
    .end local v1    # "result":Lc8/Nko;
    :cond_0
    :goto_0
    return-void

    .line 907
    .restart local v1    # "result":Lc8/Nko;
    :cond_1
    iget-object v2, p0, Lc8/pko;->val$aCallback:Lc8/Mko;

    invoke-interface {v2, v1}, Lc8/Mko;->onFailure(Lc8/Oko;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 910
    .end local v1    # "result":Lc8/Nko;
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "initWithCallback onResult"

    invoke-static {v0, v2}, Lc8/Gko;->access$400(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
