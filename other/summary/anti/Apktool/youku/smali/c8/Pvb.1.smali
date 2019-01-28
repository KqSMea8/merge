.class public Lc8/Pvb;
.super Landroid/widget/FrameLayout;
.source "Marquee.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ovb;
    }
.end annotation


# static fields
.field private static final sSTOP_MSG:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private currentY:I

.field private delayTime:J

.field private durationTime:J

.field private handler:Landroid/os/Handler;

.field private intervalTime:J

.field private isFirst:Z

.field private isStop:Z

.field private mLogic:Ljava/lang/Runnable;

.field private marqueeRealView:Landroid/widget/FrameLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private time:J

.field private times:J

.field private viewHeight:I

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Pvb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lc8/Ovb;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/Ovb;-><init>(Lc8/Pvb;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lc8/Nvb;

    invoke-direct {v0, p0}, Lc8/Nvb;-><init>(Lc8/Pvb;)V

    iput-object v0, p0, Lc8/Pvb;->mLogic:Ljava/lang/Runnable;

    .line 44
    iput-object p1, p0, Lc8/Pvb;->context:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lc8/Pvb;->init()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lc8/Pvb;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget-object v0, p0, Lc8/Pvb;->marqueeRealView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Pvb;)I
    .locals 1
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget v0, p0, Lc8/Pvb;->viewHeight:I

    return v0
.end method

.method static synthetic access$1000(Lc8/Pvb;)J
    .locals 2
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget-wide v0, p0, Lc8/Pvb;->durationTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lc8/Pvb;Ljava/lang/Runnable;J)V
    .locals 0
    .param p0, "x0"    # Lc8/Pvb;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # J

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lc8/Pvb;->postDelayedInner(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic access$1200(Lc8/Pvb;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lc8/Pvb;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lc8/Pvb;->postInner(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1300(Lc8/Pvb;)J
    .locals 2
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget-wide v0, p0, Lc8/Pvb;->delayTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lc8/Pvb;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget-boolean v0, p0, Lc8/Pvb;->isFirst:Z

    return v0
.end method

.method static synthetic access$202(Lc8/Pvb;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Pvb;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lc8/Pvb;->isFirst:Z

    return p1
.end method

.method static synthetic access$300(Lc8/Pvb;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget-boolean v0, p0, Lc8/Pvb;->isStop:Z

    return v0
.end method

.method static synthetic access$302(Lc8/Pvb;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Pvb;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lc8/Pvb;->isStop:Z

    return p1
.end method

.method static synthetic access$400(Lc8/Pvb;)I
    .locals 1
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget v0, p0, Lc8/Pvb;->currentY:I

    return v0
.end method

.method static synthetic access$402(Lc8/Pvb;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Pvb;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lc8/Pvb;->currentY:I

    return p1
.end method

.method static synthetic access$500(Lc8/Pvb;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Pvb;)J
    .locals 2
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget-wide v0, p0, Lc8/Pvb;->intervalTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lc8/Pvb;)J
    .locals 2
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget-wide v0, p0, Lc8/Pvb;->times:J

    return-wide v0
.end method

.method static synthetic access$708(Lc8/Pvb;)J
    .locals 4
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget-wide v0, p0, Lc8/Pvb;->times:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lc8/Pvb;->times:J

    return-wide v0
.end method

.method static synthetic access$800(Lc8/Pvb;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget-object v0, p0, Lc8/Pvb;->viewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lc8/Pvb;)J
    .locals 2
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget-wide v0, p0, Lc8/Pvb;->time:J

    return-wide v0
.end method

.method static synthetic access$908(Lc8/Pvb;)J
    .locals 4
    .param p0, "x0"    # Lc8/Pvb;

    .prologue
    .line 20
    iget-wide v0, p0, Lc8/Pvb;->time:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lc8/Pvb;->time:J

    return-wide v0
.end method

.method private init()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 53
    iput-wide v4, p0, Lc8/Pvb;->delayTime:J

    .line 54
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lc8/Pvb;->intervalTime:J

    .line 55
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lc8/Pvb;->durationTime:J

    .line 56
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lc8/Pvb;->time:J

    .line 57
    iput-wide v4, p0, Lc8/Pvb;->times:J

    .line 58
    iput-boolean v2, p0, Lc8/Pvb;->isFirst:Z

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lc8/Pvb;->currentY:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Pvb;->viewList:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lc8/Pvb;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$layout;->huichang_marquee_layout:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    sget v0, Lcom/youku/phone/R$id;->huichang_marquee_scroll_view:I

    invoke-virtual {p0, v0}, Lc8/Pvb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lc8/Pvb;->scrollView:Landroid/widget/ScrollView;

    .line 63
    sget v0, Lcom/youku/phone/R$id;->huichang_marquee_layout:I

    invoke-virtual {p0, v0}, Lc8/Pvb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lc8/Pvb;->marqueeRealView:Landroid/widget/FrameLayout;

    .line 64
    return-void
.end method

.method private postDelayedInner(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "time"    # J

    .prologue
    .line 104
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private postInner(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 111
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    :cond_0
    return-void
.end method

.method public getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lc8/Pvb;->marqueeRealView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setDelayTime(J)V
    .locals 1
    .param p1, "delayTime"    # J

    .prologue
    .line 150
    iput-wide p1, p0, Lc8/Pvb;->delayTime:J

    .line 151
    return-void
.end method

.method public setDurationTime(J)V
    .locals 1
    .param p1, "durationTime"    # J

    .prologue
    .line 154
    iput-wide p1, p0, Lc8/Pvb;->durationTime:J

    .line 155
    return-void
.end method

.method public setIntervalTime(J)V
    .locals 1
    .param p1, "intervalTime"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lc8/Pvb;->intervalTime:J

    .line 147
    return-void
.end method

.method public setViewList(Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 9
    .param p2, "params"    # Landroid/widget/FrameLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v8, 0x0

    .line 158
    iget-object v6, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 159
    iget-object v6, p0, Lc8/Pvb;->marqueeRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 160
    iget-object v6, p0, Lc8/Pvb;->viewList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 161
    iget-object v6, p0, Lc8/Pvb;->viewList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v7, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 165
    iget-object v6, p0, Lc8/Pvb;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget v6, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v6, p0, Lc8/Pvb;->viewHeight:I

    .line 167
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 168
    .local v5, "w":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 169
    .local v1, "h":I
    iget-object v6, p0, Lc8/Pvb;->viewList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 171
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 172
    iget-object v6, p0, Lc8/Pvb;->viewList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 173
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v5, v1}, Landroid/view/View;->measure(II)V

    .line 174
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 175
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lc8/Pvb;->viewHeight:I

    iget-object v7, p0, Lc8/Pvb;->viewList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {v3, v8, v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 176
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {v4}, Landroid/view/View;->forceLayout()V

    .line 178
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 179
    iget-object v6, p0, Lc8/Pvb;->marqueeRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public startScroll()V
    .locals 6

    .prologue
    .line 128
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Pvb;->isStop:Z

    .line 133
    iget v0, p0, Lc8/Pvb;->viewHeight:I

    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lc8/Pvb;->mLogic:Ljava/lang/Runnable;

    iget-wide v2, p0, Lc8/Pvb;->durationTime:J

    iget v1, p0, Lc8/Pvb;->viewHeight:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lc8/Pvb;->postDelayedInner(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public startScrollA()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lc8/Pvb;->marqueeRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 123
    iput v2, p0, Lc8/Pvb;->currentY:I

    .line 124
    iget-object v0, p0, Lc8/Pvb;->mLogic:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-direct {p0, v0, v2, v3}, Lc8/Pvb;->postDelayedInner(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public stopScroll()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lc8/Pvb;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 143
    :cond_0
    return-void
.end method
