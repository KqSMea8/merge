.class public Lc8/Tac;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;

.field private c:Landroid/app/Activity;

.field private d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "WantWidgetFactory"

    iput-object v0, p0, Lc8/Tac;->a:Ljava/lang/String;

    iput-object p1, p0, Lc8/Tac;->c:Landroid/app/Activity;

    iput-object p2, p0, Lc8/Tac;->d:Landroid/view/ViewGroup;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Tac;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;)Lc8/Rac;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lc8/Tac;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lc8/Tac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Rac;

    invoke-interface {v0}, Lc8/Rac;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Lc8/Rac;
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "add_cart"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lc8/Pac;

    iget-object v1, p0, Lc8/Tac;->c:Landroid/app/Activity;

    iget-object v2, p0, Lc8/Tac;->d:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lc8/Pac;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    :cond_0
    return-object v0
.end method

.method private c(Ljava/lang/String;)Lc8/Rac;
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lc8/Tac;->a(Ljava/lang/String;)Lc8/Rac;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lc8/Tac;->b(Ljava/lang/String;)Lc8/Rac;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lc8/Tac;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/Tac;->b:Ljava/util/ArrayList;

    :cond_3
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/Tac;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc8/Tac;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lc8/Tac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Rac;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lc8/Rac;->b()V

    goto :goto_0
.end method

.method public a(Lc8/Sac;Ljava/util/HashMap;Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;)V
    .locals 1

    invoke-interface {p1}, Lc8/Sac;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tac;->c(Ljava/lang/String;)Lc8/Rac;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lc8/Rac;->a(Lc8/Sac;Ljava/util/HashMap;Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "WantWidgetFactory"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/Tac;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc8/Tac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Rac;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lc8/Rac;->e()V

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lc8/Tac;->b:Ljava/util/ArrayList;

    iput-object v2, p0, Lc8/Tac;->c:Landroid/app/Activity;

    goto :goto_0
.end method
