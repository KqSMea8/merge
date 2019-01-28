.class public Lc8/tg;
.super Lc8/dh;
.source "ChangeBoundsKitKat.java"

# interfaces
.implements Lc8/sg;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Lc8/N;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>(Lc8/Zg;)V
    .locals 1
    .param p1, "transition"    # Lc8/Zg;

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/dh;-><init>()V

    .line 27
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {p0, p1, v0}, Lc8/tg;->init(Lc8/Zg;Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public setResizeClip(Z)V
    .locals 1
    .param p1, "resizeClip"    # Z

    .prologue
    .line 32
    iget-object v0, p0, Lc8/tg;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/ChangeBounds;

    invoke-virtual {v0, p1}, Landroid/transition/ChangeBounds;->setResizeClip(Z)V

    .line 33
    return-void
.end method
