.class public Lc8/mAg;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lc8/lAg;


# direct methods
.method constructor <init>(Lc8/lAg;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lc8/mAg;->a:Lc8/lAg;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lc8/mAg;->a:Lc8/lAg;

    iget-object v1, p0, Lc8/mAg;->a:Lc8/lAg;

    invoke-static {v1}, Lc8/lAg;->a(Lc8/lAg;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/tAg;->a(Landroid/content/Context;)Lc8/tAg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/tAg;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/lAg;->a(Lc8/lAg;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lc8/mAg;->a:Lc8/lAg;

    invoke-static {v0}, Lc8/lAg;->b(Lc8/lAg;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/mAg;->a:Lc8/lAg;

    invoke-static {v0}, Lc8/lAg;->a(Lc8/lAg;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lc8/mAg;->a:Lc8/lAg;

    invoke-static {v0}, Lc8/lAg;->a(Lc8/lAg;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/Nzg;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/mAg;->a:Lc8/lAg;

    invoke-virtual {v0}, Lc8/lAg;->c()V

    :cond_0
    return-void
.end method
