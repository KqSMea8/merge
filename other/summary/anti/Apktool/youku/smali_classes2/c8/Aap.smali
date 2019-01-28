.class public Lc8/Aap;
.super Landroid/app/Dialog;
.source "SimpleMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xap;,
        Lc8/zap;,
        Lc8/yap;
    }
.end annotation


# instance fields
.field private adapter:Lc8/yap;

.field private context:Lc8/IEn;

.field private inflater:Landroid/view/LayoutInflater;

.field private menuClick:Lc8/xap;

.field private onMenuOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private subMenu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/ui/activity/actionbar/ActionMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/IEn;Ljava/util/List;Lc8/xap;)V
    .locals 1
    .param p1, "context"    # Lc8/IEn;
    .param p3, "menuClick"    # Lc8/xap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/IEn;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/ui/activity/actionbar/ActionMenu;",
            ">;",
            "Lc8/xap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "subMenu":Ljava/util/List;, "Ljava/util/List<Lcom/youku/ui/activity/actionbar/ActionMenu;>;"
    sget v0, Lcom/youku/phone/R$style;->MyDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    new-instance v0, Lc8/wap;

    invoke-direct {v0, p0}, Lc8/wap;-><init>(Lc8/Aap;)V

    iput-object v0, p0, Lc8/Aap;->onMenuOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 45
    iput-object p1, p0, Lc8/Aap;->context:Lc8/IEn;

    .line 46
    iput-object p3, p0, Lc8/Aap;->menuClick:Lc8/xap;

    .line 47
    iput-object p2, p0, Lc8/Aap;->subMenu:Ljava/util/List;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lc8/Aap;->inflater:Landroid/view/LayoutInflater;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lc8/Aap;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/Aap;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Aap;->subMenu:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Aap;)Lc8/xap;
    .locals 1
    .param p0, "x0"    # Lc8/Aap;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Aap;->menuClick:Lc8/xap;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Aap;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lc8/Aap;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Aap;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 53
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lc8/Aap;->setCanceledOnTouchOutside(Z)V

    .line 56
    invoke-virtual {p0}, Lc8/Aap;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x35

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 57
    invoke-virtual {p0}, Lc8/Aap;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lc8/Aap;->context:Lc8/IEn;

    invoke-virtual {v2}, Lc8/IEn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$dimen;->abc_action_bar_default_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 58
    invoke-virtual {p0}, Lc8/Aap;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 59
    invoke-virtual {p0}, Lc8/Aap;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    sget v1, Lcom/youku/phone/R$layout;->popmenu:I

    invoke-virtual {p0, v1}, Lc8/Aap;->setContentView(I)V

    .line 62
    sget v1, Lcom/youku/phone/R$id;->lv:I

    invoke-virtual {p0, v1}, Lc8/Aap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 63
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v1, Lc8/yap;

    invoke-direct {v1, p0}, Lc8/yap;-><init>(Lc8/Aap;)V

    iput-object v1, p0, Lc8/Aap;->adapter:Lc8/yap;

    .line 64
    iget-object v1, p0, Lc8/Aap;->adapter:Lc8/yap;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v1, p0, Lc8/Aap;->onMenuOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    return-void
.end method

.method public updateMenu(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/ui/activity/actionbar/ActionMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "subMenu":Ljava/util/List;, "Ljava/util/List<Lcom/youku/ui/activity/actionbar/ActionMenu;>;"
    iput-object p1, p0, Lc8/Aap;->subMenu:Ljava/util/List;

    .line 116
    iget-object v0, p0, Lc8/Aap;->adapter:Lc8/yap;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lc8/Aap;->adapter:Lc8/yap;

    invoke-virtual {v0}, Lc8/yap;->notifyDataSetChanged()V

    .line 119
    :cond_0
    return-void
.end method
