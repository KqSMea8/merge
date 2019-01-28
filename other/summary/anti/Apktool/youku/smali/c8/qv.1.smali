.class public abstract Lc8/qv;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/pv;,
        Lc8/nv;,
        Lc8/ov;,
        Lc8/mv;
    }
.end annotation


# static fields
.field public static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field public static final FLAG_CHANGED:I = 0x2

.field public static final FLAG_INVALIDATED:I = 0x4

.field public static final FLAG_MOVED:I = 0x800

.field public static final FLAG_REMOVED:I = 0x8


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/nv;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lc8/ov;

.field private mMoveDuration:J

.field private mRemoveDuration:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 11807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11863
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/qv;->mListener:Lc8/ov;

    .line 11864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/qv;->mFinishedListeners:Ljava/util/ArrayList;

    .line 11867
    iput-wide v2, p0, Lc8/qv;->mAddDuration:J

    .line 11868
    iput-wide v2, p0, Lc8/qv;->mRemoveDuration:J

    .line 11869
    iput-wide v4, p0, Lc8/qv;->mMoveDuration:J

    .line 11870
    iput-wide v4, p0, Lc8/qv;->mChangeDuration:J

    .line 12471
    return-void
.end method

.method static buildAdapterChangeFlagsForAnimations(Lc8/Qv;)I
    .locals 5
    .param p0, "viewHolder"    # Lc8/Qv;

    .prologue
    const/4 v4, -0x1

    .line 12192
    invoke-static {p0}, Lc8/Qv;->access$1400(Lc8/Qv;)I

    move-result v3

    and-int/lit8 v0, v3, 0xe

    .line 12193
    .local v0, "flags":I
    invoke-virtual {p0}, Lc8/Qv;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12194
    const/4 v3, 0x4

    .line 12203
    :goto_0
    return v3

    .line 12196
    :cond_0
    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_1

    .line 12197
    invoke-virtual {p0}, Lc8/Qv;->getOldPosition()I

    move-result v1

    .line 12198
    .local v1, "oldPos":I
    invoke-virtual {p0}, Lc8/Qv;->getAdapterPosition()I

    move-result v2

    .line 12199
    .local v2, "pos":I
    if-eq v1, v4, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v1, v2, :cond_1

    .line 12200
    or-int/lit16 v0, v0, 0x800

    .end local v1    # "oldPos":I
    .end local v2    # "pos":I
    :cond_1
    move v3, v0

    .line 12203
    goto :goto_0
.end method


# virtual methods
.method public abstract animateAppearance(Lc8/Qv;Lc8/pv;Lc8/pv;)Z
    .param p1    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lc8/pv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract animateChange(Lc8/Qv;Lc8/Qv;Lc8/pv;Lc8/pv;)Z
    .param p1    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract animateDisappearance(Lc8/Qv;Lc8/pv;Lc8/pv;)Z
    .param p1    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lc8/pv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract animatePersistence(Lc8/Qv;Lc8/pv;Lc8/pv;)Z
    .param p1    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public canReuseUpdatedViewHolder(Lc8/Qv;)Z
    .locals 1
    .param p1, "viewHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12381
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Lc8/Qv;Ljava/util/List;)Z
    .locals 1
    .param p1, "viewHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Qv;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 12411
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lc8/qv;->canReuseUpdatedViewHolder(Lc8/Qv;)Z

    move-result v0

    return v0
.end method

.method public final dispatchAnimationFinished(Lc8/Qv;)V
    .locals 1
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 12276
    invoke-virtual {p0, p1}, Lc8/qv;->onAnimationFinished(Lc8/Qv;)V

    .line 12277
    iget-object v0, p0, Lc8/qv;->mListener:Lc8/ov;

    if-eqz v0, :cond_0

    .line 12278
    iget-object v0, p0, Lc8/qv;->mListener:Lc8/ov;

    invoke-interface {v0, p1}, Lc8/ov;->onAnimationFinished(Lc8/Qv;)V

    .line 12280
    :cond_0
    return-void
.end method

.method public final dispatchAnimationStarted(Lc8/Qv;)V
    .locals 0
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 12317
    invoke-virtual {p0, p1}, Lc8/qv;->onAnimationStarted(Lc8/Qv;)V

    .line 12318
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    .prologue
    .line 12419
    iget-object v2, p0, Lc8/qv;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12420
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12421
    iget-object v2, p0, Lc8/qv;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/nv;

    invoke-interface {v2}, Lc8/nv;->onAnimationsFinished()V

    .line 12420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12423
    :cond_0
    iget-object v2, p0, Lc8/qv;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 12424
    return-void
.end method

.method public abstract endAnimation(Lc8/Qv;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 2

    .prologue
    .line 11896
    iget-wide v0, p0, Lc8/qv;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    .prologue
    .line 11932
    iget-wide v0, p0, Lc8/qv;->mChangeDuration:J

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    .prologue
    .line 11878
    iget-wide v0, p0, Lc8/qv;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .prologue
    .line 11914
    iget-wide v0, p0, Lc8/qv;->mRemoveDuration:J

    return-wide v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Lc8/nv;)Z
    .locals 2
    .param p1, "listener"    # Lc8/nv;

    .prologue
    .line 12348
    invoke-virtual {p0}, Lc8/qv;->isRunning()Z

    move-result v0

    .line 12349
    .local v0, "running":Z
    if-eqz p1, :cond_0

    .line 12350
    if-nez v0, :cond_1

    .line 12351
    invoke-interface {p1}, Lc8/nv;->onAnimationsFinished()V

    .line 12356
    :cond_0
    :goto_0
    return v0

    .line 12353
    :cond_1
    iget-object v1, p0, Lc8/qv;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public obtainHolderInfo()Lc8/pv;
    .locals 1

    .prologue
    .line 12436
    new-instance v0, Lc8/pv;

    invoke-direct {v0}, Lc8/pv;-><init>()V

    return-object v0
.end method

.method public onAnimationFinished(Lc8/Qv;)V
    .locals 0
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 12291
    return-void
.end method

.method public onAnimationStarted(Lc8/Qv;)V
    .locals 0
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 12329
    return-void
.end method

.method public recordPostLayoutInformation(Lc8/Nv;Lc8/Qv;)Lc8/pv;
    .locals 1
    .param p1, "state"    # Lc8/Nv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 12021
    invoke-virtual {p0}, Lc8/qv;->obtainHolderInfo()Lc8/pv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/pv;->setFrom(Lc8/Qv;)Lc8/pv;

    move-result-object v0

    return-object v0
.end method

.method public recordPreLayoutInformation(Lc8/Nv;Lc8/Qv;ILjava/util/List;)Lc8/pv;
    .locals 1
    .param p1, "state"    # Lc8/Nv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "changeFlags"    # I
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nv;",
            "Lc8/Qv;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lc8/pv;"
        }
    .end annotation

    .prologue
    .line 11992
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lc8/qv;->obtainHolderInfo()Lc8/pv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/pv;->setFrom(Lc8/Qv;)Lc8/pv;

    move-result-object v0

    return-object v0
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .locals 1
    .param p1, "addDuration"    # J

    .prologue
    .line 11905
    iput-wide p1, p0, Lc8/qv;->mAddDuration:J

    .line 11906
    return-void
.end method

.method public setChangeDuration(J)V
    .locals 1
    .param p1, "changeDuration"    # J

    .prologue
    .line 11941
    iput-wide p1, p0, Lc8/qv;->mChangeDuration:J

    .line 11942
    return-void
.end method

.method setListener(Lc8/ov;)V
    .locals 0
    .param p1, "listener"    # Lc8/ov;

    .prologue
    .line 11953
    iput-object p1, p0, Lc8/qv;->mListener:Lc8/ov;

    .line 11954
    return-void
.end method

.method public setMoveDuration(J)V
    .locals 1
    .param p1, "moveDuration"    # J

    .prologue
    .line 11887
    iput-wide p1, p0, Lc8/qv;->mMoveDuration:J

    .line 11888
    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 1
    .param p1, "removeDuration"    # J

    .prologue
    .line 11923
    iput-wide p1, p0, Lc8/qv;->mRemoveDuration:J

    .line 11924
    return-void
.end method
