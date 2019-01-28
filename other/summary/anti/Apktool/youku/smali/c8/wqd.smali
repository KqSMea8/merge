.class public final Lc8/wqd;
.super Lc8/vqd;
.source "PullToRefreshHeaderGridView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InternalGridViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xqd;


# direct methods
.method public constructor <init>(Lc8/xqd;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xqd;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    iput-object p1, p0, Lc8/wqd;->this$0:Lc8/xqd;

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lc8/vqd;-><init>(Lc8/xqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 2
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
    .line 101
    invoke-super/range {p0 .. p9}, Lc8/vqd;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 105
    .local v0, "returnValue":Z
    iget-object v1, p0, Lc8/wqd;->this$0:Lc8/xqd;

    invoke-static {v1, p2, p4, p9}, Lc8/fqd;->overScrollBy(Lc8/oqd;IIZ)V

    .line 107
    return v0
.end method
