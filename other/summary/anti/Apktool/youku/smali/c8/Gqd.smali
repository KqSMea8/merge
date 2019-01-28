.class public final Lc8/Gqd;
.super Landroid/webkit/WebView;
.source "PullToRefreshWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InternalWebViewSDK9"
.end annotation


# static fields
.field static final OVERSCROLL_FUZZY_THRESHOLD:I = 0x2

.field static final OVERSCROLL_SCALE_FACTOR:F = 1.5f


# instance fields
.field final synthetic this$0:Lc8/Hqd;


# direct methods
.method public constructor <init>(Lc8/Hqd;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Hqd;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    iput-object p1, p0, Lc8/Gqd;->this$0:Lc8/Hqd;

    .line 116
    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method private getScrollRange()I
    .locals 4

    .prologue
    .line 134
    const/4 v1, 0x0

    iget-object v0, p0, Lc8/Gqd;->this$0:Lc8/Hqd;

    iget-object v0, v0, Lc8/Hqd;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lc8/Gqd;->this$0:Lc8/Hqd;

    iget-object v0, v0, Lc8/Hqd;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 135
    invoke-virtual {p0}, Lc8/Gqd;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lc8/Gqd;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lc8/Gqd;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 134
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 8
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
    .line 123
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v7

    .line 127
    .local v7, "returnValue":Z
    iget-object v0, p0, Lc8/Gqd;->this$0:Lc8/Hqd;

    invoke-direct {p0}, Lc8/Gqd;->getScrollRange()I

    move-result v3

    const/4 v4, 0x2

    const/high16 v5, 0x3fc00000    # 1.5f

    move v1, p2

    move v2, p4

    move/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lc8/fqd;->overScrollBy(Lc8/oqd;IIIIFZ)V

    .line 130
    return v7
.end method
