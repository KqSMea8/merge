.class public Lc8/aXp;
.super Lc8/kXp;
.source "MessageReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bXp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bXp;


# direct methods
.method constructor <init>(Lc8/bXp;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lc8/aXp;->this$0:Lc8/bXp;

    invoke-direct {p0}, Lc8/kXp;-><init>()V

    return-void
.end method


# virtual methods
.method public doSend(Landroid/content/Intent;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lc8/aXp;->this$0:Lc8/bXp;

    invoke-virtual {v0}, Lc8/bXp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/aXp;->this$0:Lc8/bXp;

    iget-object v2, p0, Lc8/aXp;->this$0:Lc8/bXp;

    invoke-virtual {v2}, Lc8/bXp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/bXp;->getIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lc8/RWp;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    return v0
.end method
