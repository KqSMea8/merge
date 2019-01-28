.class public Lc8/Ac;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lc8/Kc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nc;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nc;


# direct methods
.method constructor <init>(Lc8/Nc;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Nc;

    .prologue
    .line 440
    .local p0, "this":Lc8/Ac;, "Landroid/support/design/widget/BaseTransientBottomBar$5;"
    iput-object p1, p0, Lc8/Ac;->this$0:Lc8/Nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 442
    .local p0, "this":Lc8/Ac;, "Landroid/support/design/widget/BaseTransientBottomBar$5;"
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 446
    .local p0, "this":Lc8/Ac;, "Landroid/support/design/widget/BaseTransientBottomBar$5;"
    iget-object v0, p0, Lc8/Ac;->this$0:Lc8/Nc;

    invoke-virtual {v0}, Lc8/Nc;->isShownOrQueued()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    sget-object v0, Lc8/Nc;->sHandler:Landroid/os/Handler;

    new-instance v1, Lc8/zc;

    invoke-direct {v1, p0}, Lc8/zc;-><init>(Lc8/Ac;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    :cond_0
    return-void
.end method
