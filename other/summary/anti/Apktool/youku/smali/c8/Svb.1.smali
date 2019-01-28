.class public Lc8/Svb;
.super Ljava/lang/Object;
.source "NearlyAround.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Rvb;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private huichang_cache:Ljava/lang/String;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Tvb;",
            ">;"
        }
    .end annotation
.end field

.field private linearLayout:Landroid/widget/LinearLayout;

.field private listener:Lc8/Rvb;

.field private mRootView:Landroid/view/ViewGroup;

.field private nearlyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Tvb;",
            ">;"
        }
    .end annotation
.end field

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lc8/Svb;->context:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lc8/Svb;->init()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lc8/Svb;)Lc8/Rvb;
    .locals 1
    .param p0, "x0"    # Lc8/Svb;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/Svb;->listener:Lc8/Rvb;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Svb;->nearlyList:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lc8/Svb;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$layout;->huichang_nearlyaround_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc8/Svb;->mRootView:Landroid/view/ViewGroup;

    .line 47
    iget-object v0, p0, Lc8/Svb;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lc8/Svb;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/youku/phone/R$id;->nearlyaround_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Svb;->titleTv:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lc8/Svb;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/youku/phone/R$id;->nearlyaround_linear:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lc8/Svb;->linearLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lc8/Svb;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setOnNearlyItemClickListener(Lc8/Rvb;)V
    .locals 0
    .param p1, "listener"    # Lc8/Rvb;

    .prologue
    .line 111
    iput-object p1, p0, Lc8/Svb;->listener:Lc8/Rvb;

    .line 112
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lc8/Svb;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public updataList()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 56
    iget-object v6, p0, Lc8/Svb;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 57
    iget-object v6, p0, Lc8/Svb;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 58
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "huichang_footstep_cache"

    const-string/jumbo v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lc8/Svb;->huichang_cache:Ljava/lang/String;

    .line 60
    iget-object v6, p0, Lc8/Svb;->huichang_cache:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    iget-object v6, p0, Lc8/Svb;->mRootView:Landroid/view/ViewGroup;

    sget v7, Lcom/youku/phone/R$id;->nearlyaround_title1:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    :try_start_0
    iget-object v6, p0, Lc8/Svb;->huichang_cache:Ljava/lang/String;

    const-class v7, Lc8/Tvb;

    invoke-static {v6, v7}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lc8/Svb;->itemList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    iget-object v6, p0, Lc8/Svb;->itemList:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lc8/Svb;->itemList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_3

    .line 70
    :cond_2
    iget-object v6, p0, Lc8/Svb;->mRootView:Landroid/view/ViewGroup;

    sget v7, Lcom/youku/phone/R$id;->nearlyaround_title1:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v6, p0, Lc8/Svb;->mRootView:Landroid/view/ViewGroup;

    sget v7, Lcom/youku/phone/R$id;->nearlyaround_title1:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v6, p0, Lc8/Svb;->nearlyList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 75
    iget-object v6, p0, Lc8/Svb;->nearlyList:Ljava/util/List;

    iget-object v7, p0, Lc8/Svb;->itemList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v6, p0, Lc8/Svb;->itemList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 80
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 81
    iget-object v6, p0, Lc8/Svb;->itemList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Tvb;

    .line 82
    .local v2, "item":Lc8/Tvb;
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lc8/Svb;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Lc8/Tvb;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lc8/Jgg;->dip2px(F)I

    move-result v6

    invoke-virtual {v3, v6, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 86
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const-string/jumbo v6, "#fffef0"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    iget-object v6, p0, Lc8/Svb;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/youku/phone/R$drawable;->huichang_nearlyaround_tv_bg:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 91
    new-instance v6, Lc8/Qvb;

    invoke-direct {v6, p0}, Lc8/Qvb;-><init>(Lc8/Svb;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v6, p0, Lc8/Svb;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "item":Lc8/Tvb;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "textView":Landroid/widget/TextView;
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method
