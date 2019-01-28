.class public Lc8/RGd;
.super Ljava/lang/Object;
.source "IntentReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/SGd;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/SGd;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lc8/SGd;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lc8/SGd;

    .prologue
    .line 29
    iput-object p1, p0, Lc8/RGd;->this$0:Lc8/SGd;

    iput-object p2, p0, Lc8/RGd;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lc8/RGd;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lc8/RGd;->this$0:Lc8/SGd;

    iget-object v1, p0, Lc8/RGd;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lc8/RGd;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lc8/SGd;->onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 33
    invoke-static {}, Lc8/SGd;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lc8/SGd;->access$100()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 36
    :cond_0
    return-void
.end method
