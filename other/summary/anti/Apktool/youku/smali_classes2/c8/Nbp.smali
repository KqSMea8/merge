.class public Lc8/Nbp;
.super Ljava/lang/Object;
.source "YoukuPopupMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Sbp;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Sbp;


# direct methods
.method constructor <init>(Lc8/Sbp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Sbp;

    .prologue
    .line 60
    iput-object p1, p0, Lc8/Nbp;->this$0:Lc8/Sbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 65
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lc8/Nbp;->this$0:Lc8/Sbp;

    invoke-static {v0}, Lc8/Sbp;->access$000(Lc8/Sbp;)Lc8/Rbp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lc8/Nbp;->this$0:Lc8/Sbp;

    invoke-static {v0}, Lc8/Sbp;->access$000(Lc8/Sbp;)Lc8/Rbp;

    move-result-object v1

    iget-object v0, p0, Lc8/Nbp;->this$0:Lc8/Sbp;

    invoke-static {v0}, Lc8/Sbp;->access$100(Lc8/Sbp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Obp;

    invoke-interface {v1, v0}, Lc8/Rbp;->onItemSelected(Lc8/Obp;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lc8/Nbp;->this$0:Lc8/Sbp;

    invoke-static {v0}, Lc8/Sbp;->access$200(Lc8/Sbp;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 69
    return-void
.end method
