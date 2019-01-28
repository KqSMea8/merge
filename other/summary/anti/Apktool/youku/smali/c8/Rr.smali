.class public Lc8/Rr;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lc8/Pq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Tr;


# direct methods
.method constructor <init>(Lc8/Tr;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lc8/Rr;->this$0:Lc8/Tr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lc8/Rq;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 775
    iget-object v0, p0, Lc8/Rr;->this$0:Lc8/Tr;

    iget-object v0, v0, Lc8/Tr;->mOnMenuItemClickListener:Lc8/Sr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Rr;->this$0:Lc8/Tr;

    iget-object v0, v0, Lc8/Tr;->mOnMenuItemClickListener:Lc8/Sr;

    .line 776
    invoke-interface {v0, p2}, Lc8/Sr;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lc8/Rq;)V
    .locals 1
    .param p1, "menu"    # Lc8/Rq;

    .prologue
    .line 781
    iget-object v0, p0, Lc8/Rr;->this$0:Lc8/Tr;

    iget-object v0, v0, Lc8/Tr;->mMenuBuilderCallback:Lc8/Pq;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lc8/Rr;->this$0:Lc8/Tr;

    iget-object v0, v0, Lc8/Tr;->mMenuBuilderCallback:Lc8/Pq;

    invoke-interface {v0, p1}, Lc8/Pq;->onMenuModeChange(Lc8/Rq;)V

    .line 784
    :cond_0
    return-void
.end method
