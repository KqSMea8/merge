.class public Lc8/gHb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/cHb;


# direct methods
.method constructor <init>(Lc8/cHb;)V
    .locals 0

    iput-object p1, p0, Lc8/gHb;->a:Lc8/cHb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc8/gHb;->a:Lc8/cHb;

    invoke-static {v0}, Lc8/cHb;->a(Lc8/cHb;)Lc8/iHb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/gHb;->a:Lc8/cHb;

    invoke-static {v0}, Lc8/cHb;->a(Lc8/cHb;)Lc8/iHb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/iHb;->a()V

    :cond_0
    iget-object v0, p0, Lc8/gHb;->a:Lc8/cHb;

    invoke-static {v0}, Lc8/cHb;->b(Lc8/cHb;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc8/gHb;->a:Lc8/cHb;

    iget-object v1, v1, Lc8/cHb;->a:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
