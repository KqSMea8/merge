.class public Lc8/Nzk;
.super Ljava/lang/Object;
.source "CMSSkinManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mzk;,
        Lc8/Lzk;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x3e8

.field public static final ID_BOTTOM_BG:I = 0x7

.field public static final ID_HIDDEN:I = 0x8

.field public static final ID_HOME:I = 0x1

.field public static final ID_HOTSPOT:I = 0x2

.field public static final ID_PLANT:I = 0x4

.field public static final ID_USER:I = 0x5

.field public static final ID_USER_2:I = 0x6

.field public static final ID_VIP:I = 0x3

.field public static final TAB_DISCOVER:I = 0xa

.field public static final TAB_HOME:I = 0x9

.field public static final TAB_PLANET:I = 0xb

.field public static final TAB_USER:I = 0xc

.field public static final TAG:Ljava/lang/String; = "CMSSkinManager"

.field public static isBottomFinished:Z

.field public static isEntireChanged:Z


# instance fields
.field private bottomBgImg:Landroid/graphics/Bitmap;

.field private bottomModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Ozk;",
            ">;"
        }
    .end annotation
.end field

.field private data:Lcom/youku/phone/skin/data/CMSSkinData;

.field private hiddenImg:Landroid/graphics/Bitmap;

.field private mBgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomLayout:Landroid/view/ViewGroup;

.field private mSelectedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTabTagHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/youku/phone/skin/data/CMSSkinData$TabTag;",
            ">;"
        }
    .end annotation
.end field

.field private mUnSelectedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Nzk;->isEntireChanged:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lc8/Nzk;->mTabTagHashMap:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lc8/Nzk;->mSelectedMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lc8/Nzk;->mUnSelectedMap:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lc8/Nzk;->mBgMap:Ljava/util/HashMap;

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lc8/Kzk;)V
    .locals 0
    .param p1, "x0"    # Lc8/Kzk;

    .prologue
    .line 54
    invoke-direct {p0}, Lc8/Nzk;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lc8/Nzk;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/Nzk;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/Nzk;->mBgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;
    .locals 1
    .param p0, "x0"    # Lc8/Nzk;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    return-object v0
.end method

.method static synthetic access$202(Lc8/Nzk;Lcom/youku/phone/skin/data/CMSSkinData;)Lcom/youku/phone/skin/data/CMSSkinData;
    .locals 0
    .param p0, "x0"    # Lc8/Nzk;
    .param p1, "x1"    # Lcom/youku/phone/skin/data/CMSSkinData;

    .prologue
    .line 54
    iput-object p1, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    return-object p1
.end method

.method static synthetic access$300(Lc8/Nzk;Lcom/youku/phone/skin/data/CMSSkinData;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Nzk;
    .param p1, "x1"    # Lcom/youku/phone/skin/data/CMSSkinData;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lc8/Nzk;->isDataValid(Lcom/youku/phone/skin/data/CMSSkinData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lc8/Nzk;Ljava/util/List;Lcom/youku/phone/skin/data/CMSSkinData;)V
    .locals 0
    .param p0, "x0"    # Lc8/Nzk;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/youku/phone/skin/data/CMSSkinData;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lc8/Nzk;->preLoadTabImage(Ljava/util/List;Lcom/youku/phone/skin/data/CMSSkinData;)V

    return-void
.end method

.method static synthetic access$500(Lc8/Nzk;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/Nzk;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/Nzk;->mSelectedMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Nzk;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/Nzk;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/Nzk;->mUnSelectedMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lc8/Nzk;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/Nzk;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/Nzk;->mTabTagHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$802(Lc8/Nzk;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lc8/Nzk;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    iput-object p1, p0, Lc8/Nzk;->bottomBgImg:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$902(Lc8/Nzk;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lc8/Nzk;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    iput-object p1, p0, Lc8/Nzk;->hiddenImg:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private changeBottomBg()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 490
    iget-object v5, p0, Lc8/Nzk;->mBottomLayout:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lc8/Nzk;->isReady()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 492
    iget-object v5, p0, Lc8/Nzk;->mBottomLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    sget-object v6, Lc8/VLj;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/youku/phone/R$dimen;->homepage_tab_height_skin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 493
    iget-object v5, p0, Lc8/Nzk;->mBottomLayout:Landroid/view/ViewGroup;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lc8/Nzk;->bottomBgImg:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    iget-object v5, p0, Lc8/Nzk;->mBottomLayout:Landroid/view/ViewGroup;

    sget v6, Lcom/youku/phone/R$id;->layout_home:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 497
    .local v1, "homeLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 500
    iget-object v5, p0, Lc8/Nzk;->mBottomLayout:Landroid/view/ViewGroup;

    sget v6, Lcom/youku/phone/R$id;->layout_hotspot:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 501
    .local v0, "discoverLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 504
    iget-object v5, p0, Lc8/Nzk;->mBottomLayout:Landroid/view/ViewGroup;

    sget v6, Lcom/youku/phone/R$id;->layout_subscribe:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 505
    .local v2, "subLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object v5, p0, Lc8/Nzk;->mBottomLayout:Landroid/view/ViewGroup;

    sget v6, Lcom/youku/phone/R$id;->layout_user:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 509
    .local v3, "userLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 512
    iget-object v5, p0, Lc8/Nzk;->mBottomLayout:Landroid/view/ViewGroup;

    sget v6, Lcom/youku/phone/R$id;->layout_vip:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 513
    .local v4, "vipLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 516
    const/4 v5, 0x1

    .line 519
    .end local v0    # "discoverLayout":Landroid/widget/RelativeLayout;
    .end local v1    # "homeLayout":Landroid/widget/RelativeLayout;
    .end local v2    # "subLayout":Landroid/widget/RelativeLayout;
    .end local v3    # "userLayout":Landroid/widget/RelativeLayout;
    .end local v4    # "vipLayout":Landroid/widget/RelativeLayout;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lc8/Nzk;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lc8/Lzk;->access$100()Lc8/Nzk;

    move-result-object v0

    return-object v0
.end method

.method private isColorValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "isValid":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    const/4 v0, 0x1

    .line 486
    :cond_0
    :goto_0
    return v0

    .line 483
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataValid(Lcom/youku/phone/skin/data/CMSSkinData;)Z
    .locals 5
    .param p1, "data"    # Lcom/youku/phone/skin/data/CMSSkinData;

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 204
    iget-object v3, p1, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 205
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v4, :cond_6

    .line 206
    iget-object v3, p1, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;

    .line 207
    .local v1, "tabTag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 208
    iget-object v3, v1, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->selected:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->unselected:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->textColor:Ljava/lang/String;

    invoke-direct {p0, v3}, Lc8/Nzk;->isColorValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lc8/Nzk;->isEntireChanged:Z

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->background:Ljava/lang/String;

    .line 209
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 210
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skin data bottom invalid 111 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .end local v0    # "index":I
    .end local v1    # "tabTag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    :cond_1
    :goto_1
    return v2

    .line 214
    .restart local v0    # "index":I
    .restart local v1    # "tabTag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    :cond_2
    iget-object v3, v1, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->selected:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->unselected:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->textColor:Ljava/lang/String;

    invoke-direct {p0, v3}, Lc8/Nzk;->isColorValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 215
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skin data bottom invalid 222 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 219
    :cond_4
    sget-boolean v3, Lc8/Nzk;->isEntireChanged:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    iget-object v3, v1, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->background2:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skin data bottom invalid 333 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 205
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 228
    .end local v1    # "tabTag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    :cond_6
    sget-boolean v3, Lc8/Nzk;->isEntireChanged:Z

    if-eqz v3, :cond_7

    .line 229
    iget-object v3, p1, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottomBackground:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 234
    iget-object v3, p1, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->navigation:Lcom/youku/phone/skin/data/CMSSkinData$Navigation;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->navigation:Lcom/youku/phone/skin/data/CMSSkinData$Navigation;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$Navigation;->selectedTextColor:Ljava/lang/String;

    invoke-direct {p0, v3}, Lc8/Nzk;->isColorValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->navigation:Lcom/youku/phone/skin/data/CMSSkinData$Navigation;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$Navigation;->unselectedTextColor:Ljava/lang/String;

    .line 235
    invoke-direct {p0, v3}, Lc8/Nzk;->isColorValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->navigation:Lcom/youku/phone/skin/data/CMSSkinData$Navigation;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$Navigation;->hiddenImg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    iget-object v3, p1, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->search:Lcom/youku/phone/skin/data/CMSSkinData$Search;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->search:Lcom/youku/phone/skin/data/CMSSkinData$Search;

    iget-object v3, v3, Lcom/youku/phone/skin/data/CMSSkinData$Search;->textColor:Ljava/lang/String;

    invoke-direct {p0, v3}, Lc8/Nzk;->isColorValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method private static makeColorList(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 9
    .param p0, "selectedStr"    # Ljava/lang/String;
    .param p1, "unselectedStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 371
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 372
    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 374
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 375
    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 379
    :cond_1
    :goto_0
    invoke-static {p0}, Lc8/Iin;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 380
    .local v1, "selectedInt":I
    invoke-static {p1}, Lc8/Iin;->getColor(Ljava/lang/String;)I

    move-result v3

    .line 381
    .local v3, "unselectedInt":I
    new-array v2, v8, [[I

    .line 382
    .local v2, "states":[[I
    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    aput-object v4, v2, v6

    .line 383
    new-array v4, v6, [I

    aput-object v4, v2, v7

    .line 384
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v8, [I

    aput v1, v4, v6

    aput v3, v4, v7

    invoke-direct {v0, v2, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 385
    .local v0, "colorList":Landroid/content/res/ColorStateList;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "make color list ,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    return-object v0

    .line 376
    .end local v0    # "colorList":Landroid/content/res/ColorStateList;
    .end local v1    # "selectedInt":I
    .end local v2    # "states":[[I
    .end local v3    # "unselectedInt":I
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 377
    const-string/jumbo v4, "#"

    const-string/jumbo v5, "#CC"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private preDownloadImg(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isSelected"    # Z

    .prologue
    .line 357
    new-instance v0, Lc8/Mzk;

    invoke-direct {v0, p0, p1, p3}, Lc8/Mzk;-><init>(Lc8/Nzk;IZ)V

    .line 358
    .local v0, "listener":Lc8/Mzk;
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/mxf;->succListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/mxf;->fetch()Lc8/nxf;

    .line 361
    return-void
.end method

.method private preLoadBgImg(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 364
    new-instance v0, Lc8/Mzk;

    invoke-direct {v0, p0, p2}, Lc8/Mzk;-><init>(Lc8/Nzk;I)V

    .line 365
    .local v0, "listener":Lc8/Mzk;
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/mxf;->succListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/mxf;->fetch()Lc8/nxf;

    .line 366
    return-void
.end method

.method private preLoadTabImage(Ljava/util/List;Lcom/youku/phone/skin/data/CMSSkinData;)V
    .locals 10
    .param p2, "data"    # Lcom/youku/phone/skin/data/CMSSkinData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/skin/data/CMSSkinData$TabTag;",
            ">;",
            "Lcom/youku/phone/skin/data/CMSSkinData;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "tabTagList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/skin/data/CMSSkinData$TabTag;>;"
    const/4 v9, 0x5

    const/4 v8, 0x4

    .line 319
    invoke-virtual {p0}, Lc8/Nzk;->isReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;

    .line 324
    .local v2, "tabTag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    iget-object v5, v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->textColor:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 325
    iget-object v5, v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->textColor:Ljava/lang/String;

    const-string/jumbo v6, "#999999"

    invoke-static {v5, v6}, Lc8/Nzk;->makeColorList(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 327
    :cond_2
    iget-object v5, p0, Lc8/Nzk;->mTabTagHashMap:Ljava/util/HashMap;

    iget v6, v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 330
    .end local v2    # "tabTag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preLoadImage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/Nzk;->mTabTagHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    iget-object v4, p0, Lc8/Nzk;->mTabTagHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 333
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/youku/phone/skin/data/CMSSkinData$TabTag;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;

    .line 334
    .local v3, "tag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, v3, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->selected:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {p0, v4, v6, v7}, Lc8/Nzk;->preDownloadImg(ILjava/lang/String;Z)V

    .line 335
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, v3, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->unselected:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7}, Lc8/Nzk;->preDownloadImg(ILjava/lang/String;Z)V

    goto :goto_2

    .line 338
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/youku/phone/skin/data/CMSSkinData$TabTag;>;"
    .end local v3    # "tag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    :cond_4
    sget-boolean v4, Lc8/Nzk;->isEntireChanged:Z

    if-eqz v4, :cond_0

    .line 339
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_3
    if-ge v1, v9, :cond_7

    .line 340
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;

    .line 342
    .restart local v2    # "tabTag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    if-eq v1, v8, :cond_5

    .line 343
    iget-object v4, v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->background:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v4, v5}, Lc8/Nzk;->preLoadBgImg(Ljava/lang/String;I)V

    .line 345
    :cond_5
    if-ne v1, v8, :cond_6

    .line 346
    iget-object v4, v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->background:Ljava/lang/String;

    invoke-direct {p0, v4, v9}, Lc8/Nzk;->preLoadBgImg(Ljava/lang/String;I)V

    .line 347
    iget-object v4, v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->background2:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-direct {p0, v4, v5}, Lc8/Nzk;->preLoadBgImg(Ljava/lang/String;I)V

    .line 339
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 351
    .end local v2    # "tabTag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    :cond_7
    iget-object v4, p2, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottomBackground:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-direct {p0, v4, v5}, Lc8/Nzk;->preLoadBgImg(Ljava/lang/String;I)V

    .line 352
    iget-object v4, p2, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->navigation:Lcom/youku/phone/skin/data/CMSSkinData$Navigation;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData$Navigation;->hiddenImg:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-direct {p0, v4, v5}, Lc8/Nzk;->preLoadBgImg(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public displayTabImage()V
    .locals 6

    .prologue
    .line 254
    iget-object v2, p0, Lc8/Nzk;->bottomModelList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Nzk;->bottomModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lc8/Nzk;->isBottomFinished:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lc8/Nzk;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "displayTabImage, iamgeviews size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Nzk;->bottomModelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    iget-object v2, p0, Lc8/Nzk;->bottomModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Ozk;

    .line 261
    .local v1, "model":Lc8/Ozk;
    iget-object v3, p0, Lc8/Nzk;->mTabTagHashMap:Ljava/util/HashMap;

    iget v4, v1, Lc8/Ozk;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 266
    .end local v1    # "model":Lc8/Ozk;
    :cond_3
    iget-object v2, p0, Lc8/Nzk;->bottomModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Ozk;

    .line 269
    .restart local v1    # "model":Lc8/Ozk;
    :try_start_0
    iget-object v4, v1, Lc8/Ozk;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lc8/Nzk;->mTabTagHashMap:Ljava/util/HashMap;

    iget v5, v1, Lc8/Ozk;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;

    iget-object v2, v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->drawableBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v4, v1, Lc8/Ozk;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lc8/Nzk;->mTabTagHashMap:Ljava/util/HashMap;

    iget v5, v1, Lc8/Ozk;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;

    iget-object v2, v2, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CMSSkinManager"

    const-string/jumbo v4, "displayTabImage, exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "model":Lc8/Ozk;
    :cond_4
    sget-boolean v2, Lc8/Nzk;->isEntireChanged:Z

    if-eqz v2, :cond_5

    .line 278
    invoke-direct {p0}, Lc8/Nzk;->changeBottomBg()Z

    .line 281
    :cond_5
    const/4 v2, 0x1

    sput-boolean v2, Lc8/Nzk;->isBottomFinished:Z

    goto/16 :goto_0
.end method

.method public getBundleByType(I)Landroid/os/Bundle;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v0, "bundle":Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 308
    :goto_0
    const-string/jumbo v1, "skin_navi_text_unselected"

    iget-object v2, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    iget-object v2, v2, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v2, v2, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->navigation:Lcom/youku/phone/skin/data/CMSSkinData$Navigation;

    iget-object v2, v2, Lcom/youku/phone/skin/data/CMSSkinData$Navigation;->unselectedTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v1, "skin_navi_text_selected"

    iget-object v2, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    iget-object v2, v2, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v2, v2, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->navigation:Lcom/youku/phone/skin/data/CMSSkinData$Navigation;

    iget-object v2, v2, Lcom/youku/phone/skin/data/CMSSkinData$Navigation;->selectedTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-object v0

    .line 293
    :pswitch_0
    const-string/jumbo v2, "skin_bg_img"

    iget-object v1, p0, Lc8/Nzk;->mBgMap:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 294
    const-string/jumbo v1, "skin_home_all_unselected"

    iget-object v2, p0, Lc8/Nzk;->hiddenImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 295
    const-string/jumbo v1, "skin_home_search_text_color"

    iget-object v2, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    iget-object v2, v2, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v2, v2, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->search:Lcom/youku/phone/skin/data/CMSSkinData$Search;

    iget-object v2, v2, Lcom/youku/phone/skin/data/CMSSkinData$Search;->textColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_1
    const-string/jumbo v2, "skin_bg_img"

    iget-object v1, p0, Lc8/Nzk;->mBgMap:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 301
    :pswitch_2
    const-string/jumbo v2, "skin_bg_img"

    iget-object v1, p0, Lc8/Nzk;->mBgMap:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 304
    :pswitch_3
    const-string/jumbo v2, "skin_bg_img"

    iget-object v1, p0, Lc8/Nzk;->mBgMap:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 305
    const-string/jumbo v2, "skin_bg_img_2"

    iget-object v1, p0, Lc8/Nzk;->mBgMap:Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isReady()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v3, p0, Lc8/Nzk;->mTabTagHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v2

    .line 395
    :cond_1
    iget-object v3, p0, Lc8/Nzk;->mTabTagHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;

    .line 396
    .local v1, "tag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    iget-object v4, v1, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->drawableBg:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    goto :goto_0

    .line 401
    .end local v1    # "tag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    :cond_3
    sget-boolean v3, Lc8/Nzk;->isEntireChanged:Z

    if-eqz v3, :cond_6

    .line 402
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_1
    const/4 v3, 0x6

    if-gt v0, v3, :cond_5

    .line 403
    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lc8/Nzk;->mBgMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 402
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    :cond_5
    iget-object v3, p0, Lc8/Nzk;->bottomBgImg:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Nzk;->hiddenImg:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 412
    .end local v0    # "index":I
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setBottomModelList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ozk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/skin/data/BottomTabSkinModel;>;"
    iput-object p1, p0, Lc8/Nzk;->bottomModelList:Ljava/util/List;

    .line 286
    return-void
.end method

.method public setBottomViews(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "bottomLayout"    # Landroid/view/ViewGroup;

    .prologue
    .line 314
    iput-object p1, p0, Lc8/Nzk;->mBottomLayout:Landroid/view/ViewGroup;

    .line 315
    return-void
.end method

.method public setData(Lcom/youku/phone/skin/data/CMSSkinData;)V
    .locals 7
    .param p1, "data1"    # Lcom/youku/phone/skin/data/CMSSkinData;

    .prologue
    const/4 v5, 0x5

    .line 164
    :try_start_0
    iput-object p1, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    .line 166
    iget-object v4, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v2, "remainList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/skin/data/CMSSkinData$TabTag;>;"
    const/4 v1, 0x0

    .line 169
    .local v1, "index":I
    iget-object v4, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;

    .line 170
    .local v3, "tag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    iget v5, v3, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->id:I

    const/4 v6, 0x6

    if-ge v5, v6, :cond_0

    .line 171
    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v3    # "tag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    :cond_1
    iget-object v4, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iput-object v2, v4, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remain 5 tags , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .end local v1    # "index":I
    .end local v2    # "remainList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/skin/data/CMSSkinData$TabTag;>;"
    :cond_2
    iget-object v4, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottomBackground:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 180
    const/4 v4, 0x1

    sput-boolean v4, Lc8/Nzk;->isEntireChanged:Z

    .line 183
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skin data is entire changed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lc8/Nzk;->isEntireChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    iget-object v4, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    invoke-direct {p0, v4}, Lc8/Nzk;->isDataValid(Lcom/youku/phone/skin/data/CMSSkinData;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 194
    :goto_1
    return-void

    .line 189
    :cond_4
    iget-object v4, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v4, v4, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    iget-object v5, p0, Lc8/Nzk;->data:Lcom/youku/phone/skin/data/CMSSkinData;

    invoke-direct {p0, v4, v5}, Lc8/Nzk;->preLoadTabImage(Ljava/util/List;Lcom/youku/phone/skin/data/CMSSkinData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
