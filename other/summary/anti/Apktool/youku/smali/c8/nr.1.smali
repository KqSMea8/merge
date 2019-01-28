.class public Lc8/nr;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/or;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/or;


# direct methods
.method constructor <init>(Lc8/or;)V
    .locals 0
    .param p1, "this$0"    # Lc8/or;

    .prologue
    .line 58
    iput-object p1, p0, Lc8/nr;->this$0:Lc8/or;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lc8/nr;->this$0:Lc8/or;

    invoke-virtual {v1}, Lc8/or;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/nr;->this$0:Lc8/or;

    iget-object v1, v1, Lc8/or;->mPopup:Lc8/Mu;

    invoke-virtual {v1}, Lc8/Mu;->isModal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lc8/nr;->this$0:Lc8/or;

    iget-object v0, v1, Lc8/or;->mShownAnchorView:Landroid/view/View;

    .line 66
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    :cond_0
    iget-object v1, p0, Lc8/nr;->this$0:Lc8/or;

    invoke-virtual {v1}, Lc8/or;->dismiss()V

    .line 73
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 70
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lc8/nr;->this$0:Lc8/or;

    iget-object v1, v1, Lc8/or;->mPopup:Lc8/Mu;

    invoke-virtual {v1}, Lc8/Mu;->show()V

    goto :goto_0
.end method
