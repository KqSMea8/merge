.class public Lc8/Sv;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Tv;


# direct methods
.method constructor <init>(Lc8/Tv;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Tv;

    .prologue
    .line 84
    iput-object p1, p0, Lc8/Sv;->this$0:Lc8/Tv;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 88
    iget-object v0, p0, Lc8/Sv;->this$0:Lc8/Tv;

    invoke-virtual {v0}, Lc8/Tv;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Sv;->this$0:Lc8/Tv;

    iget-object v0, v0, Lc8/Tv;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lc8/Sv;->this$0:Lc8/Tv;

    iget-object v0, v0, Lc8/Tv;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1, p2}, Lc8/xv;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 92
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lc8/Sv;->this$0:Lc8/Tv;

    invoke-virtual {v0}, Lc8/Tv;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/Sv;->this$0:Lc8/Tv;

    iget-object v0, v0, Lc8/Tv;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lc8/Sv;->this$0:Lc8/Tv;

    iget-object v0, v0, Lc8/Tv;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1, p2, p3}, Lc8/xv;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
