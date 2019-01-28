.class public Lc8/rg;
.super Lc8/Xg;
.source "ChangeBoundsIcs.java"

# interfaces
.implements Lc8/sg;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Lc8/Zg;)V
    .locals 1
    .param p1, "transition"    # Lc8/Zg;

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/Xg;-><init>()V

    .line 27
    new-instance v0, Lc8/yg;

    invoke-direct {v0}, Lc8/yg;-><init>()V

    invoke-virtual {p0, p1, v0}, Lc8/rg;->init(Lc8/Zg;Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public setResizeClip(Z)V
    .locals 1
    .param p1, "resizeClip"    # Z

    .prologue
    .line 32
    iget-object v0, p0, Lc8/rg;->mTransition:Lc8/uh;

    check-cast v0, Lc8/yg;

    invoke-virtual {v0, p1}, Lc8/yg;->setResizeClip(Z)V

    .line 33
    return-void
.end method
