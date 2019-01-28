.class public final Lc8/qqd;
.super Lc8/pqd;
.source "PullToRefreshExpandableListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InternalExpandableListViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/rqd;


# direct methods
.method public constructor <init>(Lc8/rqd;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lc8/rqd;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    iput-object p1, p0, Lc8/qqd;->this$0:Lc8/rqd;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lc8/pqd;-><init>(Lc8/rqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
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
    .line 94
    invoke-super/range {p0 .. p9}, Lc8/pqd;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 98
    .local v0, "returnValue":Z
    iget-object v1, p0, Lc8/qqd;->this$0:Lc8/rqd;

    invoke-static {v1, p2, p4, p9}, Lc8/fqd;->overScrollBy(Lc8/oqd;IIZ)V

    .line 100
    return v0
.end method
