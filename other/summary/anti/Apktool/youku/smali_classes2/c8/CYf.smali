.class public Lc8/CYf;
.super Ljava/lang/Object;
.source "WXDomHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/BYf;
    }
.end annotation


# static fields
.field public static final DELAY_TIME:I = 0x10

.field public static final TRANSITION_DELAY_TIME:I = 0x2


# instance fields
.field private mHasBatch:Z

.field private mWXDomManager:Lc8/EYf;


# direct methods
.method public constructor <init>(Lc8/EYf;)V
    .locals 1
    .param p1, "domManager"    # Lc8/EYf;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/CYf;->mHasBatch:Z

    .line 44
    iput-object p1, p0, Lc8/CYf;->mWXDomManager:Lc8/EYf;

    .line 45
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v13, 0xff

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 49
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return v9

    .line 52
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    .line 53
    .local v4, "what":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 54
    .local v2, "obj":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 56
    .local v3, "task":Lc8/KYf;
    if-eqz v2, :cond_1

    instance-of v5, v2, Lc8/KYf;

    if-eqz v5, :cond_1

    move-object v3, v2

    .line 57
    check-cast v3, Lc8/KYf;

    .line 58
    check-cast v2, Lc8/KYf;

    .end local v2    # "obj":Ljava/lang/Object;
    iget-object v5, v2, Lc8/KYf;->args:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 59
    .local v0, "action":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v5, v0, Lc8/sZf;

    if-eqz v5, :cond_1

    .line 60
    check-cast v0, Lc8/sZf;

    .end local v0    # "action":Ljava/lang/Object;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v10

    sub-long/2addr v6, v10

    iput-wide v6, v0, Lc8/sZf;->mDomQueueTime:J

    .line 64
    :cond_1
    iget-boolean v5, p0, Lc8/CYf;->mHasBatch:Z

    if-nez v5, :cond_3

    .line 65
    iput-boolean v8, p0, Lc8/CYf;->mHasBatch:Z

    .line 66
    if-eq v4, v13, :cond_3

    .line 67
    const/16 v1, 0x10

    .line 68
    .local v1, "delayTime":I
    const/16 v5, 0xfb

    if-ne v4, v5, :cond_2

    .line 69
    const/4 v1, 0x2

    .line 71
    :cond_2
    iget-object v5, p0, Lc8/CYf;->mWXDomManager:Lc8/EYf;

    int-to-long v6, v1

    invoke-virtual {v5, v13, v6, v7}, Lc8/EYf;->sendEmptyMessageDelayed(IJ)V

    .line 74
    .end local v1    # "delayTime":I
    :cond_3
    sparse-switch v4, :sswitch_data_0

    :goto_1
    move v9, v8

    .line 95
    goto :goto_0

    .line 76
    :sswitch_0
    iget-object v7, p0, Lc8/CYf;->mWXDomManager:Lc8/EYf;

    iget-object v10, v3, Lc8/KYf;->instanceId:Ljava/lang/String;

    iget-object v5, v3, Lc8/KYf;->args:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/fYf;

    iget-object v6, v3, Lc8/KYf;->args:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v10, v5, v6}, Lc8/EYf;->executeAction(Ljava/lang/String;Lc8/fYf;Z)V

    goto :goto_1

    .line 80
    :sswitch_1
    iget-object v10, p0, Lc8/CYf;->mWXDomManager:Lc8/EYf;

    iget-object v11, v3, Lc8/KYf;->instanceId:Ljava/lang/String;

    iget-object v5, v3, Lc8/KYf;->args:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Lc8/KYf;->args:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    iget-object v7, v3, Lc8/KYf;->args:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v12, :cond_4

    iget-object v7, v3, Lc8/KYf;->args:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_2
    invoke-static {v5, v6, v7}, Lc8/YYf;->getUpdateStyle(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Z)Lc8/fYf;

    move-result-object v5

    invoke-virtual {v10, v11, v5, v9}, Lc8/EYf;->executeAction(Ljava/lang/String;Lc8/fYf;Z)V

    goto :goto_1

    :cond_4
    move v7, v9

    goto :goto_2

    .line 86
    :sswitch_2
    iget-object v5, p0, Lc8/CYf;->mWXDomManager:Lc8/EYf;

    invoke-virtual {v5}, Lc8/EYf;->batch()V

    .line 87
    iput-boolean v9, p0, Lc8/CYf;->mHasBatch:Z

    goto :goto_1

    .line 90
    :sswitch_3
    iget-object v5, p0, Lc8/CYf;->mWXDomManager:Lc8/EYf;

    iget-object v6, v3, Lc8/KYf;->instanceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc8/EYf;->consumeRenderTask(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xfa -> :sswitch_3
        0xfe -> :sswitch_0
        0xff -> :sswitch_2
    .end sparse-switch
.end method
