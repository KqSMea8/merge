.class public Lc8/YVo;
.super Landroid/content/BroadcastReceiver;
.source "WXPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/weex/WXPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/weex/WXPageActivity;


# direct methods
.method public constructor <init>(Lcom/youku/weex/WXPageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/weex/WXPageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 213
    iput-object p1, p0, Lc8/YVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    const-string/jumbo v0, "DEBUG_INSTANCE_REFRESH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lc8/YVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-static {v0}, Lcom/youku/weex/WXPageActivity;->access$400(Lcom/youku/weex/WXPageActivity;)Lc8/jwb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/jwb;->reload()V

    .line 219
    :cond_0
    return-void
.end method
