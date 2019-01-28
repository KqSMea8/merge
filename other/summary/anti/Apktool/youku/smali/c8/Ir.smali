.class public Lc8/Ir;
.super Lc8/Kt;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jr;-><init>(Lc8/Nr;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Jr;

.field final synthetic val$this$0:Lc8/Nr;


# direct methods
.method constructor <init>(Lc8/Jr;Landroid/view/View;Lc8/Nr;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Jr;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 650
    iput-object p1, p0, Lc8/Ir;->this$1:Lc8/Jr;

    iput-object p3, p0, Lc8/Ir;->val$this$0:Lc8/Nr;

    invoke-direct {p0, p2}, Lc8/Kt;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lc8/mr;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lc8/Ir;->this$1:Lc8/Jr;

    iget-object v0, v0, Lc8/Jr;->this$0:Lc8/Nr;

    iget-object v0, v0, Lc8/Nr;->mOverflowPopup:Lc8/Kr;

    if-nez v0, :cond_0

    .line 654
    const/4 v0, 0x0

    .line 657
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Ir;->this$1:Lc8/Jr;

    iget-object v0, v0, Lc8/Jr;->this$0:Lc8/Nr;

    iget-object v0, v0, Lc8/Nr;->mOverflowPopup:Lc8/Kr;

    invoke-virtual {v0}, Lc8/Kr;->getPopup()Lc8/dr;

    move-result-object v0

    goto :goto_0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lc8/Ir;->this$1:Lc8/Jr;

    iget-object v0, v0, Lc8/Jr;->this$0:Lc8/Nr;

    invoke-virtual {v0}, Lc8/Nr;->showOverflowMenu()Z

    .line 663
    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lc8/Ir;->this$1:Lc8/Jr;

    iget-object v0, v0, Lc8/Jr;->this$0:Lc8/Nr;

    iget-object v0, v0, Lc8/Nr;->mPostedOpenRunnable:Lc8/Hr;

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 676
    :goto_0
    return v0

    .line 675
    :cond_0
    iget-object v0, p0, Lc8/Ir;->this$1:Lc8/Jr;

    iget-object v0, v0, Lc8/Jr;->this$0:Lc8/Nr;

    invoke-virtual {v0}, Lc8/Nr;->hideOverflowMenu()Z

    .line 676
    const/4 v0, 0x1

    goto :goto_0
.end method
