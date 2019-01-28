.class public Lc8/Fq;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gq;->onItemHoverEnter(Lc8/Rq;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Gq;

.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$menu:Lc8/Rq;

.field final synthetic val$nextInfo:Lc8/Hq;


# direct methods
.method constructor <init>(Lc8/Gq;Lc8/Hq;Landroid/view/MenuItem;Lc8/Rq;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Gq;

    .prologue
    .line 152
    iput-object p1, p0, Lc8/Fq;->this$1:Lc8/Gq;

    iput-object p2, p0, Lc8/Fq;->val$nextInfo:Lc8/Hq;

    iput-object p3, p0, Lc8/Fq;->val$item:Landroid/view/MenuItem;

    iput-object p4, p0, Lc8/Fq;->val$menu:Lc8/Rq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lc8/Fq;->val$nextInfo:Lc8/Hq;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lc8/Fq;->this$1:Lc8/Gq;

    iget-object v0, v0, Lc8/Gq;->this$0:Lc8/Jq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Jq;->mShouldCloseImmediately:Z

    .line 161
    iget-object v0, p0, Lc8/Fq;->val$nextInfo:Lc8/Hq;

    iget-object v0, v0, Lc8/Hq;->menu:Lc8/Rq;

    invoke-virtual {v0, v2}, Lc8/Rq;->close(Z)V

    .line 162
    iget-object v0, p0, Lc8/Fq;->this$1:Lc8/Gq;

    iget-object v0, v0, Lc8/Gq;->this$0:Lc8/Jq;

    iput-boolean v2, v0, Lc8/Jq;->mShouldCloseImmediately:Z

    .line 166
    :cond_0
    iget-object v0, p0, Lc8/Fq;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Fq;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lc8/Fq;->val$menu:Lc8/Rq;

    iget-object v1, p0, Lc8/Fq;->val$item:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lc8/Rq;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 169
    :cond_1
    return-void
.end method
