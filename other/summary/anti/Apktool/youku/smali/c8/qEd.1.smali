.class public final Lc8/qEd;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tEd;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/tEd;


# direct methods
.method constructor <init>(Lc8/tEd;)V
    .locals 0

    iput-object p1, p0, Lc8/qEd;->a:Lc8/tEd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lc8/qEd;->a:Lc8/tEd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/tEd;->a:Z

    iget-object v0, p0, Lc8/qEd;->a:Lc8/tEd;

    invoke-static {p2}, Lc8/GFd;->a(Landroid/os/IBinder;)Lc8/HFd;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/tEd;->a(Lc8/tEd;Lc8/HFd;)Lc8/HFd;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lc8/qEd;->a:Lc8/tEd;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/tEd;->a:Z

    iget-object v0, p0, Lc8/qEd;->a:Lc8/tEd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/tEd;->a(Lc8/tEd;Lc8/HFd;)Lc8/HFd;

    return-void
.end method
