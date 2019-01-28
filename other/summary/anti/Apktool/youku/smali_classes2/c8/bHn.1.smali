.class public Lc8/bHn;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# instance fields
.field private actionMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/ui/activity/actionbar/ActionMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/bHn;->actionMenuList:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0}, Lc8/bHn;->notifyDataChanged()V

    .line 43
    return-void
.end method

.method private addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/youku/ui/activity/actionbar/ActionMenu;

    .prologue
    .line 129
    iget-object v0, p0, Lc8/bHn;->actionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lc8/bHn;->actionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    return-void
.end method

.method private addNetActionBars()V
    .locals 6

    .prologue
    .line 68
    sget-object v3, Lc8/Efh;->mActionBars:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 69
    .local v2, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add net Menu ! & Menu size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 71
    sget-object v3, Lc8/Efh;->mActionBars:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Initial$HomeInit$SubTag;

    .line 72
    .local v1, "item":Lcom/youku/vo/Initial$HomeInit$SubTag;
    iget-object v4, v1, Lcom/youku/vo/Initial$HomeInit$SubTag;->id:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 70
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :sswitch_0
    const-string/jumbo v5, "1003"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "1019"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "1001"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "1039"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v5, "1004"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v5, "1011"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v5, "1005"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v5, "1008"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v5, "1022"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v5, "1021"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v5, "1032"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_1

    .line 74
    :pswitch_0
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->upload:Lcom/youku/ui/activity/actionbar/ActionMenu;

    iget-object v4, v1, Lcom/youku/vo/Initial$HomeInit$SubTag;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    .line 75
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->upload:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v3}, Lc8/bHn;->addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    goto/16 :goto_2

    .line 78
    :pswitch_1
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->search:Lcom/youku/ui/activity/actionbar/ActionMenu;

    iget-object v4, v1, Lcom/youku/vo/Initial$HomeInit$SubTag;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    .line 79
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->search:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v3}, Lc8/bHn;->addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    goto/16 :goto_2

    .line 82
    :pswitch_2
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->game:Lcom/youku/ui/activity/actionbar/ActionMenu;

    iget-object v4, v1, Lcom/youku/vo/Initial$HomeInit$SubTag;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    .line 83
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->game:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v3}, Lc8/bHn;->addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    goto/16 :goto_2

    .line 86
    :pswitch_3
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->app:Lcom/youku/ui/activity/actionbar/ActionMenu;

    iget-object v4, v1, Lcom/youku/vo/Initial$HomeInit$SubTag;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    .line 87
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->app:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v3}, Lc8/bHn;->addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    goto/16 :goto_2

    .line 90
    :pswitch_4
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->download:Lcom/youku/ui/activity/actionbar/ActionMenu;

    iget-object v4, v1, Lcom/youku/vo/Initial$HomeInit$SubTag;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    .line 91
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->download:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v3}, Lc8/bHn;->addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    goto/16 :goto_2

    .line 94
    :pswitch_5
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->saosao:Lcom/youku/ui/activity/actionbar/ActionMenu;

    iget-object v4, v1, Lcom/youku/vo/Initial$HomeInit$SubTag;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    .line 95
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->saosao:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v3}, Lc8/bHn;->addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    goto/16 :goto_2

    .line 98
    :pswitch_6
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->history:Lcom/youku/ui/activity/actionbar/ActionMenu;

    iget-object v4, v1, Lcom/youku/vo/Initial$HomeInit$SubTag;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    .line 99
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->history:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v3}, Lc8/bHn;->addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    goto/16 :goto_2

    .line 102
    :pswitch_7
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->setting:Lcom/youku/ui/activity/actionbar/ActionMenu;

    iget-object v4, v1, Lcom/youku/vo/Initial$HomeInit$SubTag;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    .line 103
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->setting:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v3}, Lc8/bHn;->addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    goto/16 :goto_2

    .line 106
    :pswitch_8
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->feedback:Lcom/youku/ui/activity/actionbar/ActionMenu;

    iget-object v4, v1, Lcom/youku/vo/Initial$HomeInit$SubTag;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    .line 107
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->feedback:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v3}, Lc8/bHn;->addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    goto/16 :goto_2

    .line 110
    :pswitch_9
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->rating:Lcom/youku/ui/activity/actionbar/ActionMenu;

    iget-object v4, v1, Lcom/youku/vo/Initial$HomeInit$SubTag;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    .line 111
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->rating:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v3}, Lc8/bHn;->addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    goto/16 :goto_2

    .line 114
    :pswitch_a
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->vip:Lcom/youku/ui/activity/actionbar/ActionMenu;

    iget-object v4, v1, Lcom/youku/vo/Initial$HomeInit$SubTag;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    .line 115
    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->vip:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v3}, Lc8/bHn;->addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    goto/16 :goto_2

    .line 121
    .end local v1    # "item":Lcom/youku/vo/Initial$HomeInit$SubTag;
    :cond_1
    return-void

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x170060 -> :sswitch_2
        0x170062 -> :sswitch_0
        0x170063 -> :sswitch_4
        0x170064 -> :sswitch_6
        0x170067 -> :sswitch_7
        0x17007f -> :sswitch_5
        0x170087 -> :sswitch_1
        0x17009e -> :sswitch_9
        0x17009f -> :sswitch_8
        0x1700be -> :sswitch_a
        0x1700c5 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private removeMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/youku/ui/activity/actionbar/ActionMenu;

    .prologue
    .line 125
    iget-object v0, p0, Lc8/bHn;->actionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public static setShowAsAction(Landroid/view/Menu;Lcom/youku/ui/activity/actionbar/ActionMenu;)V
    .locals 4
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "item"    # Lcom/youku/ui/activity/actionbar/ActionMenu;

    .prologue
    const/4 v3, 0x0

    .line 28
    iget v1, p1, Lcom/youku/ui/activity/actionbar/ActionMenu;->id:I

    iget-object v2, p1, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    invoke-interface {p0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 29
    .local v0, "menuitem":Landroid/view/MenuItem;
    iget v1, p1, Lcom/youku/ui/activity/actionbar/ActionMenu;->drawable:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 30
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public getActionMenus()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/ui/activity/actionbar/ActionMenu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lc8/bHn;->actionMenuList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyDataChanged()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lc8/bHn;->actionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    invoke-static {}, Lc8/Efh;->isShowNetMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lc8/bHn;->addNetActionBars()V

    .line 58
    :goto_0
    sget-object v0, Lcom/youku/ui/activity/actionbar/ActionMenu;->app:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-static {}, Lc8/Efh;->isShowAppExchange()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc8/bHn;->setMenuVisibility(Lcom/youku/ui/activity/actionbar/ActionMenu;Z)V

    .line 63
    sget-object v0, Lcom/youku/ui/activity/actionbar/ActionMenu;->search:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v0}, Lc8/bHn;->removeMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    .line 64
    sget-object v0, Lcom/youku/ui/activity/actionbar/ActionMenu;->game:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-direct {p0, v0}, Lc8/bHn;->removeMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    .line 65
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lc8/bHn;->actionMenuList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/youku/ui/activity/actionbar/ActionMenu;

    const/4 v2, 0x0

    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->history:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->upload:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->download:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->saosao:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMenuVisibility(Lcom/youku/ui/activity/actionbar/ActionMenu;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/youku/ui/activity/actionbar/ActionMenu;
    .param p2, "isVisible"    # Z

    .prologue
    .line 135
    if-eqz p2, :cond_0

    .line 136
    invoke-direct {p0, p1}, Lc8/bHn;->addMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0, p1}, Lc8/bHn;->removeMenu(Lcom/youku/ui/activity/actionbar/ActionMenu;)V

    goto :goto_0
.end method
