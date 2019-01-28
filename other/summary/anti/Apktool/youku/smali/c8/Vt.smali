.class public Lc8/Vt;
.super Lc8/cu;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Wt;->getBounds()Lc8/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private size:I

.field final synthetic this$0:Lc8/Wt;


# direct methods
.method constructor <init>(Lc8/Wt;)V
    .locals 1
    .param p1, "this$0"    # Lc8/Wt;

    .prologue
    .line 2616
    iput-object p1, p0, Lc8/Vt;->this$0:Lc8/Wt;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/cu;-><init>(Lc8/Pt;)V

    return-void
.end method


# virtual methods
.method protected getOffset(Lc8/iu;Landroid/view/View;Lc8/Yt;IZ)I
    .locals 2
    .param p1, "gl"    # Lc8/iu;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "a"    # Lc8/Yt;
    .param p4, "size"    # I
    .param p5, "hrz"    # Z

    .prologue
    .line 2644
    const/4 v0, 0x0

    invoke-super/range {p0 .. p5}, Lc8/cu;->getOffset(Lc8/iu;Landroid/view/View;Lc8/Yt;IZ)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected include(II)V
    .locals 2
    .param p1, "before"    # I
    .param p2, "after"    # I

    .prologue
    .line 2633
    invoke-super {p0, p1, p2}, Lc8/cu;->include(II)V

    .line 2634
    iget v0, p0, Lc8/Vt;->size:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lc8/Vt;->size:I

    .line 2635
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 2627
    invoke-super {p0}, Lc8/cu;->reset()V

    .line 2628
    const/high16 v0, -0x80000000

    iput v0, p0, Lc8/Vt;->size:I

    .line 2629
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .param p1, "min"    # Z

    .prologue
    .line 2639
    invoke-super {p0, p1}, Lc8/cu;->size(Z)I

    move-result v0

    iget v1, p0, Lc8/Vt;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
