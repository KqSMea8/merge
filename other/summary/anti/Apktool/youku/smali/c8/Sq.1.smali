.class public Lc8/Sq;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lc8/gr;


# instance fields
.field private mDialog:Lc8/Pn;

.field private mMenu:Lc8/Rq;

.field mPresenter:Lc8/Nq;

.field private mPresenterCallback:Lc8/gr;


# direct methods
.method public constructor <init>(Lc8/Rq;)V
    .locals 0
    .param p1, "menu"    # Lc8/Rq;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lc8/Sq;->mMenu:Lc8/Rq;

    .line 43
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lc8/Sq;->mDialog:Lc8/Pn;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lc8/Sq;->mDialog:Lc8/Pn;

    invoke-virtual {v0}, Lc8/Pn;->dismiss()V

    .line 140
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 166
    iget-object v1, p0, Lc8/Sq;->mMenu:Lc8/Rq;

    iget-object v0, p0, Lc8/Sq;->mPresenter:Lc8/Nq;

    invoke-virtual {v0}, Lc8/Nq;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vq;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lc8/Rq;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 167
    return-void
.end method

.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 149
    if-nez p2, :cond_0

    iget-object v0, p0, Lc8/Sq;->mMenu:Lc8/Rq;

    if-ne p1, v0, :cond_1

    .line 150
    :cond_0
    invoke-virtual {p0}, Lc8/Sq;->dismiss()V

    .line 152
    :cond_1
    iget-object v0, p0, Lc8/Sq;->mPresenterCallback:Lc8/gr;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lc8/Sq;->mPresenterCallback:Lc8/gr;

    invoke-interface {v0, p1, p2}, Lc8/gr;->onCloseMenu(Lc8/Rq;Z)V

    .line 155
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 144
    iget-object v0, p0, Lc8/Sq;->mPresenter:Lc8/Nq;

    iget-object v1, p0, Lc8/Sq;->mMenu:Lc8/Rq;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lc8/Nq;->onCloseMenu(Lc8/Rq;Z)V

    .line 145
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 92
    const/16 v4, 0x52

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    .line 93
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 94
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 95
    iget-object v4, p0, Lc8/Sq;->mDialog:Lc8/Pn;

    invoke-virtual {v4}, Lc8/Pn;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 96
    .local v2, "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 100
    .local v1, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 123
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :goto_0
    return v3

    .line 106
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 107
    iget-object v4, p0, Lc8/Sq;->mDialog:Lc8/Pn;

    invoke-virtual {v4}, Lc8/Pn;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 108
    .restart local v2    # "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 110
    .restart local v0    # "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 112
    .restart local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    iget-object v4, p0, Lc8/Sq;->mMenu:Lc8/Rq;

    invoke-virtual {v4, v3}, Lc8/Rq;->close(Z)V

    .line 114
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 123
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :cond_2
    iget-object v3, p0, Lc8/Sq;->mMenu:Lc8/Rq;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4}, Lc8/Rq;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_0
.end method

.method public onOpenSubMenu(Lc8/Rq;)Z
    .locals 1
    .param p1, "subMenu"    # Lc8/Rq;

    .prologue
    .line 159
    iget-object v0, p0, Lc8/Sq;->mPresenterCallback:Lc8/gr;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lc8/Sq;->mPresenterCallback:Lc8/gr;

    invoke-interface {v0, p1}, Lc8/gr;->onOpenSubMenu(Lc8/Rq;)Z

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPresenterCallback(Lc8/gr;)V
    .locals 0
    .param p1, "cb"    # Lc8/gr;

    .prologue
    .line 128
    iput-object p1, p0, Lc8/Sq;->mPresenterCallback:Lc8/gr;

    .line 129
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 52
    iget-object v3, p0, Lc8/Sq;->mMenu:Lc8/Rq;

    .line 55
    .local v3, "menu":Lc8/Rq;
    new-instance v0, Lc8/On;

    invoke-virtual {v3}, Lc8/Rq;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lc8/On;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "builder":Lc8/On;
    new-instance v4, Lc8/Nq;

    invoke-virtual {v0}, Lc8/On;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/youku/phone/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v4, v5, v6}, Lc8/Nq;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lc8/Sq;->mPresenter:Lc8/Nq;

    .line 60
    iget-object v4, p0, Lc8/Sq;->mPresenter:Lc8/Nq;

    invoke-virtual {v4, p0}, Lc8/Nq;->setCallback(Lc8/gr;)V

    .line 61
    iget-object v4, p0, Lc8/Sq;->mMenu:Lc8/Rq;

    iget-object v5, p0, Lc8/Sq;->mPresenter:Lc8/Nq;

    invoke-virtual {v4, v5}, Lc8/Rq;->addMenuPresenter(Lc8/hr;)V

    .line 62
    iget-object v4, p0, Lc8/Sq;->mPresenter:Lc8/Nq;

    invoke-virtual {v4}, Lc8/Nq;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lc8/On;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lc8/On;

    .line 65
    invoke-virtual {v3}, Lc8/Rq;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "headerView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v0, v1}, Lc8/On;->setCustomTitle(Landroid/view/View;)Lc8/On;

    .line 75
    :goto_0
    invoke-virtual {v0, p0}, Lc8/On;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lc8/On;

    .line 78
    invoke-virtual {v0}, Lc8/On;->create()Lc8/Pn;

    move-result-object v4

    iput-object v4, p0, Lc8/Sq;->mDialog:Lc8/Pn;

    .line 79
    iget-object v4, p0, Lc8/Sq;->mDialog:Lc8/Pn;

    invoke-virtual {v4, p0}, Lc8/Pn;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    iget-object v4, p0, Lc8/Sq;->mDialog:Lc8/Pn;

    invoke-virtual {v4}, Lc8/Pn;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 82
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 86
    :cond_0
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    iget-object v4, p0, Lc8/Sq;->mDialog:Lc8/Pn;

    invoke-virtual {v4}, Lc8/Pn;->show()V

    .line 89
    return-void

    .line 71
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v3}, Lc8/Rq;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lc8/On;->setIcon(Landroid/graphics/drawable/Drawable;)Lc8/On;

    move-result-object v4

    invoke-virtual {v3}, Lc8/Rq;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/On;->setTitle(Ljava/lang/CharSequence;)Lc8/On;

    goto :goto_0
.end method
