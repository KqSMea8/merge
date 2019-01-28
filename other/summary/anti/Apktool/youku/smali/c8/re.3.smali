.class public final Lc8/re;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qe;
    }
.end annotation


# instance fields
.field private final mAnimationListener:Lc8/Xe;

.field private mLastMatch:Lc8/qe;

.field mRunningAnimator:Lc8/ef;

.field private final mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/qe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/re;->mTuples:Ljava/util/ArrayList;

    .line 27
    iput-object v1, p0, Lc8/re;->mLastMatch:Lc8/qe;

    .line 28
    iput-object v1, p0, Lc8/re;->mRunningAnimator:Lc8/ef;

    .line 30
    new-instance v0, Lc8/pe;

    invoke-direct {v0, p0}, Lc8/pe;-><init>(Lc8/re;)V

    iput-object v0, p0, Lc8/re;->mAnimationListener:Lc8/Xe;

    .line 104
    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lc8/re;->mRunningAnimator:Lc8/ef;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lc8/re;->mRunningAnimator:Lc8/ef;

    invoke-virtual {v0}, Lc8/ef;->cancel()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/re;->mRunningAnimator:Lc8/ef;

    .line 90
    :cond_0
    return-void
.end method

.method private start(Lc8/qe;)V
    .locals 1
    .param p1, "match"    # Lc8/qe;

    .prologue
    .line 81
    iget-object v0, p1, Lc8/qe;->mAnimator:Lc8/ef;

    iput-object v0, p0, Lc8/re;->mRunningAnimator:Lc8/ef;

    .line 82
    iget-object v0, p0, Lc8/re;->mRunningAnimator:Lc8/ef;

    invoke-virtual {v0}, Lc8/ef;->start()V

    .line 83
    return-void
.end method


# virtual methods
.method public addState([ILc8/ef;)V
    .locals 2
    .param p1, "specs"    # [I
    .param p2, "animator"    # Lc8/ef;

    .prologue
    .line 48
    new-instance v0, Lc8/qe;

    invoke-direct {v0, p1, p2}, Lc8/qe;-><init>([ILc8/ef;)V

    .line 49
    .local v0, "tuple":Lc8/qe;
    iget-object v1, p0, Lc8/re;->mAnimationListener:Lc8/Xe;

    invoke-virtual {p2, v1}, Lc8/ef;->addListener(Lc8/Xe;)V

    .line 50
    iget-object v1, p0, Lc8/re;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lc8/re;->mRunningAnimator:Lc8/ef;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lc8/re;->mRunningAnimator:Lc8/ef;

    invoke-virtual {v0}, Lc8/ef;->end()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/re;->mRunningAnimator:Lc8/ef;

    .line 102
    :cond_0
    return-void
.end method

.method setState([I)V
    .locals 5
    .param p1, "state"    # [I

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "match":Lc8/qe;
    iget-object v4, p0, Lc8/re;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 60
    iget-object v4, p0, Lc8/re;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/qe;

    .line 61
    .local v3, "tuple":Lc8/qe;
    iget-object v4, v3, Lc8/qe;->mSpecs:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    move-object v2, v3

    .line 66
    .end local v3    # "tuple":Lc8/qe;
    :cond_0
    iget-object v4, p0, Lc8/re;->mLastMatch:Lc8/qe;

    if-ne v2, v4, :cond_3

    .line 78
    :cond_1
    :goto_1
    return-void

    .line 59
    .restart local v3    # "tuple":Lc8/qe;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "tuple":Lc8/qe;
    :cond_3
    iget-object v4, p0, Lc8/re;->mLastMatch:Lc8/qe;

    if-eqz v4, :cond_4

    .line 70
    invoke-direct {p0}, Lc8/re;->cancel()V

    .line 73
    :cond_4
    iput-object v2, p0, Lc8/re;->mLastMatch:Lc8/qe;

    .line 75
    if-eqz v2, :cond_1

    .line 76
    invoke-direct {p0, v2}, Lc8/re;->start(Lc8/qe;)V

    goto :goto_1
.end method
