.class public Lc8/Wef;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lc8/Uef;


# direct methods
.method constructor <init>(Lc8/Uef;)V
    .locals 0

    iput-object p1, p0, Lc8/Wef;->a:Lc8/Uef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const/4 v1, 0x0

    const/16 v2, 0x2e19

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lc8/Wef;->a:Lc8/Uef;

    invoke-static {v2}, Lc8/Uef;->b(Lc8/Uef;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lc8/Wef;->a:Lc8/Uef;

    invoke-static {v0}, Lc8/Uef;->c(Lc8/Uef;)V

    iget-object v0, p0, Lc8/Wef;->a:Lc8/Uef;

    invoke-static {v0}, Lc8/Uef;->a(Lc8/Uef;)Lc8/Tef;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Wef;->a:Lc8/Uef;

    invoke-static {v0}, Lc8/Uef;->a(Lc8/Uef;)Lc8/Tef;

    move-result-object v0

    invoke-interface {v0}, Lc8/Tef;->onFailure()V

    :cond_0
    iget-object v0, p0, Lc8/Wef;->a:Lc8/Uef;

    invoke-static {v0, v1}, Lc8/Uef;->a(Lc8/Uef;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lc8/Wef;->a:Lc8/Uef;

    invoke-static {v0, v1}, Lc8/Uef;->a(Lc8/Uef;Landroid/os/Messenger;)Landroid/os/Messenger;

    invoke-static {v1}, Lc8/Uef;->a(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    return-void
.end method
