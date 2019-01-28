.class public Lc8/aHn;
.super Landroid/widget/RelativeLayout;
.source "CustomToolbar.java"


# instance fields
.field private history:Landroid/widget/ImageView;

.field private logo_text:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIsInited:Z

.field private search:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/aHn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/aHn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object p1, p0, Lc8/aHn;->mContext:Landroid/content/Context;

    .line 39
    sget v0, Lcom/youku/phone/R$layout;->custom_toolbar:I

    invoke-static {p1, v0, p0}, Lc8/aHn;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    invoke-direct {p0}, Lc8/aHn;->initView()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lc8/aHn;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lc8/aHn;

    .prologue
    .line 17
    iget-object v0, p0, Lc8/aHn;->search:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lc8/aHn;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lc8/aHn;

    .prologue
    .line 17
    iget-object v0, p0, Lc8/aHn;->history:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 45
    invoke-virtual {p0}, Lc8/aHn;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    sget v2, Lcom/youku/phone/R$id;->custom_tool_bar:I

    invoke-virtual {p0, v2}, Lc8/aHn;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lc8/aHn;->mContainer:Landroid/view/View;

    .line 47
    sget v2, Lcom/youku/phone/R$id;->logo_text:I

    invoke-virtual {p0, v2}, Lc8/aHn;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lc8/aHn;->logo_text:Landroid/widget/TextView;

    .line 48
    iget-object v2, p0, Lc8/aHn;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lc8/IEn;

    if-eqz v2, :cond_0

    .line 49
    iget-object v0, p0, Lc8/aHn;->mContext:Landroid/content/Context;

    check-cast v0, Lc8/IEn;

    .line 50
    .local v0, "activity":Lc8/IEn;
    new-instance v1, Lc8/YGn;

    invoke-direct {v1, p0, v0}, Lc8/YGn;-><init>(Lc8/aHn;Lc8/IEn;)V

    .line 60
    .local v1, "listener":Landroid/view/View$OnClickListener;
    sget v2, Lcom/youku/phone/R$id;->action_search:I

    invoke-virtual {p0, v2}, Lc8/aHn;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lc8/aHn;->search:Landroid/widget/ImageView;

    .line 61
    sget v2, Lcom/youku/phone/R$id;->action_history:I

    invoke-virtual {p0, v2}, Lc8/aHn;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lc8/aHn;->history:Landroid/widget/ImageView;

    .line 63
    iget-object v2, p0, Lc8/aHn;->search:Landroid/widget/ImageView;

    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->search:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v2, p0, Lc8/aHn;->history:Landroid/widget/ImageView;

    sget-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->history:Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v2, p0, Lc8/aHn;->search:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v2, p0, Lc8/aHn;->history:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/aHn;->mIsInited:Z

    goto :goto_0
.end method


# virtual methods
.method public getIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lc8/aHn;->logo_text:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImageViews()[Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/ImageView;

    const/4 v1, 0x0

    iget-object v2, p0, Lc8/aHn;->search:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lc8/aHn;->history:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public goneMenu()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lc8/ZGn;

    invoke-direct {v0, p0}, Lc8/ZGn;-><init>(Lc8/aHn;)V

    invoke-virtual {p0, v0}, Lc8/aHn;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lc8/aHn;->mIsInited:Z

    return v0
.end method

.method public setIcon(I)V
    .locals 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lc8/aHn;->logo_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/aHn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method

.method public setLogoText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lc8/aHn;->logo_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method
