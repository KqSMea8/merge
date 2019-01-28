.class public Lc8/cIf;
.super Landroid/os/Handler;
.source "LogCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eIf;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/eIf;


# direct methods
.method constructor <init>(Lc8/eIf;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 112
    iput-object p1, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 117
    :pswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lc8/BHf;

    .line 118
    .local v9, "tLogEntity":Lc8/BHf;
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    iget v11, v9, Lc8/BHf;->length:I

    int-to-long v12, v11

    invoke-static {v10, v12, v13}, Lc8/eIf;->access$022(Lc8/eIf;J)J

    .line 122
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-static {v10, v9}, Lc8/eIf;->access$100(Lc8/eIf;Lc8/BHf;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 126
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-static {v10}, Lc8/eIf;->access$200(Lc8/eIf;)Lc8/gIf;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 127
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-static {v10}, Lc8/eIf;->access$200(Lc8/eIf;)Lc8/gIf;

    move-result-object v10

    invoke-virtual {v10, v0}, Lc8/gIf;->writeLog(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    const/4 v6, 0x0

    .line 130
    .local v6, "preFileName":Ljava/lang/String;
    invoke-static {}, Lc8/EHf;->getStrategy()Lcom/taobao/tao/log/TLogFileSaveStrategy;

    move-result-object v10

    sget-object v11, Lcom/taobao/tao/log/TLogFileSaveStrategy;->MOREFILE:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    if-ne v10, v11, :cond_2

    .line 131
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 132
    .local v8, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "tlog_current_file_name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lc8/IHf;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 134
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "The preFileName is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .end local v8    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 137
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    new-instance v11, Lc8/gIf;

    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lc8/IHf;->getAbsoluteFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lc8/gIf;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lc8/eIf;->access$202(Lc8/eIf;Lc8/gIf;)Lc8/gIf;

    .line 141
    :goto_1
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-static {v10}, Lc8/eIf;->access$200(Lc8/eIf;)Lc8/gIf;

    move-result-object v10

    invoke-virtual {v10}, Lc8/gIf;->init()Z

    move-result v5

    .line 142
    .local v5, "flag":Z
    if-eqz v5, :cond_4

    .line 143
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-static {v10}, Lc8/eIf;->access$200(Lc8/eIf;)Lc8/gIf;

    move-result-object v10

    invoke-virtual {v10, v0}, Lc8/gIf;->writeLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    .end local v5    # "flag":Z
    :cond_3
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    new-instance v11, Lc8/gIf;

    invoke-direct {v11, v6}, Lc8/gIf;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lc8/eIf;->access$202(Lc8/eIf;Lc8/gIf;)Lc8/gIf;

    goto :goto_1

    .line 145
    .restart local v5    # "flag":Z
    :cond_4
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-static {v10}, Lc8/eIf;->access$300(Lc8/eIf;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 150
    .end local v0    # "content":Ljava/lang/String;
    .end local v5    # "flag":Z
    .end local v6    # "preFileName":Ljava/lang/String;
    .end local v9    # "tLogEntity":Lc8/BHf;
    :pswitch_2
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-static {v10}, Lc8/eIf;->access$200(Lc8/eIf;)Lc8/gIf;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 151
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-static {v10}, Lc8/eIf;->access$200(Lc8/eIf;)Lc8/gIf;

    move-result-object v10

    invoke-virtual {v10}, Lc8/gIf;->flushBuffer()Z

    .line 152
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lc8/SHf;->getInstances(Landroid/content/Context;)Lc8/SHf;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lc8/SHf;->flushFinish(Z)V

    goto/16 :goto_0

    .line 154
    :cond_5
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lc8/SHf;->getInstances(Landroid/content/Context;)Lc8/SHf;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lc8/SHf;->flushFinish(Z)V

    goto/16 :goto_0

    .line 158
    :pswitch_3
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-static {v10}, Lc8/eIf;->access$200(Lc8/eIf;)Lc8/gIf;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 159
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-static {v10}, Lc8/eIf;->access$200(Lc8/eIf;)Lc8/gIf;

    move-result-object v10

    invoke-virtual {v10}, Lc8/gIf;->renameFile()V

    goto/16 :goto_0

    .line 162
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lc8/BHf;

    .line 163
    .local v2, "data":Lc8/BHf;
    if-eqz v2, :cond_0

    .line 164
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    iget v11, v2, Lc8/BHf;->length:I

    int-to-long v12, v11

    invoke-static {v10, v12, v13}, Lc8/eIf;->access$022(Lc8/eIf;J)J

    .line 165
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-static {v10, v2}, Lc8/eIf;->access$100(Lc8/eIf;Lc8/BHf;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "content1":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 169
    invoke-static {}, Lc8/bIf;->getInstance()Lc8/bIf;

    move-result-object v10

    invoke-virtual {v10, v1}, Lc8/bIf;->sendLog(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 174
    .end local v1    # "content1":Ljava/lang/String;
    .end local v2    # "data":Lc8/BHf;
    :pswitch_5
    :try_start_0
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 175
    .local v7, "priority":I
    iget-object v10, p0, Lc8/cIf;->this$0:Lc8/eIf;

    invoke-static {v10}, Lc8/eIf;->access$400(Lc8/eIf;)Landroid/os/HandlerThread;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v10

    invoke-static {v10, v7}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 176
    .end local v7    # "priority":I
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 181
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lc8/BHf;

    .line 182
    .local v4, "entity":Lc8/BHf;
    invoke-static {}, Lc8/iIf;->getInstance()Lc8/iIf;

    move-result-object v10

    invoke-virtual {v10, v4}, Lc8/iIf;->put(Lc8/BHf;)V

    goto/16 :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
