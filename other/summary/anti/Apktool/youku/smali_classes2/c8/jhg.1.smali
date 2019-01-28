.class public Lc8/jhg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/khg;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lc8/khg;


# direct methods
.method constructor <init>(Lc8/khg;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lc8/jhg;->b:Lc8/khg;

    iput-object p2, p0, Lc8/jhg;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 291
    new-instance v0, Lc8/Chg;

    iget-object v1, p0, Lc8/jhg;->a:Landroid/app/Activity;

    const-string/jumbo v2, "action_login"

    iget-object v3, p0, Lc8/jhg;->b:Lc8/khg;

    iget-object v3, v3, Lc8/khg;->a:Ljava/lang/String;

    iget-object v4, p0, Lc8/jhg;->b:Lc8/khg;

    iget-object v4, v4, Lc8/khg;->b:Lc8/Dmg;

    iget-object v5, p0, Lc8/jhg;->b:Lc8/khg;

    iget-object v5, v5, Lc8/khg;->c:Lc8/shg;

    invoke-static {v5}, Lc8/shg;->f(Lc8/shg;)Lc8/thg;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lc8/Chg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Dmg;Lc8/thg;)V

    .line 292
    iget-object v1, p0, Lc8/jhg;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/jhg;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lc8/Chg;->show()V

    .line 295
    :cond_0
    return-void
.end method
