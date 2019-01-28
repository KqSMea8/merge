.class public interface abstract Lc8/pPg;
.super Ljava/lang/Object;
.source "AntiTheftChain.java"


# virtual methods
.method public abstract getCkey(Lc8/rPg;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youku/antitheftchain/exception/AntiTheftChainException;
        }
    .end annotation
.end method

.method public abstract initSecurityGuard(Landroid/content/Context;Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youku/antitheftchain/exception/AntiTheftChainException;
        }
    .end annotation
.end method

.method public abstract initSecurityGuard(Landroid/content/Context;Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youku/antitheftchain/exception/AntiTheftChainException;
        }
    .end annotation
.end method
