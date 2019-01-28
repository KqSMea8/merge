.class public Lc8/Uu;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lc8/Pq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zu;


# direct methods
.method constructor <init>(Lc8/Zu;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zu;

    .prologue
    .line 104
    iput-object p1, p0, Lc8/Uu;->this$0:Lc8/Zu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lc8/Rq;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 107
    iget-object v0, p0, Lc8/Uu;->this$0:Lc8/Zu;

    iget-object v0, v0, Lc8/Zu;->mMenuItemClickListener:Lc8/Yu;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lc8/Uu;->this$0:Lc8/Zu;

    iget-object v0, v0, Lc8/Zu;->mMenuItemClickListener:Lc8/Yu;

    invoke-interface {v0, p2}, Lc8/Yu;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lc8/Rq;)V
    .locals 0
    .param p1, "menu"    # Lc8/Rq;

    .prologue
    .line 115
    return-void
.end method
