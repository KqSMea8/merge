.class public Lc8/Scg;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xcg;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xcg;


# direct methods
.method constructor <init>(Lc8/Xcg;)V
    .locals 0

    .prologue
    .line 312
    .local p0, "this":Lc8/Scg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.3;"
    iput-object p1, p0, Lc8/Scg;->this$0:Lc8/Xcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .local p0, "this":Lc8/Scg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.3;"
    const/4 v3, 0x0

    .line 317
    iget-object v1, p0, Lc8/Scg;->this$0:Lc8/Xcg;

    invoke-virtual {v1}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "view":Landroid/view/ViewGroup;, "TT;"
    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v1, p0, Lc8/Scg;->this$0:Lc8/Xcg;

    invoke-static {v1}, Lc8/Xcg;->access$000(Lc8/Xcg;)Lc8/kfg;

    move-result-object v2

    move-object v1, v0

    check-cast v1, Lc8/ddg;

    invoke-interface {v1}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v1

    invoke-virtual {v2, v1, v3, v3}, Lc8/kfg;->onScrolled(Lc8/Rv;II)V

    .line 320
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 321
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
