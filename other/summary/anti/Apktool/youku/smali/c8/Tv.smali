.class public Lc8/Tv;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# instance fields
.field final mItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field final mRecyclerView:Lc8/Rv;


# direct methods
.method public constructor <init>(Lc8/Rv;)V
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 84
    new-instance v0, Lc8/Sv;

    invoke-direct {v0, p0}, Lc8/Sv;-><init>(Lc8/Tv;)V

    iput-object v0, p0, Lc8/Tv;->mItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 35
    iput-object p1, p0, Lc8/Tv;->mRecyclerView:Lc8/Rv;

    .line 36
    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lc8/Tv;->mItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 66
    const-class v1, Lc8/Rv;

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 67
    instance-of v1, p1, Lc8/Rv;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/Tv;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 68
    check-cast v0, Lc8/Rv;

    .line 69
    .local v0, "rv":Lc8/Rv;
    invoke-virtual {v0}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc8/xv;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    .end local v0    # "rv":Lc8/Rv;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 57
    const-class v0, Lc8/Rv;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lc8/Tv;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Tv;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lc8/Tv;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/xv;->onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 61
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lc8/Tv;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/Tv;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lc8/Tv;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lc8/xv;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldIgnore()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lc8/Tv;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method
