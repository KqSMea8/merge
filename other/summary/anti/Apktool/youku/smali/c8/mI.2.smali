.class public Lc8/mI;
.super Lc8/gI;
.source "WebNaviBar.java"


# static fields
.field private static final INDEX_NEXT:I = 0x3

.field private static final INDEX_PRE:I = 0x2

.field private static final INDEX_REFRESH:I = 0x4


# instance fields
.field private drawableNext:[Landroid/graphics/drawable/Drawable;

.field private drawablePre:Landroid/graphics/drawable/Drawable;

.field private drawableRefresh:[Landroid/graphics/drawable/Drawable;

.field private imgNext:Landroid/widget/ImageButton;

.field private imgPre:Landroid/widget/ImageButton;

.field private imgRefresh:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private paint:Landroid/graphics/Paint;

.field private sideMargin:I

.field protected webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/webkit/WebView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "webview"    # Landroid/webkit/WebView;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lc8/gI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/16 v0, 0x46

    iput v0, p0, Lc8/mI;->sideMargin:I

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lc8/mI;->mHeight:I

    .line 41
    iput-object v1, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    .line 42
    iput-object v1, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    .line 43
    iput-object v1, p0, Lc8/mI;->imgPre:Landroid/widget/ImageButton;

    .line 44
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc8/mI;->drawableRefresh:[Landroid/graphics/drawable/Drawable;

    .line 45
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc8/mI;->drawableNext:[Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v1, p0, Lc8/mI;->drawablePre:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object v1, p0, Lc8/mI;->mContext:Landroid/content/Context;

    .line 51
    iput-object p4, p0, Lc8/mI;->webview:Landroid/webkit/WebView;

    .line 52
    invoke-virtual {p0, p1}, Lc8/mI;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "webview"    # Landroid/webkit/WebView;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lc8/gI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/16 v0, 0x46

    iput v0, p0, Lc8/mI;->sideMargin:I

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lc8/mI;->mHeight:I

    .line 41
    iput-object v1, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    .line 42
    iput-object v1, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    .line 43
    iput-object v1, p0, Lc8/mI;->imgPre:Landroid/widget/ImageButton;

    .line 44
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc8/mI;->drawableRefresh:[Landroid/graphics/drawable/Drawable;

    .line 45
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc8/mI;->drawableNext:[Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v1, p0, Lc8/mI;->drawablePre:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object v1, p0, Lc8/mI;->mContext:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lc8/mI;->webview:Landroid/webkit/WebView;

    .line 58
    invoke-virtual {p0, p1}, Lc8/mI;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webview"    # Landroid/webkit/WebView;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lc8/gI;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0x46

    iput v0, p0, Lc8/mI;->sideMargin:I

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lc8/mI;->mHeight:I

    .line 41
    iput-object v1, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    .line 42
    iput-object v1, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    .line 43
    iput-object v1, p0, Lc8/mI;->imgPre:Landroid/widget/ImageButton;

    .line 44
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc8/mI;->drawableRefresh:[Landroid/graphics/drawable/Drawable;

    .line 45
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc8/mI;->drawableNext:[Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v1, p0, Lc8/mI;->drawablePre:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object v1, p0, Lc8/mI;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lc8/mI;->webview:Landroid/webkit/WebView;

    .line 64
    invoke-virtual {p0, p1}, Lc8/mI;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lc8/mI;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lc8/mI;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lc8/mI;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lc8/mI;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/mI;->drawableRefresh:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lc8/mI;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/mI;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/mI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setClickListener(Landroid/widget/ImageButton;I)V
    .locals 1
    .param p1, "imgBtn"    # Landroid/widget/ImageButton;
    .param p2, "index"    # I

    .prologue
    .line 153
    new-instance v0, Lc8/lI;

    invoke-direct {v0, p0, p2}, Lc8/lI;-><init>(Lc8/mI;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method

.method private setNextIcon(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v7, 0x0

    .line 114
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    .line 115
    const/16 v2, 0x71

    .line 116
    .local v2, "id":I
    iget-object v4, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 117
    iget-object v4, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    const v5, -0xa0a0b

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 118
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lc8/mI;->mHeight:I

    iget v5, p0, Lc8/mI;->mHeight:I

    add-int/lit8 v5, v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    const/4 v4, 0x5

    const/16 v5, 0x70

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 121
    iget v4, p0, Lc8/mI;->sideMargin:I

    shl-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 122
    const-string/jumbo v0, "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"

    .line 123
    .local v0, "NEXT_ICON":Ljava/lang/String;
    const-string/jumbo v1, "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"

    .line 124
    .local v1, "NEXT_ICON_DIS":Ljava/lang/String;
    iget-object v4, p0, Lc8/mI;->drawableNext:[Landroid/graphics/drawable/Drawable;

    invoke-static {p2, v1}, Lc8/SH;->toDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v7

    .line 125
    iget-object v4, p0, Lc8/mI;->drawableNext:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    invoke-static {p2, v0}, Lc8/SH;->toDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 126
    iget-object v4, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    iget-object v5, p0, Lc8/mI;->drawableNext:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v4, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    iget-object v4, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5}, Lc8/mI;->setClickListener(Landroid/widget/ImageButton;I)V

    .line 129
    iget-object v4, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4, v3}, Lc8/mI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-void
.end method

.method private setPreIcon(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 95
    new-instance v3, Landroid/widget/ImageButton;

    invoke-direct {v3, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lc8/mI;->imgPre:Landroid/widget/ImageButton;

    .line 96
    const/16 v1, 0x70

    .line 97
    .local v1, "id":I
    iget-object v3, p0, Lc8/mI;->imgPre:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 98
    iget-object v3, p0, Lc8/mI;->imgPre:Landroid/widget/ImageButton;

    const v4, -0xa0a0b

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 99
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lc8/mI;->mHeight:I

    iget v4, p0, Lc8/mI;->mHeight:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    iget v3, p0, Lc8/mI;->sideMargin:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 104
    const-string/jumbo v0, "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"

    .line 105
    .local v0, "BACK_ICON":Ljava/lang/String;
    invoke-static {p2, v0}, Lc8/SH;->toDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lc8/mI;->drawablePre:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object v3, p0, Lc8/mI;->imgPre:Landroid/widget/ImageButton;

    iget-object v4, p0, Lc8/mI;->drawablePre:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v3, p0, Lc8/mI;->imgPre:Landroid/widget/ImageButton;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    iget-object v3, p0, Lc8/mI;->imgPre:Landroid/widget/ImageButton;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lc8/mI;->setClickListener(Landroid/widget/ImageButton;I)V

    .line 110
    iget-object v3, p0, Lc8/mI;->imgPre:Landroid/widget/ImageButton;

    invoke-virtual {p0, v3, v2}, Lc8/mI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    return-void
.end method

.method private setRefreshIcon(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v7, 0x0

    .line 133
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    .line 134
    const/16 v2, 0x72

    .line 135
    .local v2, "id":I
    iget-object v4, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 136
    iget-object v4, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    const v5, -0xa0a0b

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 137
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lc8/mI;->mHeight:I

    iget v5, p0, Lc8/mI;->mHeight:I

    add-int/lit8 v5, v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 139
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    iget v4, p0, Lc8/mI;->sideMargin:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 141
    const-string/jumbo v0, "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"

    .line 142
    .local v0, "REFRESH_ICON":Ljava/lang/String;
    const-string/jumbo v1, "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"

    .line 143
    .local v1, "STOP_ICON":Ljava/lang/String;
    iget-object v4, p0, Lc8/mI;->drawableRefresh:[Landroid/graphics/drawable/Drawable;

    invoke-static {p2, v1}, Lc8/SH;->toDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v7

    .line 144
    iget-object v4, p0, Lc8/mI;->drawableRefresh:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    invoke-static {p2, v0}, Lc8/SH;->toDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 146
    iget-object v4, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    iget-object v5, p0, Lc8/mI;->drawableRefresh:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v4, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    iget-object v4, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    const/4 v5, 0x4

    invoke-direct {p0, v4, v5}, Lc8/mI;->setClickListener(Landroid/widget/ImageButton;I)V

    .line 149
    iget-object v4, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4, v3}, Lc8/mI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    iput-object p1, p0, Lc8/mI;->mContext:Landroid/content/Context;

    .line 69
    const/16 v3, 0x6e

    invoke-virtual {p0, v3}, Lc8/mI;->setId(I)V

    .line 70
    const v3, -0xa0a0b

    invoke-virtual {p0, v3}, Lc8/mI;->setBackgroundColor(I)V

    .line 71
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lc8/mI;->setClickable(Z)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 75
    .local v2, "scale":F
    const/high16 v3, 0x42500000    # 52.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lc8/mI;->mHeight:I

    .line 76
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lc8/mI;->mHeight:I

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 77
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v0}, Lc8/mI;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lc8/mI;->paint:Landroid/graphics/Paint;

    .line 80
    iget-object v3, p0, Lc8/mI;->paint:Landroid/graphics/Paint;

    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lc8/mI;->sideMargin:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 86
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-direct {p0, p1, v1}, Lc8/mI;->setRefreshIcon(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 88
    invoke-direct {p0, p1, v1}, Lc8/mI;->setNextIcon(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 90
    invoke-direct {p0, p1, v1}, Lc8/mI;->setPreIcon(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 92
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-super {p0, p1}, Lc8/gI;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual {p0}, Lc8/mI;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lc8/mI;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    return-void
.end method

.method public resetState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 178
    iget-object v0, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lc8/mI;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    iget-object v1, p0, Lc8/mI;->drawableNext:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/mI;->imgPre:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lc8/mI;->imgPre:Landroid/widget/ImageButton;

    iget-object v1, p0, Lc8/mI;->drawablePre:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_1
    iget-object v0, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    iget-object v1, p0, Lc8/mI;->drawableRefresh:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_2
    return-void

    .line 182
    :cond_3
    iget-object v0, p0, Lc8/mI;->imgNext:Landroid/widget/ImageButton;

    iget-object v1, p0, Lc8/mI;->drawableNext:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public startLoading()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lc8/mI;->imgRefresh:Landroid/widget/ImageButton;

    iget-object v1, p0, Lc8/mI;->drawableRefresh:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method
