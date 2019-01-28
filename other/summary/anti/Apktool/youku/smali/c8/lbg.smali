.class public Lc8/lbg;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tbg;->addFocusChangeListener(Lc8/rbg;)V
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
    .line 364
    .local p0, "this":Lc8/lbg;, "Lcom/taobao/weex/ui/component/WXComponent.2;"
    iput-object p1, p0, Lc8/lbg;->this$0:Lc8/tbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 367
    .local p0, "this":Lc8/lbg;, "Lcom/taobao/weex/ui/component/WXComponent.2;"
    iget-object v2, p0, Lc8/lbg;->this$0:Lc8/tbg;

    invoke-static {v2}, Lc8/tbg;->access$200(Lc8/tbg;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/rbg;

    .line 368
    .local v1, "listener":Lc8/rbg;
    if-eqz v1, :cond_0

    .line 369
    invoke-interface {v1, p2}, Lc8/rbg;->onFocusChange(Z)V

    goto :goto_0

    .line 372
    .end local v1    # "listener":Lc8/rbg;
    :cond_1
    return-void
.end method
