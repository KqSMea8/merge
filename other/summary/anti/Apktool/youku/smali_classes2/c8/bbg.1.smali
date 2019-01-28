.class public Lc8/bbg;
.super Ljava/lang/Object;
.source "AppearanceHelper.java"


# static fields
.field public static final APPEAR:I = 0x0

.field public static final DISAPPEAR:I = 0x1

.field public static final RESULT_APPEAR:I = 0x1

.field public static final RESULT_DISAPPEAR:I = -0x1

.field public static final RESULT_NO_CHANGE:I


# instance fields
.field private mAppearStatus:Z

.field private final mAwareChild:Lc8/tbg;

.field private mCellPositionInScrollable:I

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWatchFlags:[Z


# direct methods
.method public constructor <init>(Lc8/tbg;)V
    .locals 1
    .param p1, "awareChild"    # Lc8/tbg;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/bbg;-><init>(Lc8/tbg;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lc8/tbg;I)V
    .locals 1
    .param p1, "awareChild"    # Lc8/tbg;
    .param p2, "cellPositionInScrollable"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/bbg;->mAppearStatus:Z

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lc8/bbg;->mWatchFlags:[Z

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/bbg;->mVisibleRect:Landroid/graphics/Rect;

    .line 55
    iput-object p1, p0, Lc8/bbg;->mAwareChild:Lc8/tbg;

    .line 56
    iput p2, p0, Lc8/bbg;->mCellPositionInScrollable:I

    .line 57
    return-void

    .line 34
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public getAwareChild()Lc8/tbg;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lc8/bbg;->mAwareChild:Lc8/tbg;

    return-object v0
.end method

.method public getCellPositionINScollable()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lc8/bbg;->mCellPositionInScrollable:I

    return v0
.end method

.method public isAppear()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lc8/bbg;->mAppearStatus:Z

    return v0
.end method

.method public isViewVisible(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lc8/bbg;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewVisible(Z)Z
    .locals 3
    .param p1, "isList"    # Z

    .prologue
    const/4 v1, 0x1

    .line 101
    iget-object v2, p0, Lc8/bbg;->mAwareChild:Lc8/tbg;

    invoke-virtual {v2}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "view":Landroid/view/View;
    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lc8/bbg;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWatch()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    iget-object v2, p0, Lc8/bbg;->mWatchFlags:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/bbg;->mWatchFlags:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public setAppearStatus(Z)I
    .locals 1
    .param p1, "newIsAppear"    # Z

    .prologue
    .line 92
    iget-boolean v0, p0, Lc8/bbg;->mAppearStatus:Z

    if-eq v0, p1, :cond_1

    .line 93
    iput-boolean p1, p0, Lc8/bbg;->mAppearStatus:Z

    .line 94
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCellPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 60
    iput p1, p0, Lc8/bbg;->mCellPositionInScrollable:I

    .line 61
    return-void
.end method

.method public setWatchEvent(IZ)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lc8/bbg;->mWatchFlags:[Z

    aput-boolean p2, v0, p1

    .line 73
    return-void
.end method
