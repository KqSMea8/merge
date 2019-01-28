.class public final Lc8/Cqd;
.super Landroid/widget/ScrollView;
.source "PullToRefreshScrollView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InternalScrollViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Dqd;


# direct methods
.method public constructor <init>(Lc8/Dqd;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Dqd;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    iput-object p1, p0, Lc8/Cqd;->this$0:Lc8/Dqd;

    .line 61
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lc8/Cqd;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 84
    invoke-virtual {p0, v5}, Lc8/Cqd;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lc8/Cqd;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lc8/Cqd;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lc8/Cqd;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 87
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 68
    invoke-super/range {p0 .. p9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 72
    .local v0, "returnValue":Z
    iget-object v1, p0, Lc8/Cqd;->this$0:Lc8/Dqd;

    .line 73
    invoke-direct {p0}, Lc8/Cqd;->getScrollRange()I

    move-result v2

    invoke-static {v1, p2, p4, v2, p9}, Lc8/fqd;->overScrollBy(Lc8/oqd;IIIZ)V

    .line 75
    return v0
.end method
