.class public Lc8/rA;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/sA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sA;


# direct methods
.method constructor <init>(Lc8/sA;)V
    .locals 0
    .param p1, "this$0"    # Lc8/sA;

    .prologue
    .line 259
    iput-object p1, p0, Lc8/rA;->this$0:Lc8/sA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lc8/rA;->this$0:Lc8/sA;

    invoke-static {v0}, Lc8/sA;->access$100(Lc8/sA;)Lc8/jA;

    move-result-object v0

    invoke-interface {v0}, Lc8/jA;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lc8/rA;->this$0:Lc8/sA;

    invoke-static {v1}, Lc8/sA;->access$200(Lc8/sA;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 263
    iget-object v0, p0, Lc8/rA;->this$0:Lc8/sA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/sA;->access$102(Lc8/sA;Lc8/jA;)Lc8/jA;

    .line 264
    iget-object v0, p0, Lc8/rA;->this$0:Lc8/sA;

    iget-object v1, p0, Lc8/rA;->this$0:Lc8/sA;

    invoke-static {v1}, Lc8/sA;->access$500(Lc8/sA;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/sA;->access$600(Lc8/sA;Ljava/lang/String;)V

    .line 265
    return-void
.end method
