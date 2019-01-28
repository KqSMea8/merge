.class public Lc8/ZKj;
.super Landroid/os/CountDownTimer;
.source "StepService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/pedometer/service/StepService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/pedometer/service/StepService;


# direct methods
.method public constructor <init>(Lcom/youku/pedometer/service/StepService;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 275
    iput-object p1, p0, Lc8/ZKj;->this$0:Lcom/youku/pedometer/service/StepService;

    .line 276
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 277
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lc8/ZKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v0}, Lcom/youku/pedometer/service/StepService;->access$400(Lcom/youku/pedometer/service/StepService;)Lc8/ZKj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lc8/ZKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v0}, Lcom/youku/pedometer/service/StepService;->access$400(Lcom/youku/pedometer/service/StepService;)Lc8/ZKj;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ZKj;->cancel()V

    .line 285
    :cond_0
    iget-object v0, p0, Lc8/ZKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v0}, Lcom/youku/pedometer/service/StepService;->access$200(Lcom/youku/pedometer/service/StepService;)V

    .line 286
    iget-object v0, p0, Lc8/ZKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v0}, Lcom/youku/pedometer/service/StepService;->access$500(Lcom/youku/pedometer/service/StepService;)V

    .line 287
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 292
    return-void
.end method
