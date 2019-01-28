.class public Lc8/ZHf;
.super Landroid/os/Handler;
.source "RealTimeUploaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bIf;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bIf;


# direct methods
.method constructor <init>(Lc8/bIf;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 62
    iput-object p1, p0, Lc8/ZHf;->this$0:Lc8/bIf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/16 v0, 0xc

    const/4 v10, 0x1

    .line 66
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 69
    .local v7, "content":Ljava/lang/String;
    iget-object v1, p0, Lc8/ZHf;->this$0:Lc8/bIf;

    invoke-static {v1}, Lc8/bIf;->access$200(Lc8/bIf;)Lc8/YHf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/YHf;->isStop()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lc8/ZHf;->this$0:Lc8/bIf;

    invoke-static {v1}, Lc8/bIf;->access$200(Lc8/bIf;)Lc8/YHf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/YHf;->isSatisfyNetworkCondition()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v1, p0, Lc8/ZHf;->this$0:Lc8/bIf;

    invoke-static {v1}, Lc8/bIf;->access$200(Lc8/bIf;)Lc8/YHf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/YHf;->getRetryTimes()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 71
    invoke-static {}, Lc8/bIf;->access$300()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[realtimeupload] start sendLog \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    invoke-static {v7}, Lc8/bIf;->zip(Ljava/lang/String;)[B

    move-result-object v6

    .line 73
    .local v6, "bytes":[B
    iget-object v1, p0, Lc8/ZHf;->this$0:Lc8/bIf;

    invoke-static {v1, v6}, Lc8/bIf;->access$400(Lc8/bIf;[B)Z

    move-result v9

    .line 74
    .local v9, "result":Z
    invoke-static {}, Lc8/bIf;->access$300()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[realtimeupload] the sendLog return is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    if-eqz v9, :cond_0

    .line 76
    iget-object v0, p0, Lc8/ZHf;->this$0:Lc8/bIf;

    invoke-static {v0, v10}, Lc8/bIf;->access$520(Lc8/bIf;I)I

    .line 77
    invoke-static {}, Lc8/bIf;->access$300()Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 81
    .end local v6    # "bytes":[B
    .end local v9    # "result":Z
    :cond_1
    iget-object v1, p0, Lc8/ZHf;->this$0:Lc8/bIf;

    invoke-static {v1}, Lc8/bIf;->access$200(Lc8/bIf;)Lc8/YHf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/YHf;->stop()V

    .line 82
    const-string/jumbo v1, "Three time retry failed"

    const-string/jumbo v2, "9"

    iget-object v3, p0, Lc8/ZHf;->this$0:Lc8/bIf;

    invoke-static {v3}, Lc8/bIf;->access$200(Lc8/bIf;)Lc8/YHf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/YHf;->getParams()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 87
    .end local v8    # "i":I
    :cond_2
    :goto_2
    iget-object v0, p0, Lc8/ZHf;->this$0:Lc8/bIf;

    invoke-static {v0, v10}, Lc8/bIf;->access$520(Lc8/bIf;I)I

    goto/16 :goto_0

    .line 83
    :cond_3
    iget-object v1, p0, Lc8/ZHf;->this$0:Lc8/bIf;

    invoke-static {v1}, Lc8/bIf;->access$200(Lc8/bIf;)Lc8/YHf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/YHf;->isSatisfyNetworkCondition()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string/jumbo v1, ""

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lc8/ZHf;->this$0:Lc8/bIf;

    invoke-static {v3}, Lc8/bIf;->access$200(Lc8/bIf;)Lc8/YHf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/YHf;->getParams()Ljava/util/Map;

    move-result-object v3

    move v4, v10

    invoke-static/range {v0 .. v5}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 85
    iget-object v0, p0, Lc8/ZHf;->this$0:Lc8/bIf;

    invoke-static {v0}, Lc8/bIf;->access$200(Lc8/bIf;)Lc8/YHf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/YHf;->stop()V

    goto :goto_2

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
