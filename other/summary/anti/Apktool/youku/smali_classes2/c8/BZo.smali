.class public Lc8/BZo;
.super Ljava/lang/Object;
.source "GridViewWithHeaderAndFooter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CZo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/CZo;


# direct methods
.method private constructor <init>(Lc8/CZo;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lc8/BZo;->this$0:Lc8/CZo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/CZo;Lc8/xZo;)V
    .locals 0
    .param p1, "x0"    # Lc8/CZo;
    .param p2, "x1"    # Lc8/xZo;

    .prologue
    .line 865
    invoke-direct {p0, p1}, Lc8/BZo;-><init>(Lc8/CZo;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 869
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lc8/BZo;->this$0:Lc8/CZo;

    invoke-static {v0}, Lc8/CZo;->access$200(Lc8/CZo;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lc8/BZo;->this$0:Lc8/CZo;

    invoke-virtual {v0}, Lc8/CZo;->getHeaderViewCount()I

    move-result v0

    iget-object v1, p0, Lc8/BZo;->this$0:Lc8/CZo;

    invoke-static {v1}, Lc8/CZo;->access$300(Lc8/CZo;)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int v3, p3, v0

    .line 871
    .local v3, "resPos":I
    if-ltz v3, :cond_0

    .line 872
    iget-object v0, p0, Lc8/BZo;->this$0:Lc8/CZo;

    invoke-static {v0}, Lc8/CZo;->access$200(Lc8/CZo;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 875
    .end local v3    # "resPos":I
    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 879
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lc8/BZo;->this$0:Lc8/CZo;

    invoke-static {v0}, Lc8/CZo;->access$400(Lc8/CZo;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lc8/BZo;->this$0:Lc8/CZo;

    invoke-virtual {v0}, Lc8/CZo;->getHeaderViewCount()I

    move-result v0

    iget-object v1, p0, Lc8/BZo;->this$0:Lc8/CZo;

    invoke-static {v1}, Lc8/CZo;->access$300(Lc8/CZo;)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int v3, p3, v0

    .line 881
    .local v3, "resPos":I
    if-ltz v3, :cond_0

    .line 882
    iget-object v0, p0, Lc8/BZo;->this$0:Lc8/CZo;

    invoke-static {v0}, Lc8/CZo;->access$400(Lc8/CZo;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 885
    .end local v3    # "resPos":I
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
