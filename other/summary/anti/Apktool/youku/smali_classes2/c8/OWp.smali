.class public Lc8/OWp;
.super Ljava/lang/Object;
.source "AgooFactory.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/QWp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageConnection"
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;

.field private messageId:Ljava/lang/String;

.field private sc:Landroid/content/ServiceConnection;

.field private sendMessage:Lc8/lXp;

.field final synthetic this$0:Lc8/QWp;


# direct methods
.method public constructor <init>(Lc8/QWp;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 617
    iput-object p1, p0, Lc8/OWp;->this$0:Lc8/QWp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Lc8/OWp;->messageId:Ljava/lang/String;

    .line 619
    iput-object p3, p0, Lc8/OWp;->intent:Landroid/content/Intent;

    .line 620
    iput-object p0, p0, Lc8/OWp;->sc:Landroid/content/ServiceConnection;

    .line 621
    return-void
.end method

.method static synthetic access$200(Lc8/OWp;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lc8/OWp;

    .prologue
    .line 609
    iget-object v0, p0, Lc8/OWp;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lc8/OWp;)Lc8/lXp;
    .locals 1
    .param p0, "x0"    # Lc8/OWp;

    .prologue
    .line 609
    iget-object v0, p0, Lc8/OWp;->sendMessage:Lc8/lXp;

    return-object v0
.end method

.method static synthetic access$302(Lc8/OWp;Lc8/lXp;)Lc8/lXp;
    .locals 0
    .param p0, "x0"    # Lc8/OWp;
    .param p1, "x1"    # Lc8/lXp;

    .prologue
    .line 609
    iput-object p1, p0, Lc8/OWp;->sendMessage:Lc8/lXp;

    return-object p1
.end method

.method static synthetic access$400(Lc8/OWp;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lc8/OWp;

    .prologue
    .line 609
    iget-object v0, p0, Lc8/OWp;->sc:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 630
    const-string/jumbo v0, "AgooFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MessageConnection conneted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    invoke-static {p2}, Lc8/kXp;->asInterface(Landroid/os/IBinder;)Lc8/lXp;

    move-result-object v0

    iput-object v0, p0, Lc8/OWp;->sendMessage:Lc8/lXp;

    .line 632
    const-string/jumbo v0, "AgooFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnected current tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    const-string/jumbo v0, "AgooFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MessageConnection sent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/OWp;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lc8/OWp;->sendMessage:Lc8/lXp;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lc8/OWp;->this$0:Lc8/QWp;

    invoke-static {v0}, Lc8/QWp;->access$500(Lc8/QWp;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lc8/NWp;

    invoke-direct {v1, p0}, Lc8/NWp;-><init>(Lc8/OWp;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 655
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 625
    const-string/jumbo v0, "AgooFactory"

    const-string/jumbo v1, "MessageConnection disConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    return-void
.end method
