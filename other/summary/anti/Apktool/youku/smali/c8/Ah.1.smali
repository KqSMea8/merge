.class public Lc8/Ah;
.super Lc8/th;
.source "TransitionSetPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Lc8/Bh;


# direct methods
.method constructor <init>(Lc8/Bh;)V
    .locals 0
    .param p1, "transitionSet"    # Lc8/Bh;

    .prologue
    .line 322
    invoke-direct {p0}, Lc8/th;-><init>()V

    .line 323
    iput-object p1, p0, Lc8/Ah;->mTransitionSet:Lc8/Bh;

    .line 324
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lc8/uh;)V
    .locals 2
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 336
    iget-object v0, p0, Lc8/Ah;->mTransitionSet:Lc8/Bh;

    iget v1, v0, Lc8/Bh;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lc8/Bh;->mCurrentListeners:I

    .line 337
    iget-object v0, p0, Lc8/Ah;->mTransitionSet:Lc8/Bh;

    iget v0, v0, Lc8/Bh;->mCurrentListeners:I

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lc8/Ah;->mTransitionSet:Lc8/Bh;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/Bh;->mStarted:Z

    .line 340
    iget-object v0, p0, Lc8/Ah;->mTransitionSet:Lc8/Bh;

    invoke-virtual {v0}, Lc8/Bh;->end()V

    .line 342
    :cond_0
    invoke-virtual {p1, p0}, Lc8/uh;->removeListener(Lc8/sh;)Lc8/uh;

    .line 343
    return-void
.end method

.method public onTransitionStart(Lc8/uh;)V
    .locals 2
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 328
    iget-object v0, p0, Lc8/Ah;->mTransitionSet:Lc8/Bh;

    iget-boolean v0, v0, Lc8/Bh;->mStarted:Z

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lc8/Ah;->mTransitionSet:Lc8/Bh;

    invoke-virtual {v0}, Lc8/Bh;->start()V

    .line 330
    iget-object v0, p0, Lc8/Ah;->mTransitionSet:Lc8/Bh;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Bh;->mStarted:Z

    .line 332
    :cond_0
    return-void
.end method
