.class public final Lc8/Chn;
.super Ljava/lang/Object;
.source "WakeUpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ehn;->processWakeUp(Landroid/content/Context;Landroid/content/Intent;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$checkName:Ljava/lang/String;

.field final synthetic val$checkProcess:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$type:I

.field final synthetic val$waitTime:J


# direct methods
.method constructor <init>(JLjava/lang/String;Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 197
    iput-wide p1, p0, Lc8/Chn;->val$waitTime:J

    iput-object p3, p0, Lc8/Chn;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lc8/Chn;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Lc8/Chn;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lc8/Chn;->val$checkName:Ljava/lang/String;

    iput-object p7, p0, Lc8/Chn;->val$checkProcess:Ljava/lang/String;

    iput p8, p0, Lc8/Chn;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 203
    :try_start_0
    iget-wide v6, p0, Lc8/Chn;->val$waitTime:J

    cmp-long v6, v6, v12

    if-gez v6, :cond_0

    const-wide/16 v6, 0x3c

    :goto_0
    long-to-double v6, v6

    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v8

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    sub-double/2addr v6, v8

    double-to-long v4, v6

    .line 205
    .local v4, "sleepTime":J
    cmp-long v6, v4, v12

    if-lez v6, :cond_1

    .line 206
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lc8/Chn;->val$packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " \u5df2\u5b89\u88c5, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u79d2\u540e\u6267\u884c\u5524\u8d77 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/Chn;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 214
    :goto_1
    :try_start_2
    iget-object v6, p0, Lc8/Chn;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lc8/Chn;->val$checkName:Ljava/lang/String;

    iget-object v8, p0, Lc8/Chn;->val$checkProcess:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lc8/Ehn;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 215
    .local v1, "beforeRunning":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lc8/Chn;->val$packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " \u662f\u5426\u5df2\u7ecf\u8fd0\u884c "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_2

    const-string/jumbo v6, "\u662f"

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    iget-object v6, p0, Lc8/Chn;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lc8/Chn;->val$intent:Landroid/content/Intent;

    iget v8, p0, Lc8/Chn;->val$type:I

    invoke-static {v6, v7, v8}, Lc8/Ehn;->access$100(Landroid/content/Context;Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 218
    const-wide/16 v6, 0xfa0

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 222
    :goto_3
    :try_start_4
    iget-object v6, p0, Lc8/Chn;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lc8/Chn;->val$checkName:Ljava/lang/String;

    iget-object v8, p0, Lc8/Chn;->val$checkProcess:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lc8/Ehn;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 223
    .local v0, "afterRunning":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5524\u8d77 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/Chn;->val$packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_3

    const-string/jumbo v6, " \u6210\u529f"

    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    new-instance v6, Landroid/os/Handler;

    sget-object v7, Lc8/VLj;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lc8/Ahn;

    invoke-direct {v7, p0, v1, v0}, Lc8/Ahn;-><init>(Lc8/Chn;ZZ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    .end local v0    # "afterRunning":Z
    .end local v1    # "beforeRunning":Z
    .end local v4    # "sleepTime":J
    :goto_5
    return-void

    .line 203
    :cond_0
    iget-wide v6, p0, Lc8/Chn;->val$waitTime:J
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 209
    .restart local v4    # "sleepTime":J
    :cond_1
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lc8/Chn;->val$packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " \u5df2\u5b89\u88c5, \u7acb\u5373\u6267\u884c\u5524\u8d77 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/Chn;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 215
    .restart local v1    # "beforeRunning":Z
    :cond_2
    :try_start_6
    const-string/jumbo v6, "\u5426"

    goto/16 :goto_2

    .line 223
    .restart local v0    # "afterRunning":Z
    :cond_3
    const-string/jumbo v6, " \u5931\u8d25"
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 231
    .end local v0    # "afterRunning":Z
    .end local v1    # "beforeRunning":Z
    .end local v4    # "sleepTime":J
    :catch_1
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lc8/Chn;->val$packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " \u5524\u8d77\u5f02\u5e38 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    new-instance v6, Landroid/os/Handler;

    sget-object v7, Lc8/VLj;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lc8/Bhn;

    invoke-direct {v7, p0}, Lc8/Bhn;-><init>(Lc8/Chn;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 240
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    .line 241
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lc8/Chn;->val$packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " \u5524\u8d77\u5f02\u5e38 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_5

    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v1    # "beforeRunning":Z
    .restart local v4    # "sleepTime":J
    :catch_3
    move-exception v6

    goto/16 :goto_3
.end method
