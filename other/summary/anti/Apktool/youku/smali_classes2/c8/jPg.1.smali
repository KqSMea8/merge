.class public abstract Lc8/jPg;
.super Ljava/lang/Object;
.source "AntiTheftChainBase.java"

# interfaces
.implements Lc8/pPg;


# instance fields
.field protected encryptAbility:Lc8/mPg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lc8/nPg;

    invoke-direct {v0}, Lc8/nPg;-><init>()V

    iput-object v0, p0, Lc8/jPg;->encryptAbility:Lc8/mPg;

    return-void
.end method
