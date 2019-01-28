.class public Lc8/Tm;
.super Ljava/lang/Object;
.source "FocusStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Um;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SequentialComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mAdapter:Lc8/Rm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Rm",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mIsLayoutRtl:Z

.field private final mTemp1:Landroid/graphics/Rect;

.field private final mTemp2:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(ZLc8/Rm;)V
    .locals 1
    .param p1, "isLayoutRtl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lc8/Rm",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lc8/Tm;, "Landroid/support/v4/widget/FocusStrategy$SequentialComparator<TT;>;"
    .local p2, "adapter":Lc8/Rm;, "Landroid/support/v4/widget/FocusStrategy$BoundsAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/Tm;->mTemp1:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/Tm;->mTemp2:Landroid/graphics/Rect;

    .line 102
    iput-boolean p1, p0, Lc8/Tm;->mIsLayoutRtl:Z

    .line 103
    iput-object p2, p0, Lc8/Tm;->mAdapter:Lc8/Rm;

    .line 104
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Tm;, "Landroid/support/v4/widget/FocusStrategy$SequentialComparator<TT;>;"
    .local p1, "first":Ljava/lang/Object;, "TT;"
    .local p2, "second":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 108
    iget-object v0, p0, Lc8/Tm;->mTemp1:Landroid/graphics/Rect;

    .line 109
    .local v0, "firstRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lc8/Tm;->mTemp2:Landroid/graphics/Rect;

    .line 111
    .local v1, "secondRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lc8/Tm;->mAdapter:Lc8/Rm;

    invoke-interface {v4, p1, v0}, Lc8/Rm;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 112
    iget-object v4, p0, Lc8/Tm;->mAdapter:Lc8/Rm;

    invoke-interface {v4, p2, v1}, Lc8/Rm;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 114
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v2

    .line 116
    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_2

    move v2, v3

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_3

    .line 119
    iget-boolean v4, p0, Lc8/Tm;->mIsLayoutRtl:Z

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 120
    :cond_3
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-le v4, v5, :cond_4

    .line 121
    iget-boolean v4, p0, Lc8/Tm;->mIsLayoutRtl:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 122
    :cond_4
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_0

    .line 124
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_5

    move v2, v3

    .line 125
    goto :goto_0

    .line 126
    :cond_5
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_6

    .line 127
    iget-boolean v4, p0, Lc8/Tm;->mIsLayoutRtl:Z

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 128
    :cond_6
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_7

    .line 129
    iget-boolean v4, p0, Lc8/Tm;->mIsLayoutRtl:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 135
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method
