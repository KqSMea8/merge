.class public Lc8/Pac;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/Rac;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lc8/MZb;

.field private c:Lc8/MZb;

.field private d:Lc8/Nac;

.field private e:Lc8/aac;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "AddCartWidget"

    iput-object v0, p0, Lc8/Pac;->a:Ljava/lang/String;

    new-instance v0, Lc8/Dac;

    invoke-direct {v0, p1, p2}, Lc8/Dac;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lc8/Pac;->d:Lc8/Nac;

    iget-object v0, p0, Lc8/Pac;->d:Lc8/Nac;

    invoke-interface {v0, p0}, Lc8/Nac;->a(Lc8/Rac;)V

    return-void
.end method

.method private a(Lc8/MZb;)V
    .locals 1

    iget-object v0, p0, Lc8/Pac;->d:Lc8/Nac;

    invoke-interface {v0, p1}, Lc8/Nac;->a(Lc8/MZb;)V

    return-void
.end method

.method static synthetic a(Lc8/Pac;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc8/Pac;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v0, "FAIL_SYS_LOGIN_CANCEL"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "210121"

    move-object p2, v1

    :cond_0
    :goto_0
    invoke-direct {p0, v0, p2}, Lc8/Pac;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, "FAIL_SYS_ACCESS_TOKEN_CANCEL"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "210131"

    move-object p2, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "210151"

    const-string/jumbo v2, "ADD_CART_FAILURE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p2, v1

    goto :goto_0
.end method

.method static synthetic b(Lc8/Pac;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc8/Pac;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc8/Pac;->d:Lc8/Nac;

    invoke-interface {v0, p1, p2}, Lc8/Nac;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "addcart_success"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lc8/Pac;->g()V

    :cond_0
    iget-object v0, p0, Lc8/Pac;->b:Lc8/MZb;

    invoke-direct {p0, v0}, Lc8/Pac;->a(Lc8/MZb;)V

    return-void
.end method

.method private declared-synchronized b(Lc8/Sac;Ljava/util/HashMap;Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;)Z
    .locals 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/Pac;->b:Lc8/MZb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Pac;->b:Lc8/MZb;

    iget-object v1, v1, Lc8/MZb;->mItemID:Ljava/lang/String;

    invoke-interface {p1}, Lc8/Sac;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Pac;->b:Lc8/MZb;

    iget-object v1, v1, Lc8/MZb;->mTips:Ljava/lang/String;

    invoke-interface {p1}, Lc8/Sac;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Pac;->d:Lc8/Nac;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Pac;->d:Lc8/Nac;

    invoke-interface {v1}, Lc8/Nac;->a()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "AddCartWidget"

    const-string/jumbo v1, "same data, ignore"

    invoke-static {v0, v1}, Lc8/vac;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v1, "baichuan_cart_want"

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lc8/wac;->preprocessYbhpss(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    new-instance v1, Lc8/MZb;

    invoke-direct {v1}, Lc8/MZb;-><init>()V

    iput-object v1, p0, Lc8/Pac;->b:Lc8/MZb;

    iget-object v1, p0, Lc8/Pac;->b:Lc8/MZb;

    invoke-interface {p1}, Lc8/Sac;->getKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/MZb;->mItemID:Ljava/lang/String;

    iget-object v1, p0, Lc8/Pac;->b:Lc8/MZb;

    invoke-interface {p1}, Lc8/Sac;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/MZb;->mTips:Ljava/lang/String;

    iget-object v1, p0, Lc8/Pac;->b:Lc8/MZb;

    iput-object p3, v1, Lc8/MZb;->mTaokeParams:Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;

    iget-object v1, p0, Lc8/Pac;->b:Lc8/MZb;

    iput-object p2, v1, Lc8/MZb;->mYbhpssParams:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Pac;->b:Lc8/MZb;

    iput-object v0, p0, Lc8/Pac;->c:Lc8/MZb;

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Pac;->b:Lc8/MZb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Pac;->b:Lc8/MZb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Pac;->c:Lc8/MZb;

    iput-object v0, p0, Lc8/Pac;->b:Lc8/MZb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lc8/Pac;->b:Lc8/MZb;

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Pac;->c:Lc8/MZb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .locals 4

    const-string/jumbo v0, "BC_WantAddCart"

    invoke-static {v0}, Lc8/cac;->checkLicense(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "220142"

    const-string/jumbo v0, "\u7ec4\u4ef6\u672a\u6388\u6743"

    :goto_0
    const-string/jumbo v2, "addcart_error"

    invoke-static {v2, v0}, Lc8/Bac;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "BCWant"

    const-string/jumbo v3, "addCart"

    invoke-static {v2, v3, v1, v0}, Lc8/wac;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "220141"

    const-string/jumbo v0, "\u7ec4\u4ef6\u627e\u4e0d\u5230"

    goto :goto_0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lc8/Pac;->c:Lc8/MZb;

    if-nez v0, :cond_0

    const-string/jumbo v0, "AddCartWidget"

    const-string/jumbo v1, "add data is null"

    invoke-static {v0, v1}, Lc8/vac;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc8/Pac;->e:Lc8/aac;

    iget-object v1, p0, Lc8/Pac;->c:Lc8/MZb;

    new-instance v2, Lc8/Qac;

    invoke-direct {v2, p0}, Lc8/Qac;-><init>(Lc8/Pac;)V

    invoke-virtual {v0, v1, v2}, Lc8/aac;->execute(Ljava/lang/Object;Lc8/bac;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "add_cart"

    return-object v0
.end method

.method public a(Lc8/Sac;Ljava/util/HashMap;Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;)V
    .locals 2

    iget-object v0, p0, Lc8/Pac;->e:Lc8/aac;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lc8/cac;->getComponentByType(I)Lc8/aac;

    move-result-object v0

    iput-object v0, p0, Lc8/Pac;->e:Lc8/aac;

    :cond_0
    iget-object v0, p0, Lc8/Pac;->e:Lc8/aac;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lc8/Pac;->i()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "BCWant"

    const-string/jumbo v1, "addCart"

    invoke-static {v0, v1}, Lc8/wac;->sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lc8/Pac;->b(Lc8/Sac;Ljava/util/HashMap;Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Pac;->b:Lc8/MZb;

    invoke-direct {p0, v0}, Lc8/Pac;->a(Lc8/MZb;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lc8/Pac;->h()V

    iget-object v0, p0, Lc8/Pac;->d:Lc8/Nac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Pac;->d:Lc8/Nac;

    invoke-interface {v0}, Lc8/Nac;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lc8/Pac;->b:Lc8/MZb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Pac;->b:Lc8/MZb;

    invoke-direct {p0, v0}, Lc8/Pac;->a(Lc8/MZb;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    invoke-direct {p0}, Lc8/Pac;->f()V

    invoke-direct {p0}, Lc8/Pac;->j()V

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 2

    const-string/jumbo v0, "AddCartWidget"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/Pac;->d:Lc8/Nac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Pac;->d:Lc8/Nac;

    invoke-interface {v0}, Lc8/Nac;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Pac;->d:Lc8/Nac;

    return-void
.end method
