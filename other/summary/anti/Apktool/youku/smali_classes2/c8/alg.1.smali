.class public Lc8/alg;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lc8/clg;


# direct methods
.method public constructor <init>(Lc8/thg;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lc8/clg;

    invoke-direct {v0, p1}, Lc8/clg;-><init>(Lc8/thg;)V

    iput-object v0, p0, Lc8/alg;->a:Lc8/clg;

    .line 23
    return-void
.end method


# virtual methods
.method public ask(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lc8/alg;->a:Lc8/clg;

    invoke-virtual {v0, p1, p2, p3}, Lc8/clg;->ask(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 87
    return-void
.end method

.method public gift(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/alg;->a:Lc8/clg;

    invoke-virtual {v0, p1, p2, p3}, Lc8/clg;->gift(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 71
    return-void
.end method

.method public invite(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/alg;->a:Lc8/clg;

    invoke-virtual {v0, p1, p2, p3}, Lc8/clg;->invite(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 39
    return-void
.end method

.method public story(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/alg;->a:Lc8/clg;

    invoke-virtual {v0, p1, p2, p3}, Lc8/clg;->story(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 55
    return-void
.end method
