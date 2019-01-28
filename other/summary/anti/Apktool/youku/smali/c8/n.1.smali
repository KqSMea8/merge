.class public Lc8/n;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/l;,
        Lc8/m;,
        Lc8/k;
    }
.end annotation


# static fields
.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lc8/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/k;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFrameTime:J

.field private final mDelayedCallbackStartTime:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Lc8/k;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mListDirty:Z

.field private mProvider:Lc8/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lc8/n;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lc8/n;->mDelayedCallbackStartTime:Landroid/support/v4/util/SimpleArrayMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/n;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/n;->mCurrentFrameTime:J

    .line 61
    new-instance v0, Lc8/j;

    invoke-direct {v0, p0}, Lc8/j;-><init>(Lc8/n;)V

    iput-object v0, p0, Lc8/n;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/n;->mListDirty:Z

    .line 199
    return-void
.end method

.method static synthetic access$000(Lc8/n;)J
    .locals 2
    .param p0, "x0"    # Lc8/n;

    .prologue
    .line 37
    iget-wide v0, p0, Lc8/n;->mCurrentFrameTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lc8/n;J)J
    .locals 1
    .param p0, "x0"    # Lc8/n;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lc8/n;->mCurrentFrameTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lc8/n;J)V
    .locals 1
    .param p0, "x0"    # Lc8/n;
    .param p1, "x1"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lc8/n;->doAnimationFrame(J)V

    return-void
.end method

.method static synthetic access$200(Lc8/n;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/n;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/n;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lc8/n;)Lc8/l;
    .locals 1
    .param p0, "x0"    # Lc8/n;

    .prologue
    .line 37
    invoke-direct {p0}, Lc8/n;->getProvider()Lc8/l;

    move-result-object v0

    return-object v0
.end method

.method private cleanUpList()V
    .locals 2

    .prologue
    .line 168
    iget-boolean v1, p0, Lc8/n;->mListDirty:Z

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lc8/n;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 170
    iget-object v1, p0, Lc8/n;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lc8/n;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 169
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/n;->mListDirty:Z

    .line 176
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private doAnimationFrame(J)V
    .locals 5
    .param p1, "frameTime"    # J

    .prologue
    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 137
    .local v2, "currentTime":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lc8/n;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 138
    iget-object v4, p0, Lc8/n;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/k;

    .line 139
    .local v0, "callback":Lc8/k;
    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0, v0, v2, v3}, Lc8/n;->isCallbackDue(Lc8/k;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    invoke-interface {v0, p1, p2}, Lc8/k;->doAnimationFrame(J)Z

    .line 137
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "callback":Lc8/k;
    :cond_1
    invoke-direct {p0}, Lc8/n;->cleanUpList()V

    .line 147
    return-void
.end method

.method public static getFrameTime()J
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lc8/n;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    const-wide/16 v0, 0x0

    .line 85
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lc8/n;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/n;

    iget-wide v0, v0, Lc8/n;->mCurrentFrameTime:J

    goto :goto_0
.end method

.method public static getInstance()Lc8/n;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lc8/n;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lc8/n;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    new-instance v1, Lc8/n;

    invoke-direct {v1}, Lc8/n;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 78
    :cond_0
    sget-object v0, Lc8/n;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/n;

    return-object v0
.end method

.method private getProvider()Lc8/l;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lc8/n;->mProvider:Lc8/l;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lc8/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/m;-><init>(Lc8/n;Lc8/j;)V

    iput-object v0, p0, Lc8/n;->mProvider:Lc8/l;

    .line 104
    :cond_0
    iget-object v0, p0, Lc8/n;->mProvider:Lc8/l;

    return-object v0
.end method

.method private isCallbackDue(Lc8/k;J)Z
    .locals 4
    .param p1, "callback"    # Lc8/k;
    .param p2, "currentTime"    # J

    .prologue
    const/4 v1, 0x1

    .line 156
    iget-object v2, p0, Lc8/n;->mDelayedCallbackStartTime:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 157
    .local v0, "startTime":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 164
    :goto_0
    return v1

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gez v2, :cond_1

    .line 161
    iget-object v2, p0, Lc8/n;->mDelayedCallbackStartTime:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAnimationFrameCallback(Lc8/k;J)V
    .locals 4
    .param p1, "callback"    # Lc8/k;
    .param p2, "delay"    # J

    .prologue
    .line 111
    iget-object v0, p0, Lc8/n;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lc8/n;->getProvider()Lc8/l;

    move-result-object v0

    iget-object v1, p0, Lc8/n;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v0, v1}, Lc8/l;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lc8/n;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lc8/n;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 119
    iget-object v0, p0, Lc8/n;->mDelayedCallbackStartTime:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_2
    return-void
.end method

.method public removeCallback(Lc8/k;)V
    .locals 3
    .param p1, "callback"    # Lc8/k;

    .prologue
    .line 127
    iget-object v1, p0, Lc8/n;->mDelayedCallbackStartTime:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lc8/n;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 129
    .local v0, "id":I
    if-ltz v0, :cond_0

    .line 130
    iget-object v1, p0, Lc8/n;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/n;->mListDirty:Z

    .line 133
    :cond_0
    return-void
.end method

.method public setProvider(Lc8/l;)V
    .locals 2
    .param p1, "provider"    # Lc8/l;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Lc8/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/m;-><init>(Lc8/n;Lc8/j;)V

    iput-object v0, p0, Lc8/n;->mProvider:Lc8/l;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iput-object p1, p0, Lc8/n;->mProvider:Lc8/l;

    goto :goto_0
.end method
