.class public Lc8/bWf;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eWf;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private previousView:Landroid/view/View;

.field private selectionColor:I

.field final synthetic this$0:Lc8/eWf;

.field final synthetic val$options:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/eWf;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 239
    iput-object p1, p0, Lc8/bWf;->this$0:Lc8/eWf;

    iput-object p2, p0, Lc8/bWf;->val$options:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iget-object v0, p0, Lc8/bWf;->this$0:Lc8/eWf;

    iget-object v1, p0, Lc8/bWf;->val$options:Ljava/util/Map;

    const-string/jumbo v2, "selectionColor"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lc8/eWf;->access$200(Lc8/eWf;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/bWf;->selectionColor:I

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
    .line 245
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lc8/bWf;->this$0:Lc8/eWf;

    invoke-static {v0, p3}, Lc8/eWf;->access$002(Lc8/eWf;I)I

    .line 246
    iget-object v0, p0, Lc8/bWf;->previousView:Landroid/view/View;

    if-ne v0, p2, :cond_0

    .line 260
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lc8/bWf;->previousView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lc8/bWf;->previousView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 251
    iget-object v0, p0, Lc8/bWf;->previousView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lc8/bWf;->previousView:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 255
    :cond_1
    instance-of v0, p2, Landroid/widget/Checkable;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 256
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 258
    :cond_2
    iget v0, p0, Lc8/bWf;->selectionColor:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 259
    iput-object p2, p0, Lc8/bWf;->previousView:Landroid/view/View;

    goto :goto_0
.end method
