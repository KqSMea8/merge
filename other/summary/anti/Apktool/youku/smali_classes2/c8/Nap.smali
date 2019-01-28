.class public Lc8/Nap;
.super Landroid/widget/HorizontalScrollView;
.source "TitleTabIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Lap;,
        Lc8/Map;
    }
.end annotation


# static fields
.field public static final HOME_PAGE:I = 0x64

.field public static final HOT_SPOT_PAGE:I = 0x65

.field public static final PARSE_FIRST:F = 0.3f

.field public static final PARSE_SECOND:F = 0.7f

.field public static final POSITION_ORIGIN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "TitleTabIndicator"


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private mClickedPosition:I

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/EVo;",
            ">;"
        }
    .end annotation
.end field

.field private mIndecatorColor:I

.field private mIsClicked:Z

.field private mLastUTPosition:I

.field private mOnTabClickListener:Lc8/Lap;

.field private mPageFlag:I

.field private mScreenWidth:I

.field private mSliderHeight:I

.field private mSliderWidthMax:F

.field private mSliderWidthMix:F

.field private mTextColorDef:I

.field private mTextColorSelected:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/Nap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, -0x1

    const v7, -0xbbbbbc

    const v5, -0xd96d01

    const/4 v6, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput v6, p0, Lc8/Nap;->mLastUTPosition:I

    .line 49
    const/4 v4, 0x0

    iput-object v4, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lc8/Nap;->mDataList:Ljava/util/List;

    .line 55
    const/4 v4, 0x0

    iput v4, p0, Lc8/Nap;->currentPositionOffset:F

    .line 57
    iput-boolean v6, p0, Lc8/Nap;->mIsClicked:Z

    .line 58
    iput v6, p0, Lc8/Nap;->mClickedPosition:I

    .line 60
    const/high16 v4, 0x42480000    # 50.0f

    iput v4, p0, Lc8/Nap;->mSliderWidthMix:F

    .line 61
    const/high16 v4, 0x42f00000    # 120.0f

    iput v4, p0, Lc8/Nap;->mSliderWidthMax:F

    .line 62
    const/16 v4, 0xa

    iput v4, p0, Lc8/Nap;->mSliderHeight:I

    .line 63
    const/16 v4, 0x320

    iput v4, p0, Lc8/Nap;->mScreenWidth:I

    .line 64
    iput v8, p0, Lc8/Nap;->mPageFlag:I

    .line 67
    iput v7, p0, Lc8/Nap;->mTextColorDef:I

    .line 68
    iput v5, p0, Lc8/Nap;->mTextColorSelected:I

    .line 69
    iput v5, p0, Lc8/Nap;->mIndecatorColor:I

    .line 79
    invoke-virtual {p0, v6}, Lc8/Nap;->setWillNotDraw(Z)V

    .line 80
    iput-object p1, p0, Lc8/Nap;->mContext:Landroid/content/Context;

    .line 82
    sget-object v4, Lcom/youku/phone/R$styleable;->TitleTabIndicator:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/youku/phone/R$styleable;->TitleTabIndicator_tab_text_color:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lc8/Nap;->mTextColorDef:I

    .line 85
    sget v4, Lcom/youku/phone/R$styleable;->TitleTabIndicator_tab_text_color_selected:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lc8/Nap;->mTextColorSelected:I

    .line 86
    sget v4, Lcom/youku/phone/R$styleable;->TitleTabIndicator_tab_indicator_color:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lc8/Nap;->mIndecatorColor:I

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    .line 90
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lc8/Nap;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$dimen;->home_tool_bar_padding_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 92
    .local v1, "leftPadding":I
    iget-object v4, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$dimen;->home_tool_bar_padding_right:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 93
    .local v3, "rightPadding":I
    iget-object v4, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    iget-object v4, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v2}, Lc8/Nap;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {p0, v6}, Lc8/Nap;->setHorizontalScrollBarEnabled(Z)V

    .line 98
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lc8/Nap;->rectPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v4, p0, Lc8/Nap;->rectPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v4, p0, Lc8/Nap;->rectPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v4, p0, Lc8/Nap;->rectPaint:Landroid/graphics/Paint;

    iget v5, p0, Lc8/Nap;->mIndecatorColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v4, p0, Lc8/Nap;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$dimen;->title_bar_slider_width_min:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lc8/Nap;->mSliderWidthMix:F

    .line 104
    iget-object v4, p0, Lc8/Nap;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$dimen;->title_bar_slider_width_max:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lc8/Nap;->mSliderWidthMax:F

    .line 105
    iget-object v4, p0, Lc8/Nap;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$dimen;->title_bar_slider_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lc8/Nap;->mSliderHeight:I

    .line 106
    iget-object v4, p0, Lc8/Nap;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lc8/Nap;->mScreenWidth:I

    .line 107
    return-void
.end method

.method static synthetic access$002(Lc8/Nap;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Nap;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/Nap;->currentPosition:I

    return p1
.end method

.method static synthetic access$1000(Lc8/Nap;)Lc8/Lap;
    .locals 1
    .param p0, "x0"    # Lc8/Nap;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Nap;->mOnTabClickListener:Lc8/Lap;

    return-object v0
.end method

.method static synthetic access$102(Lc8/Nap;F)F
    .locals 0
    .param p0, "x0"    # Lc8/Nap;
    .param p1, "x1"    # F

    .prologue
    .line 36
    iput p1, p0, Lc8/Nap;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$1100(Lc8/Nap;)I
    .locals 1
    .param p0, "x0"    # Lc8/Nap;

    .prologue
    .line 36
    iget v0, p0, Lc8/Nap;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$202(Lc8/Nap;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Nap;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lc8/Nap;->mIsClicked:Z

    return p1
.end method

.method static synthetic access$300(Lc8/Nap;)I
    .locals 1
    .param p0, "x0"    # Lc8/Nap;

    .prologue
    .line 36
    iget v0, p0, Lc8/Nap;->mClickedPosition:I

    return v0
.end method

.method static synthetic access$302(Lc8/Nap;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Nap;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/Nap;->mClickedPosition:I

    return p1
.end method

.method static synthetic access$400(Lc8/Nap;)I
    .locals 1
    .param p0, "x0"    # Lc8/Nap;

    .prologue
    .line 36
    iget v0, p0, Lc8/Nap;->mLastUTPosition:I

    return v0
.end method

.method static synthetic access$402(Lc8/Nap;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Nap;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/Nap;->mLastUTPosition:I

    return p1
.end method

.method static synthetic access$500(Lc8/Nap;IIZ)V
    .locals 0
    .param p0, "x0"    # Lc8/Nap;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lc8/Nap;->sendUtStatics(IIZ)V

    return-void
.end method

.method static synthetic access$600(Lc8/Nap;I)V
    .locals 0
    .param p0, "x0"    # Lc8/Nap;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lc8/Nap;->scrollToPosition(I)V

    return-void
.end method

.method static synthetic access$800(Lc8/Nap;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lc8/Nap;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lc8/Nap;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lc8/Nap;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Nap;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private blend(F)I
    .locals 2
    .param p1, "offset"    # F

    .prologue
    .line 344
    iget v0, p0, Lc8/Nap;->mTextColorDef:I

    iget v1, p0, Lc8/Nap;->mTextColorSelected:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method private drawLine(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 116
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lc8/Nap;->getHeight()I

    move-result v11

    .line 119
    .local v11, "height":I
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lc8/Nap;->currentPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 121
    .local v9, "currentTab":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lc8/Nap;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v8, v0

    .line 122
    .local v8, "currentMiddle":F
    iget v0, p0, Lc8/Nap;->mSliderWidthMix:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v1, v8, v0

    .line 123
    .local v1, "left":F
    iget v0, p0, Lc8/Nap;->mSliderWidthMix:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float v3, v8, v0

    .line 126
    .local v3, "right":F
    iget v0, p0, Lc8/Nap;->currentPositionOffset:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lc8/Nap;->currentPosition:I

    iget-object v2, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 127
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lc8/Nap;->currentPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 128
    .local v13, "nextTab":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lc8/Nap;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v12, v0

    .line 129
    .local v12, "nextMiddle":F
    iget v0, p0, Lc8/Nap;->currentPositionOffset:F

    const v2, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 130
    iget v0, p0, Lc8/Nap;->mSliderWidthMax:F

    iget v2, p0, Lc8/Nap;->mSliderWidthMix:F

    sub-float/2addr v0, v2

    iget v2, p0, Lc8/Nap;->currentPositionOffset:F

    const v4, 0x3e99999a    # 0.3f

    div-float/2addr v2, v4

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    .line 141
    :goto_1
    iget-boolean v0, p0, Lc8/Nap;->mIsClicked:Z

    if-nez v0, :cond_1

    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lc8/Nap;->currentPositionOffset:F

    sub-float/2addr v0, v2

    invoke-direct {p0, v0}, Lc8/Nap;->blend(F)I

    move-result v6

    .line 143
    .local v6, "colorLeft":I
    iget v0, p0, Lc8/Nap;->currentPositionOffset:F

    invoke-direct {p0, v0}, Lc8/Nap;->blend(F)I

    move-result v7

    .line 144
    .local v7, "colorRight":I
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lc8/Nap;->currentPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lc8/Nap;->currentPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    .end local v6    # "colorLeft":I
    .end local v7    # "colorRight":I
    .end local v12    # "nextMiddle":F
    .end local v13    # "nextTab":Landroid/view/View;
    :cond_1
    iget v0, p0, Lc8/Nap;->mSliderHeight:I

    sub-int v0, v11, v0

    int-to-float v2, v0

    int-to-float v4, v11

    iget-object v5, p0, Lc8/Nap;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "drawline, position = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lc8/Nap;->currentPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " offset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lc8/Nap;->currentPositionOffset:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " left = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " right = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    .restart local v12    # "nextMiddle":F
    .restart local v13    # "nextTab":Landroid/view/View;
    :cond_2
    iget v0, p0, Lc8/Nap;->currentPositionOffset:F

    const v2, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    iget v0, p0, Lc8/Nap;->currentPositionOffset:F

    const v2, 0x3f333333    # 0.7f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 132
    sub-float v0, v12, v8

    iget v2, p0, Lc8/Nap;->mSliderWidthMax:F

    sub-float/2addr v0, v2

    iget v2, p0, Lc8/Nap;->mSliderWidthMix:F

    add-float/2addr v0, v2

    iget v2, p0, Lc8/Nap;->currentPositionOffset:F

    const v4, 0x3e99999a    # 0.3f

    sub-float/2addr v2, v4

    const v4, 0x3ecccccc    # 0.39999998f

    div-float/2addr v2, v4

    mul-float v10, v0, v2

    .line 134
    .local v10, "distance":F
    add-float/2addr v1, v10

    .line 135
    iget v0, p0, Lc8/Nap;->mSliderWidthMax:F

    add-float v3, v1, v0

    .line 136
    goto/16 :goto_1

    .line 137
    .end local v10    # "distance":F
    :cond_3
    iget v0, p0, Lc8/Nap;->mSliderWidthMax:F

    sub-float v0, v12, v0

    iget v2, p0, Lc8/Nap;->mSliderWidthMix:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p0, Lc8/Nap;->mSliderWidthMax:F

    iget v4, p0, Lc8/Nap;->mSliderWidthMix:F

    sub-float/2addr v2, v4

    iget v4, p0, Lc8/Nap;->currentPositionOffset:F

    const v5, 0x3f333333    # 0.7f

    sub-float/2addr v4, v5

    const v5, 0x3e99999a    # 0.3f

    div-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float v1, v0, v2

    .line 138
    iget v0, p0, Lc8/Nap;->mSliderWidthMix:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float v3, v12, v0

    goto/16 :goto_1
.end method

.method private scrollToPosition(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 317
    iget-object v3, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 318
    iget-object v3, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 319
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    .line 320
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Lc8/Nap;->mScreenWidth:I

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 321
    .local v0, "scrollPos":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scroll 1, position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " viewleft = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lc8/Nap;->smoothScrollTo(II)V

    .line 341
    .end local v0    # "scrollPos":I
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 324
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 325
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    new-instance v3, Lc8/Kap;

    invoke-direct {v3, p0, v1, p1}, Lc8/Kap;-><init>(Lc8/Nap;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private sendUtStatics(IIZ)V
    .locals 6
    .param p1, "lastPosition"    # I
    .param p2, "nowPosition"    # I
    .param p3, "isClick"    # Z

    .prologue
    .line 348
    iget-object v4, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge p2, v4, :cond_0

    iget-object v4, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    .line 349
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 350
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v4, p0, Lc8/Nap;->mPageFlag:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    .line 355
    const-string/jumbo v2, "page_tnavigate"

    .line 356
    .local v2, "page_name":Ljava/lang/String;
    const-string/jumbo v0, "homechannelclick"

    .line 357
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v3, "a2h0f.8166708.channel.1"

    .line 365
    .local v3, "spm":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_3

    .line 366
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "1"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :goto_1
    const-string/jumbo v4, "spm"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string/jumbo v5, "ct"

    iget-object v4, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string/jumbo v5, "lastct"

    iget-object v4, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string/jumbo v4, "object_num"

    add-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-static {v2, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 377
    .end local v0    # "arg1":Ljava/lang/String;
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "page_name":Ljava/lang/String;
    .end local v3    # "spm":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "page = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lc8/Nap;->mPageFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "tab click ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " last = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " now = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    :cond_1
    return-void

    .line 358
    .restart local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget v4, p0, Lc8/Nap;->mPageFlag:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_1

    .line 359
    const-string/jumbo v2, "page_homerec"

    .line 360
    .restart local v2    # "page_name":Ljava/lang/String;
    const-string/jumbo v0, "channelclick"

    .line 361
    .restart local v0    # "arg1":Ljava/lang/String;
    const-string/jumbo v3, "a2h04.8165617.channel.1"

    .restart local v3    # "spm":Ljava/lang/String;
    goto/16 :goto_0

    .line 368
    :cond_3
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "0"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private setTextViewClicked(Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "isClicked"    # Z

    .prologue
    .line 298
    if-eqz p2, :cond_0

    .line 299
    iget v0, p0, Lc8/Nap;->mTextColorSelected:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget v0, p0, Lc8/Nap;->mTextColorDef:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 233
    iget-object v2, p0, Lc8/Nap;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$layout;->home_title_tab_item:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 234
    .local v1, "textView":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    new-instance v2, Lc8/Map;

    invoke-direct {v2, p0, v5}, Lc8/Map;-><init>(Lc8/Nap;Lc8/Jap;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v2, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    return-void
.end method

.method public adjustPosition()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/Nap;->mClickedPosition:I

    iget-object v1, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 249
    iget v0, p0, Lc8/Nap;->mClickedPosition:I

    invoke-direct {p0, v0}, Lc8/Nap;->scrollToPosition(I)V

    .line 251
    :cond_0
    return-void
.end method

.method public adjustTitleColor()V
    .locals 3

    .prologue
    .line 254
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 255
    iget-object v2, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    .local v0, "childView":Landroid/widget/TextView;
    iget v2, p0, Lc8/Nap;->mClickedPosition:I

    if-ne v1, v2, :cond_0

    .line 257
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lc8/Nap;->setTextViewClicked(Landroid/widget/TextView;Z)V

    .line 254
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lc8/Nap;->setTextViewClicked(Landroid/widget/TextView;Z)V

    goto :goto_1

    .line 263
    .end local v0    # "childView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 245
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 112
    invoke-direct {p0, p1}, Lc8/Nap;->drawLine(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method public removeRightPadding()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    iget-object v1, p0, Lc8/Nap;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$dimen;->home_tool_bar_padding_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 271
    .local v0, "leftPadding":I
    iget-object v1, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 272
    return-void
.end method

.method public setCustomClor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "textDef"    # Ljava/lang/String;
    .param p2, "textSelected"    # Ljava/lang/String;
    .param p3, "indicatorColor"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {p1}, Lc8/Iin;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc8/Nap;->mTextColorDef:I

    .line 390
    invoke-static {p2}, Lc8/Iin;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc8/Nap;->mTextColorSelected:I

    .line 391
    invoke-static {p3}, Lc8/Iin;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc8/Nap;->mIndecatorColor:I

    .line 392
    iget-object v0, p0, Lc8/Nap;->rectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/Nap;->mIndecatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    invoke-virtual {p0}, Lc8/Nap;->adjustTitleColor()V

    .line 394
    invoke-virtual {p0}, Lc8/Nap;->invalidate()V

    .line 395
    return-void
.end method

.method public setOnTabClickListener(Lc8/Lap;)V
    .locals 0
    .param p1, "onTabClickListener"    # Lc8/Lap;

    .prologue
    .line 381
    iput-object p1, p0, Lc8/Nap;->mOnTabClickListener:Lc8/Lap;

    .line 382
    return-void
.end method

.method public setPageFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 266
    iput p1, p0, Lc8/Nap;->mPageFlag:I

    .line 267
    return-void
.end method

.method public setTabViewClicked(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isClicked"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 307
    if-eqz p2, :cond_1

    .line 308
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lc8/Nap;->mTextColorSelected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lc8/Nap;->mTextColorDef:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 156
    iput-object p1, p0, Lc8/Nap;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 158
    iget-object v0, p0, Lc8/Nap;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lc8/Jap;

    invoke-direct {v1, p0}, Lc8/Jap;-><init>(Lc8/Nap;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 194
    return-void
.end method

.method public updateChannelTabs(Ljava/util/List;I)V
    .locals 4
    .param p2, "firstShow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelTabInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelTabInfo;>;"
    iget-object v2, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 213
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 214
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelTabInfo;

    invoke-virtual {v2}, Lcom/youku/vo/ChannelTabInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/Nap;->addTab(Ljava/lang/String;)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    iget-object v2, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lc8/Nap;->setTextViewClicked(Landroid/widget/TextView;Z)V

    .line 220
    :cond_1
    iget-object v2, p0, Lc8/Nap;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 221
    return-void
.end method

.method public updateTab(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 225
    invoke-virtual {p0, p1}, Lc8/Nap;->addTab(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lc8/Nap;->setTextViewClicked(Landroid/widget/TextView;Z)V

    .line 230
    :cond_0
    return-void
.end method

.method public updateTabs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/EVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/HomeTabInfo;>;"
    iget-object v3, p0, Lc8/Nap;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 199
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 200
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/EVo;

    iget-object v3, v3, Lc8/EVo;->title:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lc8/Nap;->addTab(Ljava/lang/String;)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lc8/Nap;->adjustTitleColor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
