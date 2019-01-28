.class public Lc8/eh;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# static fields
.field private static sImpl:Lc8/mh;


# instance fields
.field private mImpl:Lc8/gh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 43
    new-instance v0, Lc8/lh;

    invoke-direct {v0}, Lc8/lh;-><init>()V

    sput-object v0, Lc8/eh;->sImpl:Lc8/mh;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Lc8/nh;

    invoke-direct {v0}, Lc8/nh;-><init>()V

    sput-object v0, Lc8/eh;->sImpl:Lc8/mh;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 53
    new-instance v0, Lc8/fh;

    invoke-direct {v0}, Lc8/fh;-><init>()V

    iput-object v0, p0, Lc8/eh;->mImpl:Lc8/gh;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lc8/hh;

    invoke-direct {v0}, Lc8/hh;-><init>()V

    iput-object v0, p0, Lc8/eh;->mImpl:Lc8/gh;

    goto :goto_0
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    sget-object v0, Lc8/eh;->sImpl:Lc8/mh;

    invoke-virtual {v0, p0}, Lc8/mh;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 98
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Lc8/Tg;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "transition"    # Lc8/Tg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    sget-object v1, Lc8/eh;->sImpl:Lc8/mh;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p0, v0}, Lc8/mh;->beginDelayedTransition(Landroid/view/ViewGroup;Lc8/Yg;)V

    .line 126
    return-void

    .line 125
    :cond_0
    iget-object v0, p1, Lc8/Tg;->mImpl:Lc8/Yg;

    goto :goto_0
.end method

.method public static go(Lc8/Hg;)V
    .locals 2
    .param p0, "scene"    # Lc8/Hg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    sget-object v0, Lc8/eh;->sImpl:Lc8/mh;

    iget-object v1, p0, Lc8/Hg;->mImpl:Lc8/Kg;

    invoke-virtual {v0, v1}, Lc8/mh;->go(Lc8/Kg;)V

    .line 67
    return-void
.end method

.method public static go(Lc8/Hg;Lc8/Tg;)V
    .locals 3
    .param p0, "scene"    # Lc8/Hg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "transition"    # Lc8/Tg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    sget-object v1, Lc8/eh;->sImpl:Lc8/mh;

    iget-object v2, p0, Lc8/Hg;->mImpl:Lc8/Kg;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lc8/mh;->go(Lc8/Kg;Lc8/Yg;)V

    .line 85
    return-void

    .line 84
    :cond_0
    iget-object v0, p1, Lc8/Tg;->mImpl:Lc8/Yg;

    goto :goto_0
.end method


# virtual methods
.method public setTransition(Lc8/Hg;Lc8/Hg;Lc8/Tg;)V
    .locals 4
    .param p1, "fromScene"    # Lc8/Hg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "toScene"    # Lc8/Hg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "transition"    # Lc8/Tg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 155
    iget-object v1, p0, Lc8/eh;->mImpl:Lc8/gh;

    iget-object v2, p1, Lc8/Hg;->mImpl:Lc8/Kg;

    iget-object v3, p2, Lc8/Hg;->mImpl:Lc8/Kg;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lc8/gh;->setTransition(Lc8/Kg;Lc8/Kg;Lc8/Yg;)V

    .line 157
    return-void

    .line 155
    :cond_0
    iget-object v0, p3, Lc8/Tg;->mImpl:Lc8/Yg;

    goto :goto_0
.end method

.method public setTransition(Lc8/Hg;Lc8/Tg;)V
    .locals 3
    .param p1, "scene"    # Lc8/Hg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "transition"    # Lc8/Tg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 138
    iget-object v1, p0, Lc8/eh;->mImpl:Lc8/gh;

    iget-object v2, p1, Lc8/Hg;->mImpl:Lc8/Kg;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lc8/gh;->setTransition(Lc8/Kg;Lc8/Yg;)V

    .line 139
    return-void

    .line 138
    :cond_0
    iget-object v0, p2, Lc8/Tg;->mImpl:Lc8/Yg;

    goto :goto_0
.end method

.method public transitionTo(Lc8/Hg;)V
    .locals 2
    .param p1, "scene"    # Lc8/Hg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    iget-object v0, p0, Lc8/eh;->mImpl:Lc8/gh;

    iget-object v1, p1, Lc8/Hg;->mImpl:Lc8/Kg;

    invoke-virtual {v0, v1}, Lc8/gh;->transitionTo(Lc8/Kg;)V

    .line 169
    return-void
.end method
