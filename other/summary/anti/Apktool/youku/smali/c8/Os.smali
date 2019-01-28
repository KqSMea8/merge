.class public Lc8/Os;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Rs;-><init>(Lc8/Ss;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Rs;

.field final synthetic val$this$0:Lc8/Ss;


# direct methods
.method constructor <init>(Lc8/Rs;Lc8/Ss;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Rs;

    .prologue
    .line 711
    iput-object p1, p0, Lc8/Os;->this$1:Lc8/Rs;

    iput-object p2, p0, Lc8/Os;->val$this$0:Lc8/Ss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 714
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lc8/Os;->this$1:Lc8/Rs;

    iget-object v0, v0, Lc8/Rs;->this$0:Lc8/Ss;

    invoke-virtual {v0, p3}, Lc8/Ss;->setSelection(I)V

    .line 715
    iget-object v0, p0, Lc8/Os;->this$1:Lc8/Rs;

    iget-object v0, v0, Lc8/Rs;->this$0:Lc8/Ss;

    invoke-virtual {v0}, Lc8/Ss;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lc8/Os;->this$1:Lc8/Rs;

    iget-object v0, v0, Lc8/Rs;->this$0:Lc8/Ss;

    iget-object v1, p0, Lc8/Os;->this$1:Lc8/Rs;

    iget-object v1, v1, Lc8/Rs;->mAdapter:Landroid/widget/ListAdapter;

    .line 717
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Lc8/Ss;->performItemClick(Landroid/view/View;IJ)Z

    .line 719
    :cond_0
    iget-object v0, p0, Lc8/Os;->this$1:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->dismiss()V

    .line 720
    return-void
.end method
