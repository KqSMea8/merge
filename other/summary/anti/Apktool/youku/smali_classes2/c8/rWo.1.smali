.class public Lc8/rWo;
.super Lc8/Cv;
.source "WXListComponentExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sWo;->initComponentHostView(Landroid/content/Context;)Lc8/Ifg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sWo;


# direct methods
.method constructor <init>(Lc8/sWo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/sWo;

    .prologue
    .line 75
    iput-object p1, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-direct {p0}, Lc8/Cv;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lc8/Rv;I)V
    .locals 7
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "newState"    # I

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 78
    invoke-super {p0, p1, p2}, Lc8/Cv;->onScrollStateChanged(Lc8/Rv;I)V

    .line 79
    if-nez p2, :cond_0

    iget-object v2, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-virtual {v2}, Lc8/sWo;->getMinShrink()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 81
    iget-object v2, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-virtual {v2}, Lc8/sWo;->getMinShrink()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v2, v3

    .line 82
    .local v1, "half":F
    iget-object v2, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-static {v2}, Lc8/sWo;->access$300(Lc8/sWo;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-static {v2}, Lc8/sWo;->access$300(Lc8/sWo;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    .line 83
    iget-object v2, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-static {v2}, Lc8/sWo;->access$300(Lc8/sWo;)I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v2, v4

    neg-double v2, v2

    double-to-int v0, v2

    .line 84
    .local v0, "dy":I
    invoke-virtual {p1, v6, v0}, Lc8/Rv;->smoothScrollBy(II)V

    .line 90
    .end local v0    # "dy":I
    .end local v1    # "half":F
    :cond_0
    :goto_0
    return-void

    .line 85
    .restart local v1    # "half":F
    :cond_1
    iget-object v2, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-static {v2}, Lc8/sWo;->access$300(Lc8/sWo;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_0

    iget-object v2, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-static {v2}, Lc8/sWo;->access$300(Lc8/sWo;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-virtual {v3}, Lc8/sWo;->getMinShrink()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 86
    iget-object v2, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-virtual {v2}, Lc8/sWo;->getMinShrink()F

    move-result v2

    iget-object v3, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-static {v3}, Lc8/sWo;->access$300(Lc8/sWo;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 87
    .restart local v0    # "dy":I
    invoke-virtual {p1, v6, v0}, Lc8/Rv;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public onScrolled(Lc8/Rv;II)V
    .locals 3
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Lc8/Cv;->onScrolled(Lc8/Rv;II)V

    .line 95
    iget-object v1, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-virtual {v1}, Lc8/sWo;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 96
    iget-object v1, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-static {v1, p1}, Lc8/sWo;->access$400(Lc8/sWo;Lc8/Rv;)I

    move-result v1

    neg-int v0, v1

    .line 98
    .local v0, "offset":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-static {v1}, Lc8/sWo;->access$300(Lc8/sWo;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-static {v2}, Lc8/sWo;->access$500(Lc8/sWo;)I

    move-result v2

    if-le v1, v2, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 99
    iget-object v1, p0, Lc8/rWo;->this$0:Lc8/sWo;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0}, Lc8/sWo;->access$600(Lc8/sWo;Lc8/Rv;II)V

    .line 101
    :cond_0
    iget-object v1, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-static {v1, v0}, Lc8/sWo;->access$302(Lc8/sWo;I)I

    .line 106
    .end local v0    # "offset":I
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lc8/rWo;->this$0:Lc8/sWo;

    iget-object v2, p0, Lc8/rWo;->this$0:Lc8/sWo;

    invoke-static {v2}, Lc8/sWo;->access$300(Lc8/sWo;)I

    move-result v2

    add-int/2addr v2, p3

    invoke-static {v1, v2}, Lc8/sWo;->access$302(Lc8/sWo;I)I

    goto :goto_0
.end method
