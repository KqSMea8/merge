.class public Lc8/Yn;
.super Lc8/fo;
.source "AppCompatDelegateImplN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppCompatWindowCallbackN"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zn;


# direct methods
.method constructor <init>(Lc8/Zn;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zn;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 42
    iput-object p1, p0, Lc8/Yn;->this$0:Lc8/Zn;

    .line 43
    invoke-direct {p0, p1, p2}, Lc8/fo;-><init>(Lc8/go;Landroid/view/Window$Callback;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 4
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v1, p0, Lc8/Yn;->this$0:Lc8/Zn;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lc8/Zn;->getPanelState(IZ)Lc8/to;

    move-result-object v0

    .line 50
    .local v0, "panel":Lc8/to;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lc8/to;->menu:Lc8/Rq;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, v0, Lc8/to;->menu:Lc8/Rq;

    invoke-super {p0, p1, v1, p3}, Lc8/fo;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lc8/fo;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0
.end method
