.class public Lc8/Dac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lc8/Nac;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:Landroid/app/Activity;

.field private e:Lc8/Rac;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/Runnable;

.field private k:Landroid/view/animation/Animation;

.field private l:Landroid/view/animation/Animation;

.field private m:Z

.field private n:Lc8/Lac;

.field private o:Lc8/MZb;

.field private p:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "AlibcAddCartWidgetUI"

    iput-object v0, p0, Lc8/Dac;->a:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/sdk/want/a/b;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/want/a/b;-><init>(Lc8/Dac;)V

    iput-object v0, p0, Lc8/Dac;->p:Ljava/util/List;

    iput-object p1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    iput-object p2, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Dac;->m:Z

    iget-object v0, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "alibc_want_taobao_icon"

    const-string/jumbo v2, "drawable"

    iget-object v3, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc8/Dac;->b:I

    iget-object v0, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "alibc_want_cart_icon"

    const-string/jumbo v2, "drawable"

    iget-object v3, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc8/Dac;->c:I

    return-void
.end method

.method static synthetic a(Lc8/Dac;Lc8/MZb;)Lc8/MZb;
    .locals 0

    iput-object p1, p0, Lc8/Dac;->o:Lc8/MZb;

    return-object p1
.end method

.method static synthetic a(Lc8/Dac;)V
    .locals 0

    invoke-direct {p0}, Lc8/Dac;->g()V

    return-void
.end method

.method static synthetic a(Lc8/Dac;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lc8/Dac;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string/jumbo v0, "want_view_visible"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Bac;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lc8/Dac;->d()V

    invoke-direct {p0}, Lc8/Dac;->e()V

    invoke-direct {p0, p1}, Lc8/Dac;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "tip is null, ignore update data"

    const-string/jumbo v1, "AlibcAddCartWidgetUI"

    invoke-static {v1, v0}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "addcart_error"

    invoke-static {v1, v0}, Lc8/Bac;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lc8/MZb;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lc8/Dac;->o:Lc8/MZb;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lc8/MZb;->mTips:Ljava/lang/String;

    iget-object v1, p0, Lc8/Dac;->o:Lc8/MZb;

    iget-object v1, v1, Lc8/MZb;->mTips:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lc8/MZb;->mItemID:Ljava/lang/String;

    iget-object v1, p0, Lc8/Dac;->o:Lc8/MZb;

    iget-object v1, v1, Lc8/MZb;->mItemID:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p2, p0, Lc8/Dac;->o:Lc8/MZb;

    const/16 v0, 0x899

    const-string/jumbo v1, "Page_Baichuan_Want_Cart"

    iget-object v2, p0, Lc8/Dac;->o:Lc8/MZb;

    iget-object v2, v2, Lc8/MZb;->mYbhpssParams:Ljava/util/HashMap;

    iget-object v3, p0, Lc8/Dac;->o:Lc8/MZb;

    iget-object v3, v3, Lc8/MZb;->mItemID:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lc8/wac;->sentUserTrack(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lc8/Dac;Z)Z
    .locals 0

    iput-boolean p1, p0, Lc8/Dac;->m:Z

    return p1
.end method

.method private b(Lc8/MZb;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lc8/MZb;->mItemID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lc8/MZb;->mItemID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p1, Lc8/MZb;->mTips:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lc8/Dac;)V
    .locals 0

    invoke-direct {p0}, Lc8/Dac;->h()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    new-instance v1, Lc8/Kac;

    invoke-direct {v1, p0, p1}, Lc8/Kac;-><init>(Lc8/Dac;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lc8/Lac;

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-direct {v0, v1, p1, p2}, Lc8/Lac;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/Dac;->n:Lc8/Lac;

    iget-object v0, p0, Lc8/Dac;->n:Lc8/Lac;

    invoke-virtual {v0}, Lc8/Lac;->show()V

    return-void
.end method

.method static synthetic c(Lc8/Dac;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "tv_goods_tips"

    const-string/jumbo v3, "id"

    iget-object v4, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    iget-object v2, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "alibc_want_anim_show_tip"

    const-string/jumbo v4, "anim"

    iget-object v5, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_2
    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method static synthetic d(Lc8/Dac;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "ibtn_addcart_logo"

    const-string/jumbo v3, "id"

    iget-object v4, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    iget-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    iget-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lc8/Dac;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lc8/Dac;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lc8/Dac;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lc8/Dac;->d:Landroid/app/Activity;

    return-object v0
.end method

.method private e()V
    .locals 5

    iget-object v0, p0, Lc8/Dac;->g:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "ll_addcart_logo"

    const-string/jumbo v3, "id"

    iget-object v4, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lc8/Dac;->g:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lc8/Dac;->l:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/Dac;->d:Landroid/app/Activity;

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "alibc_want_anim_show_logo"

    const-string/jumbo v3, "anim"

    iget-object v4, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lc8/Dac;->l:Landroid/view/animation/Animation;

    :cond_1
    iget-object v0, p0, Lc8/Dac;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lc8/Dac;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic f(Lc8/Dac;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lc8/Dac;->g:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "ll_addcart_logo"

    const-string/jumbo v3, "id"

    iget-object v4, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lc8/Dac;->g:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lc8/Dac;->k:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/Dac;->d:Landroid/app/Activity;

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "alibc_want_anim_logo_click"

    const-string/jumbo v3, "anim"

    iget-object v4, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lc8/Dac;->k:Landroid/view/animation/Animation;

    iget-object v0, p0, Lc8/Dac;->k:Landroid/view/animation/Animation;

    new-instance v1, Lc8/Eac;

    invoke-direct {v1, p0}, Lc8/Eac;-><init>(Lc8/Dac;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Lc8/Dac;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lc8/Dac;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lc8/Dac;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method static synthetic g(Lc8/Dac;)Lc8/Rac;
    .locals 1

    iget-object v0, p0, Lc8/Dac;->e:Lc8/Rac;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/Dac;->m:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lc8/Dac;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    new-instance v0, Lc8/Iac;

    invoke-direct {v0, p0}, Lc8/Iac;-><init>(Lc8/Dac;)V

    iput-object v0, p0, Lc8/Dac;->j:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lc8/Dac;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic h(Lc8/Dac;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lc8/Dac;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lc8/Dac;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Dac;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Dac;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lc8/Dac;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lc8/Dac;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/Dac;->d:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    iget-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lc8/Dac;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method static synthetic i(Lc8/Dac;)I
    .locals 1

    iget v0, p0, Lc8/Dac;->b:I

    return v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    new-instance v1, Lc8/Fac;

    invoke-direct {v1, p0}, Lc8/Fac;-><init>(Lc8/Dac;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic j(Lc8/Dac;)I
    .locals 1

    iget v0, p0, Lc8/Dac;->c:I

    return v0
.end method

.method private j()V
    .locals 5

    const/4 v1, 0x4

    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Dac;->m:Z

    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lc8/Dac;->d:Landroid/app/Activity;

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "alibc_want_anim_hide_tip"

    const-string/jumbo v3, "anim"

    iget-object v4, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lc8/Gac;

    invoke-direct {v1, p0}, Lc8/Gac;-><init>(Lc8/Dac;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic k(Lc8/Dac;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lc8/Dac;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic l(Lc8/Dac;)V
    .locals 0

    invoke-direct {p0}, Lc8/Dac;->j()V

    return-void
.end method

.method static synthetic m(Lc8/Dac;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lc8/Dac;->l:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Lc8/MZb;)V
    .locals 3

    iget-object v0, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lc8/Dac;->m:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lc8/Dac;->b(Lc8/MZb;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lc8/Dac;->a(Ljava/lang/String;Lc8/MZb;)V

    iget-object v1, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v0}, Lc8/Dac;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lc8/Dac;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lc8/Rac;)V
    .locals 0

    iput-object p1, p0, Lc8/Dac;->e:Lc8/Rac;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Dac;->m:Z

    const-string/jumbo v0, "addcart_success"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x899

    const-string/jumbo v1, "Page_Baichuan_Want_Disappear"

    invoke-static {v0, v1, v2, v2}, Lc8/wac;->sentUserTrack(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lc8/Dac;->i()V

    invoke-direct {p0, p1}, Lc8/Dac;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lc8/Dac;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Dac;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Dac;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/Dac;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lc8/Dac;->i()V

    iget-object v0, p0, Lc8/Dac;->n:Lc8/Lac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Dac;->n:Lc8/Lac;

    invoke-virtual {v0}, Lc8/Lac;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Dac;->m:Z

    iput-object v1, p0, Lc8/Dac;->n:Lc8/Lac;

    iput-object v1, p0, Lc8/Dac;->f:Landroid/view/ViewGroup;

    iput-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "ibtn_addcart_logo"

    const-string/jumbo v3, "id"

    iget-object v4, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "tv_goods_tips"

    const-string/jumbo v3, "id"

    iget-object v4, p0, Lc8/Dac;->d:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lc8/Dac;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Dac;->m:Z

    const/16 v0, 0x835

    const-string/jumbo v1, "Page_Baichuan_Want_Cart"

    iget-object v2, p0, Lc8/Dac;->o:Lc8/MZb;

    iget-object v2, v2, Lc8/MZb;->mYbhpssParams:Ljava/util/HashMap;

    iget-object v3, p0, Lc8/Dac;->o:Lc8/MZb;

    iget-object v3, v3, Lc8/MZb;->mItemID:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lc8/wac;->sentUserTrack(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/Dac;->e:Lc8/Rac;

    invoke-interface {v0}, Lc8/Rac;->d()Z

    invoke-direct {p0}, Lc8/Dac;->f()V

    :cond_1
    return-void
.end method
