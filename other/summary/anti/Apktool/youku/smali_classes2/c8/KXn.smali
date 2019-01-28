.class public Lc8/KXn;
.super Ljava/lang/Object;
.source "GetUps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/LXn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/LXn;


# direct methods
.method constructor <init>(Lc8/LXn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/LXn;

    .prologue
    .line 437
    iput-object p1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v4, 0x3a98

    .line 440
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    new-instance v2, Lc8/xYn;

    invoke-direct {v2}, Lc8/xYn;-><init>()V

    iput-object v2, v1, Lc8/TXn;->upsTimeTraceBean:Lc8/xYn;

    .line 441
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iget-object v1, v1, Lc8/TXn;->upsTimeTraceBean:Lc8/xYn;

    invoke-virtual {v1}, Lc8/xYn;->startTrace()V

    .line 442
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$100(Lc8/LXn;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iget-object v1, v1, Lc8/TXn;->upsTimeTraceBean:Lc8/xYn;

    invoke-virtual {v1}, Lc8/xYn;->traceTimeGetCkey()V

    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    sget-object v1, Lc8/LXn;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "invalid url"

    invoke-static {v1, v2}, Lc8/QYn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 449
    :cond_0
    sget-object v1, Lc8/LXn;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ups url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/QYn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iput-object v0, v1, Lc8/TXn;->url:Ljava/lang/String;

    .line 452
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iget-object v2, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v2}, Lc8/LXn;->access$200(Lc8/LXn;)Lc8/SXn;

    move-result-object v2

    iput-object v2, v1, Lc8/TXn;->mTopUpsRequest:Lc8/SXn;

    .line 453
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iget-object v2, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v2}, Lc8/LXn;->access$300(Lc8/LXn;)I

    move-result v2

    iput v2, v1, Lc8/TXn;->upsType:I

    .line 455
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iget-object v2, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v2}, Lc8/LXn;->access$400(Lc8/LXn;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/TXn;->host:Ljava/lang/String;

    .line 456
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iget-object v2, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v2}, Lc8/LXn;->access$500(Lc8/LXn;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/TXn;->ip:Ljava/lang/String;

    .line 458
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$600(Lc8/LXn;)Lc8/LYn;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iget-object v2, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v2}, Lc8/LXn;->access$600(Lc8/LXn;)Lc8/LYn;

    move-result-object v2

    iget-object v2, v2, Lc8/LYn;->cookie:Ljava/lang/String;

    iput-object v2, v1, Lc8/TXn;->cookie:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iget-object v2, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v2}, Lc8/LXn;->access$600(Lc8/LXn;)Lc8/LYn;

    move-result-object v2

    iget-object v2, v2, Lc8/LYn;->userAgent:Ljava/lang/String;

    iput-object v2, v1, Lc8/TXn;->agent:Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iget-object v2, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v2}, Lc8/LXn;->access$600(Lc8/LXn;)Lc8/LYn;

    move-result-object v2

    iget v2, v2, Lc8/LYn;->connect_timeout:I

    iput v2, v1, Lc8/TXn;->connect_timeout:I

    .line 463
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iget-object v2, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v2}, Lc8/LXn;->access$600(Lc8/LXn;)Lc8/LYn;

    move-result-object v2

    iget v2, v2, Lc8/LYn;->read_timeout:I

    iput v2, v1, Lc8/TXn;->read_timeout:I

    .line 466
    :cond_1
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iget v1, v1, Lc8/TXn;->connect_timeout:I

    if-nez v1, :cond_2

    .line 467
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iput v4, v1, Lc8/TXn;->connect_timeout:I

    .line 468
    :cond_2
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iget v1, v1, Lc8/TXn;->read_timeout:I

    if-nez v1, :cond_3

    .line 469
    iget-object v1, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v1}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v1

    iput v4, v1, Lc8/TXn;->read_timeout:I

    .line 470
    :cond_3
    invoke-static {}, Lc8/LXn;->access$800()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lc8/PYn;

    iget-object v3, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v3}, Lc8/LXn;->access$000(Lc8/LXn;)Lc8/TXn;

    move-result-object v3

    iget-object v4, p0, Lc8/KXn;->this$0:Lc8/LXn;

    iget-object v4, v4, Lc8/LXn;->networkTask:Lc8/KYn;

    iget-object v5, p0, Lc8/KXn;->this$0:Lc8/LXn;

    invoke-static {v5}, Lc8/LXn;->access$700(Lc8/LXn;)Lc8/MXn;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lc8/PYn;-><init>(Lc8/TXn;Lc8/KYn;Lc8/MXn;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0
.end method
