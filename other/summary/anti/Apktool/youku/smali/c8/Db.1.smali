.class public Lc8/Db;
.super Lc8/Cb;
.source "BottomNavigationAnimationHelperIcs.java"


# static fields
.field private static final ACTIVE_ANIMATION_DURATION_MS:J = 0x73L


# instance fields
.field private final mSet:Lc8/vh;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Lc8/Cb;-><init>()V

    .line 31
    new-instance v1, Lc8/ng;

    invoke-direct {v1}, Lc8/ng;-><init>()V

    iput-object v1, p0, Lc8/Db;->mSet:Lc8/vh;

    .line 32
    iget-object v1, p0, Lc8/Db;->mSet:Lc8/vh;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/vh;->setOrdering(I)Lc8/vh;

    .line 33
    iget-object v1, p0, Lc8/Db;->mSet:Lc8/vh;

    const-wide/16 v2, 0x73

    invoke-virtual {v1, v2, v3}, Lc8/vh;->setDuration(J)Lc8/Tg;

    .line 34
    iget-object v1, p0, Lc8/Db;->mSet:Lc8/vh;

    new-instance v2, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lc8/vh;->setInterpolator(Landroid/animation/TimeInterpolator;)Lc8/Tg;

    .line 35
    new-instance v0, Lc8/hc;

    invoke-direct {v0}, Lc8/hc;-><init>()V

    .line 36
    .local v0, "textScale":Lc8/hc;
    iget-object v1, p0, Lc8/Db;->mSet:Lc8/vh;

    invoke-virtual {v1, v0}, Lc8/vh;->addTransition(Lc8/Tg;)Lc8/vh;

    .line 37
    return-void
.end method


# virtual methods
.method beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/Db;->mSet:Lc8/vh;

    invoke-static {p1, v0}, Lc8/eh;->beginDelayedTransition(Landroid/view/ViewGroup;Lc8/Tg;)V

    .line 41
    return-void
.end method
