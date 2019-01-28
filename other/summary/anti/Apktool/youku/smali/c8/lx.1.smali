.class public Lc8/lx;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nx;-><init>(Lc8/kx;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final mNavItem:Lc8/xq;

.field final synthetic this$0:Lc8/nx;


# direct methods
.method constructor <init>(Lc8/nx;)V
    .locals 7
    .param p1, "this$0"    # Lc8/nx;

    .prologue
    const/4 v2, 0x0

    .line 181
    iput-object p1, p0, Lc8/lx;->this$0:Lc8/nx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lc8/xq;

    iget-object v1, p0, Lc8/lx;->this$0:Lc8/nx;

    iget-object v1, v1, Lc8/nx;->mToolbar:Lc8/kx;

    invoke-virtual {v1}, Lc8/kx;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102002c

    iget-object v4, p0, Lc8/lx;->this$0:Lc8/nx;

    iget-object v6, v4, Lc8/nx;->mTitle:Ljava/lang/CharSequence;

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lc8/xq;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lc8/lx;->mNavItem:Lc8/xq;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lc8/lx;->this$0:Lc8/nx;

    iget-object v0, v0, Lc8/nx;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/lx;->this$0:Lc8/nx;

    iget-boolean v0, v0, Lc8/nx;->mMenuPrepared:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lc8/lx;->this$0:Lc8/nx;

    iget-object v0, v0, Lc8/nx;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Lc8/lx;->mNavItem:Lc8/xq;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 189
    :cond_0
    return-void
.end method
