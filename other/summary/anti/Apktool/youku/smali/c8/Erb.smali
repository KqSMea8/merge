.class public abstract Lc8/Erb;
.super Ljava/lang/Object;
.source "AnimationFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Drb;,
        Lc8/Crb;,
        Lc8/Brb;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method static newInstance()Lc8/Erb;
    .locals 3

    .prologue
    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 22
    new-instance v0, Lc8/Crb;

    invoke-direct {v0}, Lc8/Crb;-><init>()V

    .line 26
    .local v0, "frame":Lc8/Erb;
    :goto_0
    return-object v0

    .line 24
    .end local v0    # "frame":Lc8/Erb;
    :cond_0
    new-instance v0, Lc8/Drb;

    invoke-direct {v0}, Lc8/Drb;-><init>()V

    .restart local v0    # "frame":Lc8/Erb;
    goto :goto_0
.end method


# virtual methods
.method abstract clear()V
.end method

.method abstract requestAnimationFrame(Lc8/Brb;)V
    .param p1    # Lc8/Brb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method abstract terminate()V
.end method
