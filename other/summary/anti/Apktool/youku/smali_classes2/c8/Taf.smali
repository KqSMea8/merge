.class public Lc8/Taf;
.super Landroid/widget/RelativeLayout;
.source "DCountDownTimerView.java"


# instance fields
.field private colonFirst:Landroid/widget/TextView;

.field private colonSecond:Landroid/widget/TextView;

.field private countDownTimerContainer:Landroid/view/View;

.field private futureTime:J

.field private futureTimeFormat:Ljava/text/SimpleDateFormat;

.field private hour:Landroid/widget/TextView;

.field private isAttached:Z

.field private isNativeTime:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimer:Lc8/Waf;

.field private minute:Landroid/widget/TextView;

.field private offset:J

.field private second:Landroid/widget/TextView;

.field private seeMoreView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Taf;->isNativeTime:Z

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Taf;->offset:J

    .line 238
    new-instance v0, Lc8/Saf;

    invoke-direct {v0, p0}, Lc8/Saf;-><init>(Lc8/Taf;)V

    iput-object v0, p0, Lc8/Taf;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    invoke-direct {p0}, Lc8/Taf;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Taf;->isNativeTime:Z

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Taf;->offset:J

    .line 238
    new-instance v0, Lc8/Saf;

    invoke-direct {v0, p0}, Lc8/Saf;-><init>(Lc8/Taf;)V

    iput-object v0, p0, Lc8/Taf;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    invoke-direct {p0}, Lc8/Taf;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Taf;->isNativeTime:Z

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Taf;->offset:J

    .line 238
    new-instance v0, Lc8/Saf;

    invoke-direct {v0, p0}, Lc8/Saf;-><init>(Lc8/Taf;)V

    iput-object v0, p0, Lc8/Taf;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    invoke-direct {p0}, Lc8/Taf;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lc8/Taf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Taf;

    .prologue
    .line 21
    iget-boolean v0, p0, Lc8/Taf;->isAttached:Z

    return v0
.end method

.method static synthetic access$100(Lc8/Taf;)Lc8/Waf;
    .locals 1
    .param p0, "x0"    # Lc8/Taf;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/Taf;->mTimer:Lc8/Waf;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lc8/Taf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$layout;->homepage_component_count_down_timer_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    sget v0, Lcom/youku/phone/R$id;->tv_hours:I

    invoke-virtual {p0, v0}, Lc8/Taf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Taf;->hour:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/youku/phone/R$id;->tv_minutes:I

    invoke-virtual {p0, v0}, Lc8/Taf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Taf;->minute:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/youku/phone/R$id;->tv_seconds:I

    invoke-virtual {p0, v0}, Lc8/Taf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Taf;->second:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/youku/phone/R$id;->tv_colon1:I

    invoke-virtual {p0, v0}, Lc8/Taf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Taf;->colonFirst:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/youku/phone/R$id;->tv_colon2:I

    invoke-virtual {p0, v0}, Lc8/Taf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Taf;->colonSecond:Landroid/widget/TextView;

    .line 68
    sget v0, Lcom/youku/phone/R$id;->count_down_timer_view_container:I

    invoke-virtual {p0, v0}, Lc8/Taf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/Taf;->countDownTimerContainer:Landroid/view/View;

    .line 69
    sget v0, Lcom/youku/phone/R$id;->see_more_default:I

    invoke-virtual {p0, v0}, Lc8/Taf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Taf;->seeMoreView:Landroid/widget/TextView;

    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/Taf;->futureTimeFormat:Ljava/text/SimpleDateFormat;

    .line 72
    return-void
.end method


# virtual methods
.method public getColonFirst()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lc8/Taf;->colonFirst:Landroid/widget/TextView;

    return-object v0
.end method

.method public getColonSecond()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lc8/Taf;->colonSecond:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHour()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lc8/Taf;->hour:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLastTime()J
    .locals 8

    .prologue
    .line 139
    iget-wide v4, p0, Lc8/Taf;->futureTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 140
    const-wide/16 v4, -0x1

    .line 152
    :goto_0
    return-wide v4

    .line 145
    :cond_0
    iget-boolean v4, p0, Lc8/Taf;->isNativeTime:Z

    if-eqz v4, :cond_1

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 152
    .local v2, "serverTime":J
    :goto_1
    iget-wide v4, p0, Lc8/Taf;->futureTime:J

    sub-long/2addr v4, v2

    goto :goto_0

    .line 148
    .end local v2    # "serverTime":J
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 149
    .local v0, "elapsedRealTime":J
    iget-wide v4, p0, Lc8/Taf;->offset:J

    add-long v2, v4, v0

    .restart local v2    # "serverTime":J
    goto :goto_1
.end method

.method public getMinute()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lc8/Taf;->minute:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSecond()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lc8/Taf;->second:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSeeMoreView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lc8/Taf;->seeMoreView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTimer()Lc8/Waf;
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lc8/Taf;->mTimer:Lc8/Waf;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lc8/Waf;

    const-wide/16 v2, 0x3e8

    new-instance v1, Lc8/Raf;

    invoke-direct {v1, p0}, Lc8/Raf;-><init>(Lc8/Taf;)V

    invoke-direct {v0, v2, v3, v1}, Lc8/Waf;-><init>(JLjava/lang/Runnable;)V

    iput-object v0, p0, Lc8/Taf;->mTimer:Lc8/Waf;

    .line 96
    :cond_0
    iget-object v0, p0, Lc8/Taf;->mTimer:Lc8/Waf;

    return-object v0
.end method

.method public hideCountDown()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lc8/Taf;->seeMoreView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lc8/Taf;->countDownTimerContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 197
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Taf;->isAttached:Z

    .line 200
    iget-object v1, p0, Lc8/Taf;->mTimer:Lc8/Waf;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lc8/Taf;->mTimer:Lc8/Waf;

    invoke-virtual {v1}, Lc8/Waf;->start()V

    .line 204
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lc8/Taf;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/Taf;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Taf;->isAttached:Z

    .line 215
    iget-object v0, p0, Lc8/Taf;->mTimer:Lc8/Waf;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lc8/Taf;->mTimer:Lc8/Waf;

    invoke-virtual {v0}, Lc8/Waf;->stop()V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lc8/Taf;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/Taf;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 226
    iget-object v0, p0, Lc8/Taf;->mTimer:Lc8/Waf;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_0
    if-nez p1, :cond_1

    .line 231
    iget-object v0, p0, Lc8/Taf;->mTimer:Lc8/Waf;

    invoke-virtual {v0}, Lc8/Waf;->start()V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lc8/Taf;->mTimer:Lc8/Waf;

    invoke-virtual {v0}, Lc8/Waf;->stop()V

    goto :goto_0
.end method

.method public setCurrentTime(J)V
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    .line 115
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/Taf;->isNativeTime:Z

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 117
    .local v0, "elapsedRealTime":J
    sub-long v2, p1, v0

    iput-wide v2, p0, Lc8/Taf;->offset:J

    .line 118
    return-void
.end method

.method public setFurtureTime(J)V
    .locals 1
    .param p1, "futureTime"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lc8/Taf;->futureTime:J

    .line 112
    return-void
.end method

.method public setyyyyMMddHHmmssCurrentTime(Ljava/lang/String;)V
    .locals 6
    .param p1, "currentTime"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    iget-object v4, p0, Lc8/Taf;->futureTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 131
    .local v0, "currentTimeLong":J
    const/4 v4, 0x0

    iput-boolean v4, p0, Lc8/Taf;->isNativeTime:Z

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 133
    .local v2, "elapsedRealTime":J
    sub-long v4, v0, v2

    iput-wide v4, p0, Lc8/Taf;->offset:J

    .line 134
    .end local v0    # "currentTimeLong":J
    .end local v2    # "elapsedRealTime":J
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v4

    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/Taf;->isNativeTime:Z

    goto :goto_0
.end method

.method public setyyyyMMddHHmmssFurtureTime(Ljava/lang/String;)V
    .locals 3
    .param p1, "futureTime"    # Ljava/lang/String;

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    .line 102
    .local v0, "start":J
    :try_start_0
    iget-object v2, p0, Lc8/Taf;->futureTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 107
    :goto_0
    iput-wide v0, p0, Lc8/Taf;->futureTime:J

    .line 108
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public showCountDown()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lc8/Taf;->seeMoreView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lc8/Taf;->countDownTimerContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void
.end method

.method public updateCountDownViewTime()V
    .locals 24

    .prologue
    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Taf;->countDownTimerContainer:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 193
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lc8/Taf;->getLastTime()J

    move-result-wide v6

    .line 161
    .local v6, "last":J
    const-wide/16 v4, 0x0

    .line 162
    .local v4, "hours":J
    const-wide/16 v8, 0x0

    .line 163
    .local v8, "minutes":J
    const-wide/16 v10, 0x0

    .line 165
    .local v10, "seconds":J
    const-wide/16 v20, 0x0

    cmp-long v19, v6, v20

    if-lez v19, :cond_1

    .line 166
    const/16 v12, 0x3e8

    .line 167
    .local v12, "ss":I
    const v3, 0xea60

    .line 168
    .local v3, "mi":I
    const v2, 0x36ee80

    .line 169
    .local v2, "ho":I
    int-to-long v0, v2

    move-wide/from16 v20, v0

    div-long v4, v6, v20

    .line 170
    int-to-long v0, v2

    move-wide/from16 v20, v0

    mul-long v20, v20, v4

    sub-long v20, v6, v20

    int-to-long v0, v3

    move-wide/from16 v22, v0

    div-long v8, v20, v22

    .line 171
    int-to-long v0, v2

    move-wide/from16 v20, v0

    mul-long v20, v20, v4

    sub-long v20, v6, v20

    int-to-long v0, v3

    move-wide/from16 v22, v0

    mul-long v22, v22, v8

    sub-long v20, v20, v22

    int-to-long v0, v12

    move-wide/from16 v22, v0

    div-long v10, v20, v22

    .line 174
    .end local v2    # "ho":I
    .end local v3    # "mi":I
    .end local v12    # "ss":I
    :cond_1
    const-wide/16 v20, 0x63

    cmp-long v19, v4, v20

    if-gtz v19, :cond_3

    const-wide/16 v20, 0x3c

    cmp-long v19, v8, v20

    if-gtz v19, :cond_3

    const-wide/16 v20, 0x3c

    cmp-long v19, v10, v20

    if-gtz v19, :cond_3

    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-nez v19, :cond_2

    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-nez v19, :cond_2

    const-wide/16 v20, 0x0

    cmp-long v19, v10, v20

    if-eqz v19, :cond_3

    .line 176
    :cond_2
    const-wide/16 v20, 0xa

    div-long v20, v4, v20

    move-wide/from16 v0, v20

    long-to-int v13, v0

    .line 177
    .local v13, "t1":I
    const-wide/16 v20, 0xa

    rem-long v20, v4, v20

    move-wide/from16 v0, v20

    long-to-int v14, v0

    .line 178
    .local v14, "t2":I
    const-wide/16 v20, 0xa

    div-long v20, v8, v20

    move-wide/from16 v0, v20

    long-to-int v15, v0

    .line 179
    .local v15, "t3":I
    const-wide/16 v20, 0xa

    rem-long v20, v8, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v16, v0

    .line 180
    .local v16, "t4":I
    const-wide/16 v20, 0xa

    div-long v20, v10, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v17, v0

    .line 181
    .local v17, "t5":I
    const-wide/16 v20, 0xa

    rem-long v20, v10, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v18, v0

    .line 183
    .local v18, "t6":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Taf;->hour:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Taf;->minute:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Taf;->second:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Taf;->countDownTimerContainer:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Taf;->seeMoreView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 189
    .end local v13    # "t1":I
    .end local v14    # "t2":I
    .end local v15    # "t3":I
    .end local v16    # "t4":I
    .end local v17    # "t5":I
    .end local v18    # "t6":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Taf;->countDownTimerContainer:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Taf;->seeMoreView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
