.class public Lc8/gF;
.super Ljava/lang/Object;
.source "WVMotion.java"

# interfaces
.implements Lc8/qE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyShakeListener"
.end annotation


# instance fields
.field private frequency:J

.field private mLastUpdateTime:J

.field final synthetic this$0:Lc8/hF;

.field private wvCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method public constructor <init>(Lc8/hF;Landroid/taobao/windvane/jsbridge/WVCallBackContext;J)V
    .locals 5
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p3, "frequency"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 184
    iput-object p1, p0, Lc8/gF;->this$0:Lc8/hF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/gF;->wvCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 181
    iput-wide v2, p0, Lc8/gF;->frequency:J

    .line 182
    iput-wide v2, p0, Lc8/gF;->mLastUpdateTime:J

    .line 185
    iput-object p2, p0, Lc8/gF;->wvCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 186
    iput-wide p3, p0, Lc8/gF;->frequency:J

    .line 187
    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 8

    .prologue
    .line 191
    iget-object v3, p0, Lc8/gF;->this$0:Lc8/hF;

    invoke-static {v3}, Lc8/hF;->access$000(Lc8/hF;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 194
    .local v0, "currentTime":J
    iget-wide v6, p0, Lc8/gF;->mLastUpdateTime:J

    sub-long v4, v0, v6

    .line 195
    .local v4, "timeInterval":J
    iget-wide v6, p0, Lc8/gF;->frequency:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 198
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 199
    .local v2, "result":Lc8/kE;
    invoke-virtual {v2}, Lc8/kE;->setSuccess()V

    .line 200
    iget-object v3, p0, Lc8/gF;->wvCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/gF;->wvCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-string/jumbo v6, "motion.shake"

    invoke-virtual {v2}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_2
    iput-wide v0, p0, Lc8/gF;->mLastUpdateTime:J

    goto :goto_0
.end method
