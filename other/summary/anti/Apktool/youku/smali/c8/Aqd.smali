.class public final Lc8/Aqd;
.super Lc8/zqd;
.source "PullToRefreshListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Bqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InternalListViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bqd;


# direct methods
.method public constructor <init>(Lc8/Bqd;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Bqd;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 350
    iput-object p1, p0, Lc8/Aqd;->this$0:Lc8/Bqd;

    .line 351
    invoke-direct {p0, p1, p2, p3}, Lc8/zqd;-><init>(Lc8/Bqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 352
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
    .line 359
    invoke-super/range {p0 .. p9}, Lc8/zqd;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 364
    .local v0, "returnValue":Z
    iget-object v1, p0, Lc8/Aqd;->this$0:Lc8/Bqd;

    invoke-static {v1, p2, p4, p9}, Lc8/fqd;->overScrollBy(Lc8/oqd;IIZ)V

    .line 367
    return v0
.end method
