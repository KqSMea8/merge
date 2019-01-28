.class public Lc8/Dvb;
.super Ljava/lang/Object;
.source "Elevator.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ivb;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ivb;


# direct methods
.method constructor <init>(Lc8/Ivb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ivb;

    .prologue
    .line 214
    iput-object p1, p0, Lc8/Dvb;->this$0:Lc8/Ivb;

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
    .line 220
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lc8/Dvb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$700(Lc8/Ivb;)Lc8/Gvb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lc8/Dvb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$700(Lc8/Ivb;)Lc8/Gvb;

    move-result-object v1

    iget-object v0, p0, Lc8/Dvb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$800(Lc8/Ivb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Lvb;

    invoke-interface {v1, v0}, Lc8/Gvb;->OnClick(Lc8/Lvb;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lc8/Dvb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$600(Lc8/Ivb;)V

    .line 224
    return-void
.end method
