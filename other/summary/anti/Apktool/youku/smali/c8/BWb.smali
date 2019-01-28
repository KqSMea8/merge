.class public Lc8/BWb;
.super Ljava/lang/Object;
.source "SmoothnessDataHandler.java"

# interfaces
.implements Lc8/lsf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothDetailNotify(ILcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;JJS[S)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "onLineStat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p3, "timeStart"    # J
    .param p5, "usedTime"    # J
    .param p7, "frameCount"    # S
    .param p8, "frameTimeArray"    # [S

    .prologue
    const/4 v4, 0x0

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 33
    :goto_0
    return-void

    .line 21
    :pswitch_0
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fWb;->defaultGodeyeJointPointCenter()Lc8/mWb;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "event.pageLoadFinished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/mWb;->invokeCustomEventJointPointHandlersIfExist(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :pswitch_1
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v0

    new-instance v1, Lc8/WWb;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "touchBegin"

    invoke-direct {v1, v2, v3, v4}, Lc8/WWb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc8/fWb;->addClientEvent(Lc8/WWb;)V

    goto :goto_0

    .line 29
    :pswitch_2
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v0

    new-instance v1, Lc8/WWb;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "flingBegin"

    invoke-direct {v1, v2, v3, v4}, Lc8/WWb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc8/fWb;->addClientEvent(Lc8/WWb;)V

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
