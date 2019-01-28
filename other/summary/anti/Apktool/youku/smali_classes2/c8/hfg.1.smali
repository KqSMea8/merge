.class public Lc8/hfg;
.super Lc8/Qv;
.source "ListBaseViewHolder.java"


# instance fields
.field private isRecycled:Z

.field private mComponent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/tbg;",
            ">;"
        }
    .end annotation
.end field

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lc8/Qv;-><init>(Landroid/view/View;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hfg;->isRecycled:Z

    .line 48
    iput p2, p0, Lc8/hfg;->mViewType:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lc8/tbg;I)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;
    .param p2, "viewType"    # I

    .prologue
    .line 41
    invoke-virtual {p1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Qv;-><init>(Landroid/view/View;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hfg;->isRecycled:Z

    .line 42
    iput p2, p0, Lc8/hfg;->mViewType:I

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    .line 44
    return-void
.end method


# virtual methods
.method public bindData(Lc8/tbg;)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 64
    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    invoke-virtual {v0, p1}, Lc8/tbg;->bindData(Lc8/tbg;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/hfg;->isRecycled:Z

    .line 68
    :cond_0
    return-void
.end method

.method public canRecycled()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->canRecycled()Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getComponent()Lc8/tbg;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lc8/hfg;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lc8/hfg;->mViewType:I

    return v0
.end method

.method public isFullSpan()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lc8/Ebg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecycled()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lc8/hfg;->isRecycled:Z

    return v0
.end method

.method public recycled()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->recycled()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hfg;->isRecycled:Z

    .line 61
    :cond_0
    return-void
.end method

.method public setComponentUsing(Z)V
    .locals 1
    .param p1, "using"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lc8/hfg;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    invoke-virtual {v0, p1}, Lc8/tbg;->setUsing(Z)V

    .line 92
    :cond_0
    return-void
.end method
