.class public Lc8/be;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Lc8/Pq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ee;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ee;


# direct methods
.method constructor <init>(Lc8/ee;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ee;

    .prologue
    .line 153
    iput-object p1, p0, Lc8/be;->this$0:Lc8/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lc8/Rq;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 156
    iget-object v0, p0, Lc8/be;->this$0:Lc8/ee;

    iget-object v0, v0, Lc8/ee;->mListener:Lc8/ce;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/be;->this$0:Lc8/ee;

    iget-object v0, v0, Lc8/ee;->mListener:Lc8/ce;

    invoke-interface {v0, p2}, Lc8/ce;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

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
    .locals 0
    .param p1, "menu"    # Lc8/Rq;

    .prologue
    .line 160
    return-void
.end method
