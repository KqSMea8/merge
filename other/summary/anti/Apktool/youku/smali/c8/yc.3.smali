.class public Lc8/yc;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lc8/te;


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
    .line 408
    .local p0, "this":Lc8/yc;, "Landroid/support/design/widget/BaseTransientBottomBar$4;"
    iput-object p1, p0, Lc8/yc;->this$0:Lc8/Nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 411
    .local p0, "this":Lc8/yc;, "Landroid/support/design/widget/BaseTransientBottomBar$4;"
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lc8/yc;->this$0:Lc8/Nc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Nc;->dispatchDismiss(I)V

    .line 413
    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 417
    .local p0, "this":Lc8/yc;, "Landroid/support/design/widget/BaseTransientBottomBar$4;"
    packed-switch p1, :pswitch_data_0

    .line 429
    :goto_0
    return-void

    .line 421
    :pswitch_0
    invoke-static {}, Lc8/oe;->getInstance()Lc8/oe;

    move-result-object v0

    iget-object v1, p0, Lc8/yc;->this$0:Lc8/Nc;

    iget-object v1, v1, Lc8/Nc;->mManagerCallback:Lc8/me;

    invoke-virtual {v0, v1}, Lc8/oe;->pauseTimeout(Lc8/me;)V

    goto :goto_0

    .line 425
    :pswitch_1
    invoke-static {}, Lc8/oe;->getInstance()Lc8/oe;

    move-result-object v0

    iget-object v1, p0, Lc8/yc;->this$0:Lc8/Nc;

    iget-object v1, v1, Lc8/Nc;->mManagerCallback:Lc8/me;

    .line 426
    invoke-virtual {v0, v1}, Lc8/oe;->restoreTimeoutIfPaused(Lc8/me;)V

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
