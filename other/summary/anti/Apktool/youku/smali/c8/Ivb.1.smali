.class public Lc8/Ivb;
.super Ljava/lang/Object;
.source "Elevator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Gvb;,
        Lc8/Hvb;
    }
.end annotation


# instance fields
.field private adapter:Lc8/Kvb;

.field private allItemWidth:I

.field private backAnimation:Landroid/view/animation/Animation;

.field private barWidth:I

.field private context:Landroid/content/Context;

.field private downPopupWindow:Landroid/widget/PopupWindow;

.field private elevatorTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Mvb;",
            ">;"
        }
    .end annotation
.end field

.field private firstAnimation:Landroid/view/animation/Animation;

.field private horizontalScrollView:Lc8/seg;

.field private itemBar:Landroid/widget/FrameLayout;

.field private itemBarTv:Landroid/widget/TextView;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Lvb;",
            ">;"
        }
    .end annotation
.end field

.field private item_gridView:Landroid/widget/GridView;

.field private item_linearBG:Landroid/widget/LinearLayout;

.field private item_linearLayout:Landroid/widget/LinearLayout;

.field private mListener:Lc8/Gvb;

.field private mRootView:Landroid/view/ViewGroup;

.field private mWATabHeaderChanged:Lc8/Hvb;

.field private normalColor:Ljava/lang/String;

.field private pullButton:Landroid/view/ViewGroup;

.field private pullImage:Landroid/widget/ImageView;

.field remainWidth:I

.field scrollWidth:I

.field private selectedColor:Ljava/lang/String;

.field private textHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v8, p0, Lc8/Ivb;->remainWidth:I

    .line 76
    iput v8, p0, Lc8/Ivb;->scrollWidth:I

    .line 82
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    .line 83
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    .line 95
    iput-object p1, p0, Lc8/Ivb;->context:Landroid/content/Context;

    .line 96
    const-string/jumbo v6, "#EE0A3B"

    iput-object v6, p0, Lc8/Ivb;->selectedColor:Ljava/lang/String;

    .line 97
    const-string/jumbo v6, "#333333"

    iput-object v6, p0, Lc8/Ivb;->normalColor:Ljava/lang/String;

    .line 98
    sget v6, Lcom/youku/phone/R$anim;->huichang_elevator_first_rotate:I

    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lc8/Ivb;->firstAnimation:Landroid/view/animation/Animation;

    .line 99
    sget v6, Lcom/youku/phone/R$anim;->huichang_elevator_back_rotate:I

    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lc8/Ivb;->backAnimation:Landroid/view/animation/Animation;

    .line 100
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 101
    .local v3, "lin":Landroid/view/animation/LinearInterpolator;
    iget-object v6, p0, Lc8/Ivb;->firstAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    iget-object v6, p0, Lc8/Ivb;->backAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 103
    iget-object v6, p0, Lc8/Ivb;->firstAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 104
    iget-object v6, p0, Lc8/Ivb;->backAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/youku/phone/R$layout;->huichang_elevator_layout:I

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lc8/Ivb;->mRootView:Landroid/view/ViewGroup;

    .line 106
    iget-object v6, p0, Lc8/Ivb;->mRootView:Landroid/view/ViewGroup;

    sget v7, Lcom/youku/phone/R$id;->linear:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lc8/Ivb;->item_linearLayout:Landroid/widget/LinearLayout;

    .line 107
    iget-object v6, p0, Lc8/Ivb;->item_linearLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 108
    iget-object v6, p0, Lc8/Ivb;->mRootView:Landroid/view/ViewGroup;

    sget v7, Lcom/youku/phone/R$id;->linear_bg:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lc8/Ivb;->item_linearBG:Landroid/widget/LinearLayout;

    .line 109
    iget-object v6, p0, Lc8/Ivb;->mRootView:Landroid/view/ViewGroup;

    sget v7, Lcom/youku/phone/R$id;->itembar:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lc8/Ivb;->itemBar:Landroid/widget/FrameLayout;

    .line 110
    iget-object v6, p0, Lc8/Ivb;->mRootView:Landroid/view/ViewGroup;

    sget v7, Lcom/youku/phone/R$id;->horizontalscroll:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lc8/seg;

    iput-object v6, p0, Lc8/Ivb;->horizontalScrollView:Lc8/seg;

    .line 111
    iget-object v6, p0, Lc8/Ivb;->mRootView:Landroid/view/ViewGroup;

    sget v7, Lcom/youku/phone/R$id;->gridView:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    iput-object v6, p0, Lc8/Ivb;->item_gridView:Landroid/widget/GridView;

    .line 112
    iget-object v6, p0, Lc8/Ivb;->mRootView:Landroid/view/ViewGroup;

    sget v7, Lcom/youku/phone/R$id;->pullButton:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lc8/Ivb;->pullButton:Landroid/view/ViewGroup;

    .line 113
    iget-object v6, p0, Lc8/Ivb;->pullButton:Landroid/view/ViewGroup;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 114
    iget-object v6, p0, Lc8/Ivb;->mRootView:Landroid/view/ViewGroup;

    sget v7, Lcom/youku/phone/R$id;->pullImage:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lc8/Ivb;->pullImage:Landroid/widget/ImageView;

    .line 115
    iget-object v6, p0, Lc8/Ivb;->mRootView:Landroid/view/ViewGroup;

    sget v7, Lcom/youku/phone/R$id;->downText:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lc8/Ivb;->itemBarTv:Landroid/widget/TextView;

    .line 116
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 117
    .local v5, "w":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 118
    .local v2, "h":I
    iget-object v6, p0, Lc8/Ivb;->itemBar:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 119
    iget-object v6, p0, Lc8/Ivb;->itemBar:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    iput v6, p0, Lc8/Ivb;->barWidth:I

    .line 120
    new-instance v6, Lc8/Kvb;

    sget v7, Lcom/youku/phone/R$layout;->huichang_tbelevatortext_layout:I

    iget-object v8, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    invoke-direct {v6, p1, v7, v8}, Lc8/Kvb;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v6, p0, Lc8/Ivb;->adapter:Lc8/Kvb;

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/youku/phone/R$layout;->downpop_window:I

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, "downPopView":Landroid/view/View;
    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, v1, v10, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v6, p0, Lc8/Ivb;->downPopupWindow:Landroid/widget/PopupWindow;

    .line 125
    iget-object v6, p0, Lc8/Ivb;->downPopupWindow:Landroid/widget/PopupWindow;

    new-instance v7, Lc8/xvb;

    invoke-direct {v7, p0}, Lc8/xvb;-><init>(Lc8/Ivb;)V

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 133
    iget-object v6, p0, Lc8/Ivb;->downPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 134
    iget-object v6, p0, Lc8/Ivb;->downPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 136
    iget-object v6, p0, Lc8/Ivb;->firstAnimation:Landroid/view/animation/Animation;

    new-instance v7, Lc8/yvb;

    invoke-direct {v7, p0}, Lc8/yvb;-><init>(Lc8/Ivb;)V

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 153
    iget-object v6, p0, Lc8/Ivb;->backAnimation:Landroid/view/animation/Animation;

    new-instance v7, Lc8/zvb;

    invoke-direct {v7, p0}, Lc8/zvb;-><init>(Lc8/Ivb;)V

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 170
    iget-object v6, p0, Lc8/Ivb;->downPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lc8/Avb;

    invoke-direct {v7, p0}, Lc8/Avb;-><init>(Lc8/Ivb;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    sget v6, Lcom/youku/phone/R$id;->downMongolia:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 184
    .local v0, "downMongolia":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lc8/Ivb;->horizontalScrollView:Lc8/seg;

    new-instance v7, Lc8/Bvb;

    invoke-direct {v7, p0}, Lc8/Bvb;-><init>(Lc8/Ivb;)V

    invoke-virtual {v6, v7}, Lc8/seg;->setScrollViewListener(Lc8/reg;)V

    .line 192
    new-instance v6, Lc8/Cvb;

    invoke-direct {v6, p0}, Lc8/Cvb;-><init>(Lc8/Ivb;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    sget v6, Lcom/youku/phone/R$id;->gridView:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    iput-object v6, p0, Lc8/Ivb;->item_gridView:Landroid/widget/GridView;

    .line 213
    iget-object v6, p0, Lc8/Ivb;->item_gridView:Landroid/widget/GridView;

    iget-object v7, p0, Lc8/Ivb;->adapter:Lc8/Kvb;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    iget-object v6, p0, Lc8/Ivb;->item_gridView:Landroid/widget/GridView;

    new-instance v7, Lc8/Dvb;

    invoke-direct {v7, p0}, Lc8/Dvb;-><init>(Lc8/Ivb;)V

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    const/4 v6, 0x2

    new-array v4, v6, [I

    .line 227
    .local v4, "location":[I
    iget-object v6, p0, Lc8/Ivb;->pullButton:Landroid/view/ViewGroup;

    new-instance v7, Lc8/Evb;

    invoke-direct {v7, p0, v4}, Lc8/Evb;-><init>(Lc8/Ivb;[I)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    return-void
.end method

.method static synthetic access$000(Lc8/Ivb;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lc8/Ivb;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Ivb;->itemBarTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Ivb;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lc8/Ivb;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Ivb;->item_linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/Ivb;)V
    .locals 0
    .param p0, "x0"    # Lc8/Ivb;

    .prologue
    .line 38
    invoke-direct {p0}, Lc8/Ivb;->showPopWindow()V

    return-void
.end method

.method static synthetic access$200(Lc8/Ivb;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lc8/Ivb;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Ivb;->backAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lc8/Ivb;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lc8/Ivb;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Ivb;->pullButton:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lc8/Ivb;)Lc8/Hvb;
    .locals 1
    .param p0, "x0"    # Lc8/Ivb;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Ivb;->mWATabHeaderChanged:Lc8/Hvb;

    return-object v0
.end method

.method static synthetic access$500(Lc8/Ivb;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lc8/Ivb;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Ivb;->downPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Ivb;)V
    .locals 0
    .param p0, "x0"    # Lc8/Ivb;

    .prologue
    .line 38
    invoke-direct {p0}, Lc8/Ivb;->dismissPopWindow()V

    return-void
.end method

.method static synthetic access$700(Lc8/Ivb;)Lc8/Gvb;
    .locals 1
    .param p0, "x0"    # Lc8/Ivb;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Ivb;->mListener:Lc8/Gvb;

    return-object v0
.end method

.method static synthetic access$800(Lc8/Ivb;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/Ivb;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lc8/Ivb;)I
    .locals 1
    .param p0, "x0"    # Lc8/Ivb;

    .prologue
    .line 38
    iget v0, p0, Lc8/Ivb;->textHeight:I

    return v0
.end method

.method private dismissPopWindow()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lc8/Ivb;->downPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 478
    return-void
.end method

.method private showPopWindow()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lc8/Ivb;->itemBarTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lc8/Ivb;->item_linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lc8/Ivb;->pullButton:Landroid/view/ViewGroup;

    iget-object v1, p0, Lc8/Ivb;->firstAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 484
    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lc8/Ivb;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public reBindImage()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lc8/Ivb;->pullImage:Landroid/widget/ImageView;

    sget v1, Lcom/youku/phone/R$drawable;->huichang_elevator_pulldown:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 473
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "bgColor"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v1, p0, Lc8/Ivb;->item_linearBG:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 417
    iget-object v1, p0, Lc8/Ivb;->downPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 418
    .local v0, "popView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 420
    iget-object v1, p0, Lc8/Ivb;->item_gridView:Landroid/widget/GridView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 422
    :cond_0
    return-void
.end method

.method public setElevatorOnClickListener(Lc8/Gvb;)V
    .locals 0
    .param p1, "listener"    # Lc8/Gvb;

    .prologue
    .line 374
    iput-object p1, p0, Lc8/Ivb;->mListener:Lc8/Gvb;

    .line 375
    return-void
.end method

.method public setIWATabHeaderChanged(Lc8/Hvb;)V
    .locals 0
    .param p1, "waTabHeaderChanged"    # Lc8/Hvb;

    .prologue
    .line 468
    iput-object p1, p0, Lc8/Ivb;->mWATabHeaderChanged:Lc8/Hvb;

    .line 469
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Lvb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/view/ElevatorItem;>;"
    const/4 v15, 0x0

    .line 270
    .local v15, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->itemList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->itemList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->item_linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->adapter:Lc8/Kvb;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lc8/Kvb;->notifyDataSetChanged()V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->itemList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v6

    .line 278
    .local v6, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v6, :cond_1

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->itemList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lc8/Lvb;

    .line 280
    .local v16, "item":Lc8/Lvb;
    new-instance v11, Lc8/Mvb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Lc8/Mvb;-><init>(Landroid/content/Context;)V

    .line 281
    .local v11, "elevatorText":Lc8/Mvb;
    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 282
    .local v24, "w":I
    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 283
    .local v13, "h":I
    invoke-virtual/range {v16 .. v16}, Lc8/Lvb;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lc8/Mvb;->setText(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->selectedColor:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lc8/Mvb;->setSelectedColor(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->normalColor:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lc8/Mvb;->setNormalColor(Ljava/lang/String;)V

    .line 286
    move/from16 v0, v24

    invoke-virtual {v11, v0, v13}, Lc8/Mvb;->measure(II)V

    .line 287
    invoke-virtual {v11}, Lc8/Mvb;->getMeasuredWidth()I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lc8/Lvb;->setWidth(I)V

    .line 288
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lc8/Lvb;->setId(I)V

    .line 289
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v26, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Ivb;->textHeight:I

    move/from16 v25, v0

    if-lez v25, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Ivb;->textHeight:I

    move/from16 v25, v0

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 291
    .local v19, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v25, 0x40c00000    # 6.0f

    invoke-static/range {v25 .. v25}, Lc8/Jgg;->dip2px(F)I

    move-result v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 292
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lc8/Mvb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lc8/Mvb;->setTag(Ljava/lang/Object;)V

    .line 295
    new-instance v25, Lc8/Fvb;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/Fvb;-><init>(Lc8/Ivb;)V

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lc8/Mvb;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->item_linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    add-int/lit8 v15, v15, 0x1

    .line 278
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 289
    .end local v19    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/16 v25, -0x1

    goto :goto_1

    .line 309
    .end local v11    # "elevatorText":Lc8/Mvb;
    .end local v13    # "h":I
    .end local v16    # "item":Lc8/Lvb;
    .end local v24    # "w":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v10

    .line 310
    .local v10, "elevatorCount":I
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v10, :cond_2

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lc8/Mvb;

    invoke-virtual/range {v25 .. v25}, Lc8/Mvb;->hide()V

    .line 310
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 313
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lc8/Mvb;

    invoke-virtual/range {v25 .. v25}, Lc8/Mvb;->show()V

    .line 314
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Ivb;->allItemWidth:I

    .line 316
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v6, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->itemList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/Lvb;

    .line 318
    .local v7, "currentItem":Lc8/Lvb;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lc8/Lvb;->setIsHighLight(Z)V

    .line 319
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lc8/Lvb;->setIsImgShow(Z)V

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Ivb;->allItemWidth:I

    move/from16 v25, v0

    invoke-virtual {v7}, Lc8/Lvb;->getWidth()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Ivb;->allItemWidth:I

    .line 316
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 322
    .end local v7    # "currentItem":Lc8/Lvb;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v25

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 323
    .local v8, "deviceWidth":I
    const/16 v25, 0x1

    const/high16 v26, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    sub-int v17, v8, v25

    .line 324
    .local v17, "itemBarWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Ivb;->allItemWidth:I

    move/from16 v25, v0

    const/high16 v26, 0x40c00000    # 6.0f

    invoke-static/range {v26 .. v26}, Lc8/Jgg;->dip2px(F)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    mul-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v0, v25

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    .line 326
    const/high16 v25, 0x40c00000    # 6.0f

    invoke-static/range {v25 .. v25}, Lc8/Jgg;->dip2px(F)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    mul-int v25, v25, v26

    sub-int v25, v8, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    div-int v5, v25, v26

    .line 327
    .local v5, "avgW":I
    const/16 v23, 0x0

    .line 328
    .local v23, "tmpW":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v22, "tmpIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->itemList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v14, v0, :cond_5

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->itemList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/Lvb;

    .line 331
    .local v9, "ei":Lc8/Lvb;
    invoke-virtual {v9}, Lc8/Lvb;->getWidth()I

    move-result v25

    move/from16 v0, v25

    if-le v0, v5, :cond_4

    .line 332
    invoke-virtual {v9}, Lc8/Lvb;->getWidth()I

    move-result v25

    add-int v23, v23, v25

    .line 333
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 336
    .end local v9    # "ei":Lc8/Lvb;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_9

    .line 337
    const/high16 v25, 0x40c00000    # 6.0f

    invoke-static/range {v25 .. v25}, Lc8/Jgg;->dip2px(F)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    mul-int v25, v25, v26

    sub-int v25, v8, v25

    sub-int v25, v25, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    sub-int v26, v26, v27

    div-int v5, v25, v26

    .line 338
    const/4 v14, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->itemList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v14, v0, :cond_9

    .line 339
    const/4 v12, 0x0

    .line 340
    .local v12, "found":Z
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_6
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 341
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v25

    if-ne v0, v14, :cond_8

    .line 342
    const/4 v12, 0x1

    .line 346
    :cond_6
    if-nez v12, :cond_7

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->itemList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/Lvb;

    .line 348
    .restart local v9    # "ei":Lc8/Lvb;
    invoke-virtual {v9, v5}, Lc8/Lvb;->setWidth(I)V

    .line 338
    .end local v9    # "ei":Lc8/Lvb;
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 340
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 352
    .end local v12    # "found":Z
    .end local v18    # "j":I
    :cond_9
    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v14, v0, :cond_b

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lc8/Mvb;

    .line 354
    .local v21, "text":Lc8/Mvb;
    invoke-virtual/range {v21 .. v21}, Lc8/Mvb;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 355
    .local v20, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v20, :cond_a

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->itemList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lc8/Lvb;

    invoke-virtual/range {v25 .. v25}, Lc8/Lvb;->getWidth()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 357
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lc8/Mvb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 360
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "text":Lc8/Mvb;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->pullButton:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 364
    .end local v5    # "avgW":I
    .end local v22    # "tmpIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "tmpW":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->itemList:Ljava/util/List;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lc8/Lvb;

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lc8/Lvb;->setIsHighLight(Z)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->itemList:Ljava/util/List;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lc8/Lvb;

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lc8/Lvb;->setIsImgShow(Z)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->adapter:Lc8/Kvb;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lc8/Kvb;->notifyDataSetChanged()V

    .line 367
    return-void

    .line 362
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ivb;->pullButton:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8
.end method

.method public setLocation(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 429
    iget-object v5, p0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 430
    .local v1, "elevatorTextCount":I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v5, p0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Mvb;

    .line 434
    .local v2, "elevatortext":Lc8/Mvb;
    invoke-virtual {v2}, Lc8/Mvb;->hide()V

    goto :goto_1

    .line 436
    .end local v2    # "elevatortext":Lc8/Mvb;
    :cond_2
    iget-object v5, p0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Mvb;

    invoke-virtual {v5}, Lc8/Mvb;->show()V

    .line 437
    iget-object v5, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Lvb;

    .line 438
    .local v0, "currentItem":Lc8/Lvb;
    invoke-virtual {v0, v8}, Lc8/Lvb;->setIsHighLight(Z)V

    .line 439
    invoke-virtual {v0, v8}, Lc8/Lvb;->setIsImgShow(Z)V

    goto :goto_2

    .line 441
    .end local v0    # "currentItem":Lc8/Lvb;
    :cond_3
    iget-object v5, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Lvb;

    invoke-virtual {v5, v7}, Lc8/Lvb;->setIsHighLight(Z)V

    .line 442
    iget-object v5, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Lvb;

    invoke-virtual {v5, v7}, Lc8/Lvb;->setIsImgShow(Z)V

    .line 443
    iput v8, p0, Lc8/Ivb;->remainWidth:I

    .line 444
    iput v8, p0, Lc8/Ivb;->scrollWidth:I

    .line 445
    move v3, p1

    .local v3, "i":I
    :goto_3
    iget-object v5, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 446
    iget v6, p0, Lc8/Ivb;->remainWidth:I

    iget-object v5, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Lvb;

    invoke-virtual {v5}, Lc8/Lvb;->getWidth()I

    move-result v5

    add-int/2addr v5, v6

    iput v5, p0, Lc8/Ivb;->remainWidth:I

    .line 445
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 449
    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-ge v3, p1, :cond_5

    .line 450
    iget v6, p0, Lc8/Ivb;->scrollWidth:I

    iget-object v5, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Lvb;

    invoke-virtual {v5}, Lc8/Lvb;->getWidth()I

    move-result v5

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lc8/Jgg;->dip2px(F)I

    move-result v7

    add-int/2addr v5, v7

    add-int/2addr v5, v6

    iput v5, p0, Lc8/Ivb;->scrollWidth:I

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 452
    :cond_5
    iget-object v5, p0, Lc8/Ivb;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v6, v5, 0x2

    iget-object v5, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Lvb;

    invoke-virtual {v5}, Lc8/Lvb;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v4, v6, v5

    .line 453
    .local v4, "offset":I
    iget-object v5, p0, Lc8/Ivb;->horizontalScrollView:Lc8/seg;

    iget v6, p0, Lc8/Ivb;->scrollWidth:I

    sub-int/2addr v6, v4

    invoke-virtual {v5, v6, v8}, Lc8/seg;->smoothScrollTo(II)V

    .line 457
    iget-object v5, p0, Lc8/Ivb;->mWATabHeaderChanged:Lc8/Hvb;

    if-eqz v5, :cond_6

    .line 458
    iget-object v5, p0, Lc8/Ivb;->mWATabHeaderChanged:Lc8/Hvb;

    invoke-interface {v5}, Lc8/Hvb;->changed()V

    .line 460
    :cond_6
    iget-object v5, p0, Lc8/Ivb;->adapter:Lc8/Kvb;

    invoke-virtual {v5}, Lc8/Kvb;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public setNormalColor(Ljava/lang/String;)V
    .locals 4
    .param p1, "normalColor"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lc8/Ivb;->normalColor:Ljava/lang/String;

    .line 398
    iget-object v3, p0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 399
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 400
    iget-object v3, p0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Mvb;

    .line 401
    .local v1, "et":Lc8/Mvb;
    iget-object v3, p0, Lc8/Ivb;->selectedColor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lc8/Mvb;->setNormalColor(Ljava/lang/String;)V

    .line 402
    iget-object v3, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 403
    iget-object v3, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Lvb;

    .line 404
    .local v0, "ei":Lc8/Lvb;
    invoke-virtual {v0}, Lc8/Lvb;->getIsHighLight()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    invoke-virtual {v1}, Lc8/Mvb;->show()V

    .line 399
    .end local v0    # "ei":Lc8/Lvb;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .restart local v0    # "ei":Lc8/Lvb;
    :cond_1
    invoke-virtual {v1}, Lc8/Mvb;->hide()V

    goto :goto_1

    .line 412
    .end local v0    # "ei":Lc8/Lvb;
    .end local v1    # "et":Lc8/Mvb;
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lc8/Ivb;->adapter:Lc8/Kvb;

    invoke-virtual {v3, p1}, Lc8/Kvb;->setNormalColor(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setSelectedColor(Ljava/lang/String;)V
    .locals 4
    .param p1, "selectedColor"    # Ljava/lang/String;

    .prologue
    .line 378
    iput-object p1, p0, Lc8/Ivb;->selectedColor:Ljava/lang/String;

    .line 379
    iget-object v3, p0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 380
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 381
    iget-object v3, p0, Lc8/Ivb;->elevatorTextList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Mvb;

    .line 382
    .local v1, "et":Lc8/Mvb;
    invoke-virtual {v1, p1}, Lc8/Mvb;->setSelectedColor(Ljava/lang/String;)V

    .line 383
    iget-object v3, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 384
    iget-object v3, p0, Lc8/Ivb;->itemList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Lvb;

    .line 385
    .local v0, "ei":Lc8/Lvb;
    invoke-virtual {v0}, Lc8/Lvb;->getIsHighLight()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    invoke-virtual {v1}, Lc8/Mvb;->show()V

    .line 380
    .end local v0    # "ei":Lc8/Lvb;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .restart local v0    # "ei":Lc8/Lvb;
    :cond_1
    invoke-virtual {v1}, Lc8/Mvb;->hide()V

    goto :goto_1

    .line 393
    .end local v0    # "ei":Lc8/Lvb;
    .end local v1    # "et":Lc8/Mvb;
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lc8/Ivb;->adapter:Lc8/Kvb;

    invoke-virtual {v3, p1}, Lc8/Kvb;->setSelectedColor(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public setTabAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 425
    iget-object v0, p0, Lc8/Ivb;->item_linearBG:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 426
    return-void
.end method

.method public setTextHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 464
    iput p1, p0, Lc8/Ivb;->textHeight:I

    .line 465
    return-void
.end method
