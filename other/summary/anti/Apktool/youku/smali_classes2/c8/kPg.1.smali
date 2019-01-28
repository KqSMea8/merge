.class public Lc8/kPg;
.super Lc8/jPg;
.source "AntiTheftChainDefault.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lc8/jPg;-><init>()V

    return-void
.end method


# virtual methods
.method public getCkey(Lc8/rPg;)Ljava/lang/String;
    .locals 1
    .param p1, "antiTheftChainParam"    # Lc8/rPg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youku/antitheftchain/exception/AntiTheftChainException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lc8/kPg;->encryptAbility:Lc8/mPg;

    invoke-interface {v0, p1}, Lc8/mPg;->encrypt(Lc8/rPg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initSecurityGuard(Landroid/content/Context;Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "antiTheftChainClientType"    # Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youku/antitheftchain/exception/AntiTheftChainException;
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lc8/kPg;->encryptAbility:Lc8/mPg;

    const-string/jumbo v1, "mwua"

    invoke-interface {v0, p1, p2, v1}, Lc8/mPg;->initSecurityGuard(Landroid/content/Context;Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public initSecurityGuard(Landroid/content/Context;Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "antiTheftChainClientType"    # Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;
    .param p3, "authCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youku/antitheftchain/exception/AntiTheftChainException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lc8/kPg;->encryptAbility:Lc8/mPg;

    invoke-interface {v0, p1, p2, p3}, Lc8/mPg;->initSecurityGuard(Landroid/content/Context;Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;Ljava/lang/String;)V

    .line 24
    return-void
.end method
