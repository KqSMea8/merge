.class public Lc8/Nof;
.super Ljava/lang/Object;
.source "TipsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;,
        Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;,
        Lc8/Mof;,
        Lc8/Kof;
    }
.end annotation


# static fields
.field public static volatile ISSHOW:Z = false

.field private static final TAG:Ljava/lang/String; = "TipsView"

.field public static color:Ljava/lang/Integer;

.field public static volatile sFloatingLayer:Lc8/Nof;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private isMove:Z

.field public mAnimationHandler:Landroid/os/Handler;

.field private mBackGroundView:Landroid/widget/LinearLayout;

.field private mContent:Ljava/lang/String;

.field private mFloatingType:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

.field private mHideView:Landroid/widget/LinearLayout;

.field private mListener:Lc8/Gof;

.field private mMouseDownTime:Ljava/math/BigDecimal;

.field public mPopView:Landroid/widget/LinearLayout;

.field public mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mPrevDragX:F

.field private mPrevDragY:F

.field private mScreenHeight:I

.field public mShowRunnable:Lc8/Kof;

.field private mShowStatus:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

.field private mStartDragX:F

.field public mStayAliveTime:Ljava/math/BigDecimal;

.field private mTextContent:Landroid/widget/TextView;

.field private mTrayAnimationTimer:Ljava/util/Timer;

.field private mTrayTimerTask:Lc8/Mof;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Nof;->ISSHOW:Z

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lc8/Nof;->color:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lc8/Nof;->mStayAliveTime:Ljava/math/BigDecimal;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Nof;->isMove:Z

    .line 49
    iput-object v2, p0, Lc8/Nof;->mContent:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lc8/Nof;->mListener:Lc8/Gof;

    .line 51
    sget-object v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;->SHOW_ONCE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    iput-object v0, p0, Lc8/Nof;->mFloatingType:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    .line 52
    sget-object v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->CLOSE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    iput-object v0, p0, Lc8/Nof;->mShowStatus:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc8/Nof;->mAnimationHandler:Landroid/os/Handler;

    .line 58
    const-string/jumbo v0, "tipsPlugin"

    iput-object v0, p0, Lc8/Nof;->LOG_TAG:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lc8/Nof;->initParams()V

    .line 74
    invoke-direct {p0}, Lc8/Nof;->initView()V

    .line 75
    invoke-direct {p0}, Lc8/Nof;->initDrag()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lc8/Nof;)F
    .locals 1
    .param p0, "x0"    # Lc8/Nof;

    .prologue
    .line 27
    iget v0, p0, Lc8/Nof;->mStartDragX:F

    return v0
.end method

.method static synthetic access$002(Lc8/Nof;F)F
    .locals 0
    .param p0, "x0"    # Lc8/Nof;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lc8/Nof;->mStartDragX:F

    return p1
.end method

.method static synthetic access$100(Lc8/Nof;)F
    .locals 1
    .param p0, "x0"    # Lc8/Nof;

    .prologue
    .line 27
    iget v0, p0, Lc8/Nof;->mPrevDragX:F

    return v0
.end method

.method static synthetic access$1000(Lc8/Nof;)Lc8/Mof;
    .locals 1
    .param p0, "x0"    # Lc8/Nof;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Nof;->mTrayTimerTask:Lc8/Mof;

    return-object v0
.end method

.method static synthetic access$1002(Lc8/Nof;Lc8/Mof;)Lc8/Mof;
    .locals 0
    .param p0, "x0"    # Lc8/Nof;
    .param p1, "x1"    # Lc8/Mof;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/Nof;->mTrayTimerTask:Lc8/Mof;

    return-object p1
.end method

.method static synthetic access$102(Lc8/Nof;F)F
    .locals 0
    .param p0, "x0"    # Lc8/Nof;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lc8/Nof;->mPrevDragX:F

    return p1
.end method

.method static synthetic access$1100(Lc8/Nof;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lc8/Nof;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Nof;->mTrayAnimationTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1102(Lc8/Nof;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lc8/Nof;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/Nof;->mTrayAnimationTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$200(Lc8/Nof;)F
    .locals 1
    .param p0, "x0"    # Lc8/Nof;

    .prologue
    .line 27
    iget v0, p0, Lc8/Nof;->mPrevDragY:F

    return v0
.end method

.method static synthetic access$202(Lc8/Nof;F)F
    .locals 0
    .param p0, "x0"    # Lc8/Nof;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lc8/Nof;->mPrevDragY:F

    return p1
.end method

.method static synthetic access$300(Lc8/Nof;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "x0"    # Lc8/Nof;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Nof;->mMouseDownTime:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$302(Lc8/Nof;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 0
    .param p0, "x0"    # Lc8/Nof;
    .param p1, "x1"    # Ljava/math/BigDecimal;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/Nof;->mMouseDownTime:Ljava/math/BigDecimal;

    return-object p1
.end method

.method static synthetic access$400(Lc8/Nof;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Nof;

    .prologue
    .line 27
    iget-boolean v0, p0, Lc8/Nof;->isMove:Z

    return v0
.end method

.method static synthetic access$402(Lc8/Nof;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Nof;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lc8/Nof;->isMove:Z

    return p1
.end method

.method static synthetic access$500(Lc8/Nof;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lc8/Nof;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Nof;->mHideView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Nof;)I
    .locals 1
    .param p0, "x0"    # Lc8/Nof;

    .prologue
    .line 27
    iget v0, p0, Lc8/Nof;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$700(Lc8/Nof;)Lc8/Gof;
    .locals 1
    .param p0, "x0"    # Lc8/Nof;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Nof;->mListener:Lc8/Gof;

    return-object v0
.end method

.method static synthetic access$800(Lc8/Nof;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;
    .locals 1
    .param p0, "x0"    # Lc8/Nof;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Nof;->mShowStatus:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    return-object v0
.end method

.method static synthetic access$802(Lc8/Nof;Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;
    .locals 0
    .param p0, "x0"    # Lc8/Nof;
    .param p1, "x1"    # Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/Nof;->mShowStatus:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    return-object p1
.end method

.method static synthetic access$900(Lc8/Nof;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;
    .locals 1
    .param p0, "x0"    # Lc8/Nof;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Nof;->mFloatingType:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    return-object v0
.end method

.method public static getInstance()Lc8/Nof;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lc8/Nof;->sFloatingLayer:Lc8/Nof;

    if-nez v0, :cond_1

    .line 62
    const-class v1, Lc8/Nof;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lc8/Nof;->sFloatingLayer:Lc8/Nof;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lc8/Nof;

    invoke-direct {v0}, Lc8/Nof;-><init>()V

    sput-object v0, Lc8/Nof;->sFloatingLayer:Lc8/Nof;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Lc8/Nof;->sFloatingLayer:Lc8/Nof;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initDrag()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    new-instance v1, Lc8/Iof;

    invoke-direct {v1, p0}, Lc8/Iof;-><init>(Lc8/Nof;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    return-void
.end method

.method private initParams()V
    .locals 6

    .prologue
    const/4 v1, -0x2

    .line 107
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lc8/Nof;->mScreenHeight:I

    .line 109
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3eb

    const/16 v4, 0x208

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 115
    iget-object v0, p0, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 116
    iget-object v0, p0, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 117
    iget-object v0, p0, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lc8/Nof;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x6

    shl-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 119
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 123
    :try_start_0
    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v3, Lc8/unf;->application:Landroid/app/Application;

    .line 125
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 126
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/youku/phone/R$layout;->floating_layer_layout:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    .line 127
    iget-object v3, p0, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    sget v4, Lcom/youku/phone/R$id;->layer_hidepart:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lc8/Nof;->mHideView:Landroid/widget/LinearLayout;

    .line 128
    iget-object v3, p0, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    sget v4, Lcom/youku/phone/R$id;->layer_back_ground:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lc8/Nof;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 129
    iget-object v3, p0, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v3, p0, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    sget v4, Lcom/youku/phone/R$id;->layer_content:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lc8/Nof;->mTextContent:Landroid/widget/TextView;

    .line 131
    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lc8/Nof;->mWindowManager:Landroid/view/WindowManager;

    .line 133
    sget-object v3, Lc8/Nof;->color:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 134
    sget-object v3, Lc8/Nof;->color:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lc8/Nof;->setColor(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 297
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lc8/Nof;->ISSHOW:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :try_start_1
    iget-object v0, p0, Lc8/Nof;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lc8/Nof;->sFloatingLayer:Lc8/Nof;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 305
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public hideView()V
    .locals 2

    .prologue
    .line 285
    :try_start_0
    invoke-static {}, Lc8/Nof;->getInstance()Lc8/Nof;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/Nof;->ISSHOW:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 287
    :try_start_1
    iget-object v0, p0, Lc8/Nof;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setAliveTime(Ljava/math/BigDecimal;)Lc8/Nof;
    .locals 1
    .param p1, "time"    # Ljava/math/BigDecimal;

    .prologue
    .line 101
    iput-object p1, p0, Lc8/Nof;->mStayAliveTime:Ljava/math/BigDecimal;

    .line 103
    sget-object v0, Lc8/Nof;->sFloatingLayer:Lc8/Nof;

    return-object v0
.end method

.method public setColor(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .prologue
    .line 309
    iget-object v1, p0, Lc8/Nof;->mBackGroundView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lc8/Nof;->color:Ljava/lang/Integer;

    .line 313
    iget-object v1, p0, Lc8/Nof;->mBackGroundView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 314
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0
.end method

.method public setFloatingType(Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;)Lc8/Nof;
    .locals 1
    .param p1, "type"    # Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    .prologue
    .line 95
    iput-object p1, p0, Lc8/Nof;->mFloatingType:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    .line 97
    sget-object v0, Lc8/Nof;->sFloatingLayer:Lc8/Nof;

    return-object v0
.end method

.method public setListener(Lc8/Gof;)Lc8/Nof;
    .locals 1
    .param p1, "listener"    # Lc8/Gof;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iput-object p1, p0, Lc8/Nof;->mListener:Lc8/Gof;

    .line 91
    :cond_0
    sget-object v0, Lc8/Nof;->sFloatingLayer:Lc8/Nof;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lc8/Nof;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lc8/Nof;->mTextContent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iput-object p1, p0, Lc8/Nof;->mContent:Ljava/lang/String;

    .line 83
    :cond_0
    sget-object v0, Lc8/Nof;->sFloatingLayer:Lc8/Nof;

    return-object v0
.end method

.method public show(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Lc8/Nof;->getInstance()Lc8/Nof;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Nof;->mShowStatus:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->CLOSE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc8/Nof;->mContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Nof;->ISSHOW:Z

    .line 231
    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0, p1}, Lc8/Nof;->showView(Landroid/app/Activity;)V

    .line 234
    sget-object v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->SHOW:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    iput-object v0, p0, Lc8/Nof;->mShowStatus:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    .line 236
    iget-object v0, p0, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    new-instance v1, Lc8/Jof;

    invoke-direct {v1, p0}, Lc8/Jof;-><init>(Lc8/Nof;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    iget-object v0, p0, Lc8/Nof;->mListener:Lc8/Gof;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lc8/Nof;->mListener:Lc8/Gof;

    invoke-interface {v0}, Lc8/Gof;->onShow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showView(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 261
    :try_start_0
    iget-object v1, p0, Lc8/Nof;->mContent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lc8/Nof;->mTextContent:Landroid/widget/TextView;

    iget-object v4, p0, Lc8/Nof;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 266
    .local v2, "servertime":J
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 267
    .local v0, "b1":Ljava/math/BigDecimal;
    iget-object v1, p0, Lc8/Nof;->mStayAliveTime:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    iget-object v1, p0, Lc8/Nof;->mStayAliveTime:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_2

    .line 268
    const/4 v1, 0x0

    sput-boolean v1, Lc8/Nof;->ISSHOW:Z

    .line 269
    const/4 v1, 0x0

    sput-object v1, Lc8/Nof;->sFloatingLayer:Lc8/Nof;

    .line 270
    iget-object v1, p0, Lc8/Nof;->mListener:Lc8/Gof;

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lc8/Nof;->mListener:Lc8/Gof;

    invoke-interface {v1}, Lc8/Gof;->onTimeOver()V

    .line 281
    .end local v0    # "b1":Ljava/math/BigDecimal;
    .end local v2    # "servertime":J
    :cond_1
    :goto_0
    return-void

    .line 276
    .restart local v0    # "b1":Ljava/math/BigDecimal;
    .restart local v2    # "servertime":J
    :cond_2
    invoke-static {}, Lc8/Nof;->getInstance()Lc8/Nof;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lc8/Nof;->ISSHOW:Z

    if-eqz v1, :cond_1

    .line 277
    new-instance v1, Lc8/Kof;

    invoke-direct {v1, p0, p1}, Lc8/Kof;-><init>(Lc8/Nof;Landroid/app/Activity;)V

    iput-object v1, p0, Lc8/Nof;->mShowRunnable:Lc8/Kof;

    .line 278
    iget-object v1, p0, Lc8/Nof;->mAnimationHandler:Landroid/os/Handler;

    iget-object v4, p0, Lc8/Nof;->mShowRunnable:Lc8/Kof;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    .end local v0    # "b1":Ljava/math/BigDecimal;
    .end local v2    # "servertime":J
    :catch_0
    move-exception v1

    goto :goto_0
.end method
