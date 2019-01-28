.class public Lc8/ifn;
.super Ljava/util/TimerTask;
.source "DownloadAccManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ofn;->initTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ofn;


# direct methods
.method constructor <init>(Lc8/ofn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ofn;

    .prologue
    .line 302
    iput-object p1, p0, Lc8/ifn;->this$0:Lc8/ofn;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 305
    iget-object v1, p0, Lc8/ifn;->this$0:Lc8/ofn;

    invoke-static {v1}, Lc8/ofn;->access$300(Lc8/ofn;)Lc8/Sen;

    move-result-object v1

    iget v2, v1, Lc8/Sen;->remainAccTime:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lc8/Sen;->remainAccTime:I

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timerTask callback state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/ifn;->this$0:Lc8/ofn;

    invoke-static {v2}, Lc8/ofn;->access$200(Lc8/ofn;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , remainAccTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/ifn;->this$0:Lc8/ofn;

    invoke-static {v2}, Lc8/ofn;->access$300(Lc8/ofn;)Lc8/Sen;

    move-result-object v2

    iget v2, v2, Lc8/Sen;->remainAccTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lc8/ifn;->this$0:Lc8/ofn;

    invoke-static {v1}, Lc8/ofn;->access$300(Lc8/ofn;)Lc8/Sen;

    move-result-object v1

    iget v1, v1, Lc8/Sen;->remainAccTime:I

    if-gtz v1, :cond_0

    .line 308
    iget-object v1, p0, Lc8/ifn;->this$0:Lc8/ofn;

    invoke-virtual {v1}, Lc8/ofn;->stopDownloadAcc()Z

    .line 318
    :goto_0
    iget-object v1, p0, Lc8/ifn;->this$0:Lc8/ofn;

    iget-object v2, p0, Lc8/ifn;->this$0:Lc8/ofn;

    invoke-static {v2}, Lc8/ofn;->access$200(Lc8/ofn;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lc8/ofn;->access$500(Lc8/ofn;ILjava/util/Map;)V

    .line 319
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lc8/ifn;->this$0:Lc8/ofn;

    invoke-virtual {v1}, Lc8/ofn;->hasDownloadingVideo()Z

    move-result v0

    .line 312
    .local v0, "hasDownloadingVideo":Z
    if-eqz v0, :cond_1

    .line 313
    iget-object v1, p0, Lc8/ifn;->this$0:Lc8/ofn;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lc8/ofn;->access$400(Lc8/ofn;I)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lc8/ifn;->this$0:Lc8/ofn;

    invoke-virtual {v1}, Lc8/ofn;->pauseDownloadAcc()V

    goto :goto_0
.end method
