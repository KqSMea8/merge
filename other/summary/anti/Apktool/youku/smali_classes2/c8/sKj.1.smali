.class public Lc8/sKj;
.super Landroid/os/Handler;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tKj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressOutput"
.end annotation


# instance fields
.field private isFinished:Z

.field final synthetic this$0:Lc8/tKj;


# direct methods
.method public constructor <init>(Lc8/tKj;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 254
    iput-object p1, p0, Lc8/sKj;->this$0:Lc8/tKj;

    .line 255
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 251
    iput-boolean v0, p0, Lc8/sKj;->isFinished:Z

    .line 256
    iput-boolean v0, p0, Lc8/sKj;->isFinished:Z

    .line 257
    return-void
.end method

.method static synthetic access$700(Lc8/sKj;)Z
    .locals 1
    .param p0, "x0"    # Lc8/sKj;

    .prologue
    .line 249
    iget-boolean v0, p0, Lc8/sKj;->isFinished:Z

    return v0
.end method

.method static synthetic access$702(Lc8/sKj;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/sKj;
    .param p1, "x1"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Lc8/sKj;->isFinished:Z

    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    .line 261
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$800(Lc8/tKj;)Lc8/rKj;

    move-result-object v2

    if-nez v2, :cond_1

    .line 262
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$500(Lc8/tKj;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const/high16 v1, 0x42480000    # 50.0f

    .line 267
    .local v1, "progress":F
    :try_start_0
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$000(Lc8/tKj;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$100(Lc8/tKj;)Lc8/vKj;

    move-result-object v2

    invoke-virtual {v2}, Lc8/vKj;->getFileStart()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-object v4, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v4}, Lc8/tKj;->access$100(Lc8/tKj;)Lc8/vKj;

    move-result-object v4

    invoke-virtual {v4}, Lc8/vKj;->getFileEnd()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-float v1, v2

    .line 273
    :cond_2
    :goto_1
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$100(Lc8/tKj;)Lc8/vKj;

    move-result-object v2

    invoke-virtual {v2}, Lc8/vKj;->isStop()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 275
    const-string/jumbo v2, "PayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage..stop......isFinished:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lc8/sKj;->isFinished:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",progress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    cmpl-float v2, v1, v6

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lc8/sKj;->isFinished:Z

    if-eqz v2, :cond_4

    .line 278
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$800(Lc8/tKj;)Lc8/rKj;

    move-result-object v2

    invoke-interface {v2}, Lc8/rKj;->downloadSucess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$500(Lc8/tKj;)V

    .line 291
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$800(Lc8/tKj;)Lc8/rKj;

    move-result-object v2

    invoke-interface {v2}, Lc8/rKj;->downloadFail()V

    .line 292
    const-string/jumbo v2, "PayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage...Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$100(Lc8/tKj;)Lc8/vKj;

    move-result-object v2

    invoke-virtual {v2}, Lc8/vKj;->isStop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    const/high16 v1, 0x42c80000    # 100.0f

    goto/16 :goto_1

    .line 279
    :cond_4
    cmpl-float v2, v1, v6

    if-lez v2, :cond_5

    .line 280
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$500(Lc8/tKj;)V

    .line 281
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$800(Lc8/tKj;)Lc8/rKj;

    move-result-object v2

    invoke-interface {v2}, Lc8/rKj;->downloadFail()V

    goto/16 :goto_0

    .line 282
    :cond_5
    iget-boolean v2, p0, Lc8/sKj;->isFinished:Z

    if-nez v2, :cond_0

    .line 283
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$500(Lc8/tKj;)V

    .line 284
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$800(Lc8/tKj;)Lc8/rKj;

    move-result-object v2

    invoke-interface {v2}, Lc8/rKj;->downloadFail()V

    goto/16 :goto_0

    .line 287
    :cond_6
    iget-object v2, p0, Lc8/sKj;->this$0:Lc8/tKj;

    invoke-static {v2}, Lc8/tKj;->access$800(Lc8/tKj;)Lc8/rKj;

    move-result-object v2

    invoke-interface {v2, v1}, Lc8/rKj;->downloadProgress(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
