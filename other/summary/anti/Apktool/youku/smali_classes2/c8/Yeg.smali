.class public Lc8/Yeg;
.super Lc8/xu;
.source "ExtendedLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopSnappedSmoothScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zeg;


# direct methods
.method public constructor <init>(Lc8/Zeg;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lc8/Yeg;->this$0:Lc8/Zeg;

    .line 83
    invoke-direct {p0, p2}, Lc8/xu;-><init>(Landroid/content/Context;)V

    .line 85
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lc8/Yeg;->this$0:Lc8/Zeg;

    invoke-virtual {v0, p1}, Lc8/Zeg;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, -0x1

    return v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lc8/xu;->onStop()V

    .line 101
    iget-object v0, p0, Lc8/Yeg;->this$0:Lc8/Zeg;

    invoke-static {v0}, Lc8/Zeg;->access$000(Lc8/Zeg;)Lc8/Xeg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lc8/Yeg;->this$0:Lc8/Zeg;

    invoke-static {v0}, Lc8/Zeg;->access$000(Lc8/Zeg;)Lc8/Xeg;

    move-result-object v0

    invoke-interface {v0}, Lc8/Xeg;->onStop()V

    .line 103
    iget-object v0, p0, Lc8/Yeg;->this$0:Lc8/Zeg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Zeg;->access$002(Lc8/Zeg;Lc8/Xeg;)Lc8/Xeg;

    .line 105
    :cond_0
    return-void
.end method
