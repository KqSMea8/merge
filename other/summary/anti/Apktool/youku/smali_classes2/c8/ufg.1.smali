.class public Lc8/ufg;
.super Landroid/widget/FrameLayout;
.source "WXRefreshView.java"


# instance fields
.field private circleProgressBar:Lc8/mfg;

.field private linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lc8/ufg;->setupViews()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lc8/ufg;->setupViews()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0}, Lc8/ufg;->setupViews()V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lc8/ufg;Lc8/mfg;)Lc8/mfg;
    .locals 0
    .param p0, "x0"    # Lc8/ufg;
    .param p1, "x1"    # Lc8/mfg;

    .prologue
    .line 32
    iput-object p1, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    return-object p1
.end method

.method static synthetic access$100(Lc8/ufg;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lc8/ufg;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/ufg;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 53
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lc8/ufg;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/ufg;->linearLayout:Landroid/widget/LinearLayout;

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lc8/ufg;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    iget-object v1, p0, Lc8/ufg;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 59
    iget-object v1, p0, Lc8/ufg;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lc8/ufg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    invoke-static {p1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public setContentGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lc8/ufg;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lc8/ufg;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public setProgressBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    invoke-virtual {v0, p1}, Lc8/mfg;->setBackgroundColor(I)V

    .line 108
    :cond_0
    return-void
.end method

.method public setProgressColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Lc8/mfg;->setColorSchemeColors([I)V

    .line 119
    :cond_0
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 151
    iget-object v0, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    invoke-virtual {v0, p1}, Lc8/mfg;->setProgressRotation(F)V

    .line 153
    :cond_0
    return-void
.end method

.method public setRefreshView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v0, Lc8/tfg;

    invoke-direct {v0, p0, p1}, Lc8/tfg;-><init>(Lc8/ufg;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lc8/ufg;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .param p1, "startAngle"    # F
    .param p2, "endAngle"    # F

    .prologue
    .line 134
    iget-object v0, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    invoke-virtual {v0, p1, p2}, Lc8/mfg;->setStartEndTrim(FF)V

    .line 137
    :cond_0
    return-void
.end method

.method protected startAnimation()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    invoke-virtual {v0}, Lc8/mfg;->start()V

    .line 125
    :cond_0
    return-void
.end method

.method protected stopAnimation()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lc8/ufg;->circleProgressBar:Lc8/mfg;

    invoke-virtual {v0}, Lc8/mfg;->stop()V

    .line 143
    :cond_0
    return-void
.end method
