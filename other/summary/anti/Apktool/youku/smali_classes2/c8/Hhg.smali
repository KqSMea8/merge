.class public Lc8/Hhg;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ihg;-><init>(Lc8/Jhg;Lc8/Dmg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/Jhg;

.field final synthetic b:Lc8/Ihg;


# direct methods
.method constructor <init>(Lc8/Ihg;Landroid/os/Looper;Lc8/Jhg;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lc8/Hhg;->b:Lc8/Ihg;

    iput-object p3, p0, Lc8/Hhg;->a:Lc8/Jhg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 299
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lc8/Hhg;->b:Lc8/Ihg;

    invoke-static {v0}, Lc8/Ihg;->a(Lc8/Ihg;)Lc8/Dmg;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lc8/Dmg;->onComplete(Ljava/lang/Object;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lc8/Hhg;->b:Lc8/Ihg;

    invoke-static {v0}, Lc8/Ihg;->a(Lc8/Ihg;)Lc8/Dmg;

    move-result-object v1

    new-instance v2, Lc8/Fmg;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lc8/Fmg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lc8/Dmg;->onError(Lc8/Fmg;)V

    goto :goto_0
.end method
