.class public Lc8/mbg;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tbg;->addClickListener(Lc8/qbg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tbg;


# direct methods
.method constructor <init>(Lc8/tbg;)V
    .locals 0

    .prologue
    .line 384
    .local p0, "this":Lc8/mbg;, "Lcom/taobao/weex/ui/component/WXComponent.3;"
    iput-object p1, p0, Lc8/mbg;->this$0:Lc8/tbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 387
    .local p0, "this":Lc8/mbg;, "Lcom/taobao/weex/ui/component/WXComponent.3;"
    iget-object v2, p0, Lc8/mbg;->this$0:Lc8/tbg;

    invoke-static {v2}, Lc8/tbg;->access$300(Lc8/tbg;)Lc8/Teg;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/mbg;->this$0:Lc8/tbg;

    invoke-static {v2}, Lc8/tbg;->access$300(Lc8/tbg;)Lc8/Teg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Teg;->isTouchEventConsumedByAdvancedGesture()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    :cond_0
    return-void

    .line 391
    :cond_1
    iget-object v2, p0, Lc8/mbg;->this$0:Lc8/tbg;

    invoke-static {v2}, Lc8/tbg;->access$400(Lc8/tbg;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/qbg;

    .line 392
    .local v1, "listener":Lc8/qbg;
    if-eqz v1, :cond_2

    .line 393
    invoke-interface {v1}, Lc8/qbg;->onHostViewClick()V

    goto :goto_0
.end method
