.class public Lc8/Oc;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Lc8/Pq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Sc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Sc;


# direct methods
.method constructor <init>(Lc8/Sc;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Sc;

    .prologue
    .line 176
    iput-object p1, p0, Lc8/Oc;->this$0:Lc8/Sc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lc8/Rq;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 179
    iget-object v1, p0, Lc8/Oc;->this$0:Lc8/Sc;

    invoke-static {v1}, Lc8/Sc;->access$000(Lc8/Sc;)Lc8/Pc;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget-object v2, p0, Lc8/Oc;->this$0:Lc8/Sc;

    invoke-virtual {v2}, Lc8/Sc;->getSelectedItemId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 180
    iget-object v1, p0, Lc8/Oc;->this$0:Lc8/Sc;

    invoke-static {v1}, Lc8/Sc;->access$000(Lc8/Sc;)Lc8/Pc;

    move-result-object v1

    invoke-interface {v1, p2}, Lc8/Pc;->onNavigationItemReselected(Landroid/view/MenuItem;)V

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    iget-object v1, p0, Lc8/Oc;->this$0:Lc8/Sc;

    invoke-static {v1}, Lc8/Sc;->access$100(Lc8/Sc;)Lc8/Qc;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/Oc;->this$0:Lc8/Sc;

    .line 184
    invoke-static {v1}, Lc8/Sc;->access$100(Lc8/Sc;)Lc8/Qc;

    move-result-object v1

    invoke-interface {v1, p2}, Lc8/Qc;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lc8/Rq;)V
    .locals 0
    .param p1, "menu"    # Lc8/Rq;

    .prologue
    .line 188
    return-void
.end method
