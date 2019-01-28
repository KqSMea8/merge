.class public final Lc8/tqd;
.super Lc8/sqd;
.source "PullToRefreshGridView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InternalGridViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uqd;


# direct methods
.method public constructor <init>(Lc8/uqd;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lc8/uqd;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    iput-object p1, p0, Lc8/tqd;->this$0:Lc8/uqd;

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lc8/sqd;-><init>(Lc8/uqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
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
    .line 96
    invoke-super/range {p0 .. p9}, Lc8/sqd;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 100
    .local v0, "returnValue":Z
    iget-object v1, p0, Lc8/tqd;->this$0:Lc8/uqd;

    invoke-static {v1, p2, p4, p9}, Lc8/fqd;->overScrollBy(Lc8/oqd;IIZ)V

    .line 102
    return v0
.end method
