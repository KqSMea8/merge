.class public Lc8/Wxe;
.super Ljava/util/TimerTask;
.source "WBAgentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zxe;->timerTask(Landroid/content/Context;JJ)Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zxe;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/Zxe;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zxe;

    .prologue
    .line 350
    iput-object p1, p0, Lc8/Wxe;->this$0:Lc8/Zxe;

    iput-object p2, p0, Lc8/Wxe;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lc8/Wxe;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lc8/Wxe;->this$0:Lc8/Zxe;

    invoke-static {v1}, Lc8/Zxe;->access$000(Lc8/Zxe;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Pxe;->uploadAppLogs(Landroid/content/Context;Ljava/lang/String;)V

    .line 354
    return-void
.end method
