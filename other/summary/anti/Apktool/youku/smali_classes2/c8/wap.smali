.class public Lc8/wap;
.super Ljava/lang/Object;
.source "SimpleMenuDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Aap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Aap;


# direct methods
.method constructor <init>(Lc8/Aap;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Aap;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/wap;->this$0:Lc8/Aap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 37
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lc8/wap;->this$0:Lc8/Aap;

    invoke-static {v1}, Lc8/Aap;->access$000(Lc8/Aap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 38
    .local v0, "item":Lcom/youku/ui/activity/actionbar/ActionMenu;
    iget-object v1, p0, Lc8/wap;->this$0:Lc8/Aap;

    invoke-static {v1}, Lc8/Aap;->access$100(Lc8/Aap;)Lc8/xap;

    move-result-object v1

    iget v2, v0, Lcom/youku/ui/activity/actionbar/ActionMenu;->id:I

    invoke-interface {v1, v2}, Lc8/xap;->click(I)V

    .line 39
    iget-object v1, p0, Lc8/wap;->this$0:Lc8/Aap;

    invoke-virtual {v1}, Lc8/Aap;->dismiss()V

    .line 40
    return-void
.end method
