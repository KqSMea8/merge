.class public Lc8/yv;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field final mDecorInsets:Landroid/graphics/Rect;

.field mInsetsDirty:Z

.field mPendingInvalidate:Z

.field mViewHolder:Lc8/Qv;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 10790
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 10778
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/yv;->mDecorInsets:Landroid/graphics/Rect;

    .line 10779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/yv;->mInsetsDirty:Z

    .line 10783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/yv;->mPendingInvalidate:Z

    .line 10791
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 10786
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10778
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/yv;->mDecorInsets:Landroid/graphics/Rect;

    .line 10779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/yv;->mInsetsDirty:Z

    .line 10783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/yv;->mPendingInvalidate:Z

    .line 10787
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 10798
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10778
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/yv;->mDecorInsets:Landroid/graphics/Rect;

    .line 10779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/yv;->mInsetsDirty:Z

    .line 10783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/yv;->mPendingInvalidate:Z

    .line 10799
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 10794
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10778
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/yv;->mDecorInsets:Landroid/graphics/Rect;

    .line 10779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/yv;->mInsetsDirty:Z

    .line 10783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/yv;->mPendingInvalidate:Z

    .line 10795
    return-void
.end method

.method public constructor <init>(Lc8/yv;)V
    .locals 1
    .param p1, "source"    # Lc8/yv;

    .prologue
    .line 10802
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10778
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/yv;->mDecorInsets:Landroid/graphics/Rect;

    .line 10779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/yv;->mInsetsDirty:Z

    .line 10783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/yv;->mPendingInvalidate:Z

    .line 10803
    return-void
.end method


# virtual methods
.method public getViewAdapterPosition()I
    .locals 1

    .prologue
    .line 10874
    iget-object v0, p0, Lc8/yv;->mViewHolder:Lc8/Qv;

    invoke-virtual {v0}, Lc8/Qv;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public getViewLayoutPosition()I
    .locals 1

    .prologue
    .line 10862
    iget-object v0, p0, Lc8/yv;->mViewHolder:Lc8/Qv;

    invoke-virtual {v0}, Lc8/Qv;->getLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getViewPosition()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10852
    iget-object v0, p0, Lc8/yv;->mViewHolder:Lc8/Qv;

    invoke-virtual {v0}, Lc8/Qv;->getPosition()I

    move-result v0

    return v0
.end method

.method public isItemChanged()Z
    .locals 1

    .prologue
    .line 10844
    iget-object v0, p0, Lc8/yv;->mViewHolder:Lc8/Qv;

    invoke-virtual {v0}, Lc8/Qv;->isUpdated()Z

    move-result v0

    return v0
.end method

.method public isItemRemoved()Z
    .locals 1

    .prologue
    .line 10833
    iget-object v0, p0, Lc8/yv;->mViewHolder:Lc8/Qv;

    invoke-virtual {v0}, Lc8/Qv;->isRemoved()Z

    move-result v0

    return v0
.end method

.method public isViewInvalid()Z
    .locals 1

    .prologue
    .line 10822
    iget-object v0, p0, Lc8/yv;->mViewHolder:Lc8/Qv;

    invoke-virtual {v0}, Lc8/Qv;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public viewNeedsUpdate()Z
    .locals 1

    .prologue
    .line 10812
    iget-object v0, p0, Lc8/yv;->mViewHolder:Lc8/Qv;

    invoke-virtual {v0}, Lc8/Qv;->needsUpdate()Z

    move-result v0

    return v0
.end method
