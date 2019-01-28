.class public Lc8/Hn;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jn;->createListView(Lc8/Nn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jn;

.field final synthetic val$dialog:Lc8/Nn;

.field final synthetic val$listView:Lc8/Mn;


# direct methods
.method constructor <init>(Lc8/Jn;Lc8/Mn;Lc8/Nn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jn;

    .prologue
    .line 1052
    iput-object p1, p0, Lc8/Hn;->this$0:Lc8/Jn;

    iput-object p2, p0, Lc8/Hn;->val$listView:Lc8/Mn;

    iput-object p3, p0, Lc8/Hn;->val$dialog:Lc8/Nn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
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
    .line 1055
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lc8/Hn;->this$0:Lc8/Jn;

    iget-object v0, v0, Lc8/Jn;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lc8/Hn;->this$0:Lc8/Jn;

    iget-object v0, v0, Lc8/Jn;->mCheckedItems:[Z

    iget-object v1, p0, Lc8/Hn;->val$listView:Lc8/Mn;

    invoke-virtual {v1, p3}, Lc8/Mn;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1058
    :cond_0
    iget-object v0, p0, Lc8/Hn;->this$0:Lc8/Jn;

    iget-object v0, v0, Lc8/Jn;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lc8/Hn;->val$dialog:Lc8/Nn;

    iget-object v1, v1, Lc8/Nn;->mDialog:Lc8/wo;

    iget-object v2, p0, Lc8/Hn;->val$listView:Lc8/Mn;

    .line 1059
    invoke-virtual {v2, p3}, Lc8/Mn;->isItemChecked(I)Z

    move-result v2

    .line 1058
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1060
    return-void
.end method
