.class public Lc8/YKj;
.super Landroid/content/BroadcastReceiver;
.source "StepService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/pedometer/service/StepService;->initBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/pedometer/service/StepService;


# direct methods
.method public constructor <init>(Lcom/youku/pedometer/service/StepService;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lc8/YKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v2, 0xea60

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-static {v2}, Lcom/youku/pedometer/service/StepService;->access$102(I)I

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const v1, 0x1d4c0

    invoke-static {v1}, Lcom/youku/pedometer/service/StepService;->access$102(I)I

    goto :goto_0

    .line 133
    :cond_2
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    invoke-static {v2}, Lcom/youku/pedometer/service/StepService;->access$102(I)I

    goto :goto_0

    .line 137
    :cond_3
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    iget-object v1, p0, Lc8/YKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v1}, Lcom/youku/pedometer/service/StepService;->access$200(Lcom/youku/pedometer/service/StepService;)V

    goto :goto_0

    .line 141
    :cond_4
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    iget-object v1, p0, Lc8/YKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v1}, Lcom/youku/pedometer/service/StepService;->access$200(Lcom/youku/pedometer/service/StepService;)V

    goto :goto_0

    .line 146
    :cond_5
    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 147
    iget-object v1, p0, Lc8/YKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v1}, Lcom/youku/pedometer/service/StepService;->access$200(Lcom/youku/pedometer/service/StepService;)V

    .line 148
    iget-object v1, p0, Lc8/YKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v1}, Lcom/youku/pedometer/service/StepService;->access$300(Lcom/youku/pedometer/service/StepService;)V

    goto :goto_0

    .line 149
    :cond_6
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 151
    iget-object v1, p0, Lc8/YKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v1}, Lcom/youku/pedometer/service/StepService;->access$200(Lcom/youku/pedometer/service/StepService;)V

    .line 152
    iget-object v1, p0, Lc8/YKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v1}, Lcom/youku/pedometer/service/StepService;->access$300(Lcom/youku/pedometer/service/StepService;)V

    goto :goto_0

    .line 155
    :cond_7
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lc8/YKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v1}, Lcom/youku/pedometer/service/StepService;->access$200(Lcom/youku/pedometer/service/StepService;)V

    .line 157
    iget-object v1, p0, Lc8/YKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v1}, Lcom/youku/pedometer/service/StepService;->access$300(Lcom/youku/pedometer/service/StepService;)V

    goto/16 :goto_0
.end method
