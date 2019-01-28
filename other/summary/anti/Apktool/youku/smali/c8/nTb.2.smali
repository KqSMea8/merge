.class public Lc8/nTb;
.super Ljava/lang/Thread;
.source "SendManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qTb;->sendReports([Lc8/NSb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qTb;


# direct methods
.method constructor <init>(Lc8/qTb;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lc8/nTb;->this$0:Lc8/qTb;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 97
    :try_start_0
    iget-object v7, p0, Lc8/nTb;->this$0:Lc8/qTb;

    iget-object v7, v7, Lc8/qTb;->mWaitingSend:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 98
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/motu/crashreporter/CrashReport;>;>;"
    if-eqz v4, :cond_7

    .line 99
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 100
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/motu/crashreporter/CrashReport;>;"
    if-eqz v2, :cond_3

    .line 103
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/NSb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .local v0, "crashReport":Lc8/NSb;
    if-nez v0, :cond_0

    .line 155
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 160
    .end local v0    # "crashReport":Lc8/NSb;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/motu/crashreporter/CrashReport;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/motu/crashreporter/CrashReport;>;>;"
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lc8/nTb;->this$0:Lc8/qTb;

    iget-object v8, v8, Lc8/qTb;->mSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v7

    .line 106
    .restart local v0    # "crashReport":Lc8/NSb;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/motu/crashreporter/CrashReport;>;"
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/motu/crashreporter/CrashReport;>;>;"
    :cond_0
    :try_start_3
    iget-object v7, v0, Lc8/NSb;->mReportPath:Ljava/lang/String;

    invoke-static {v7}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v0, Lc8/NSb;->mReportName:Ljava/lang/String;

    invoke-static {v7}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v0, Lc8/NSb;->mReportType:Ljava/lang/String;

    invoke-static {v7}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v7

    if-eqz v7, :cond_2

    .line 110
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Lc8/NSb;->deleteReportFile()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    :goto_1
    :try_start_5
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v7, "remote invalid crash report."

    invoke-static {v7, v1}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 155
    .end local v0    # "crashReport":Lc8/NSb;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    :try_start_7
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 118
    .restart local v0    # "crashReport":Lc8/NSb;
    :cond_2
    :try_start_8
    invoke-virtual {v0}, Lc8/NSb;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 120
    invoke-virtual {v0}, Lc8/NSb;->extractPropertys()V

    .line 123
    iget-object v7, p0, Lc8/nTb;->this$0:Lc8/qTb;

    iget-object v7, v7, Lc8/qTb;->sendListenerMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/RSb;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 125
    .local v5, "snedListener":Lc8/RSb;
    :try_start_9
    invoke-interface {v5, v0}, Lc8/RSb;->beforeSend(Lc8/NSb;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 126
    :catch_1
    move-exception v1

    .line 127
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_a
    const-string/jumbo v7, "beforeSend"

    invoke-static {v7, v1}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "snedListener":Lc8/RSb;
    :catch_2
    move-exception v1

    .line 150
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string/jumbo v7, "send and del crash report."

    invoke-static {v7, v1}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 155
    .end local v0    # "crashReport":Lc8/NSb;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    :try_start_c
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 131
    .restart local v0    # "crashReport":Lc8/NSb;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_d
    iget-object v7, p0, Lc8/nTb;->this$0:Lc8/qTb;

    iget-object v7, v7, Lc8/qTb;->mReportSender:Lc8/pTb;

    invoke-interface {v7, v0}, Lc8/pTb;->sendReport(Lc8/NSb;)Z

    move-result v6

    .line 134
    .local v6, "snedSuccess":Z
    iget-object v7, p0, Lc8/nTb;->this$0:Lc8/qTb;

    iget-object v7, v7, Lc8/qTb;->sendListenerMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/RSb;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 136
    .restart local v5    # "snedListener":Lc8/RSb;
    :try_start_e
    invoke-interface {v5, v6, v0}, Lc8/RSb;->afterSend(ZLc8/NSb;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_4

    .line 137
    :catch_3
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_f
    const-string/jumbo v7, "beforeSend"

    invoke-static {v7, v1}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "snedListener":Lc8/RSb;
    :cond_5
    if-eqz v6, :cond_3

    .line 143
    invoke-virtual {v0}, Lc8/NSb;->deleteReportFile()V

    goto :goto_3

    .line 145
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "snedSuccess":Z
    :cond_6
    iget-boolean v7, v0, Lc8/NSb;->mCurrentTrigger:Z

    if-nez v7, :cond_3

    .line 147
    invoke-virtual {v0}, Lc8/NSb;->deleteReportFile()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_3

    .line 160
    .end local v0    # "crashReport":Lc8/NSb;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/motu/crashreporter/CrashReport;>;"
    :cond_7
    iget-object v7, p0, Lc8/nTb;->this$0:Lc8/qTb;

    iget-object v7, v7, Lc8/qTb;->mSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    return-void
.end method
