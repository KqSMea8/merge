.class public Lc8/dx;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lc8/Sr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/kx;


# direct methods
.method constructor <init>(Lc8/kx;)V
    .locals 0
    .param p1, "this$0"    # Lc8/kx;

    .prologue
    .line 202
    iput-object p1, p0, Lc8/dx;->this$0:Lc8/kx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 205
    iget-object v0, p0, Lc8/dx;->this$0:Lc8/kx;

    iget-object v0, v0, Lc8/kx;->mOnMenuItemClickListener:Lc8/ix;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lc8/dx;->this$0:Lc8/kx;

    iget-object v0, v0, Lc8/kx;->mOnMenuItemClickListener:Lc8/ix;

    invoke-interface {v0, p1}, Lc8/ix;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
