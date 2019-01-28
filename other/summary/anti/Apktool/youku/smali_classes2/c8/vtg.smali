.class public Lc8/vtg;
.super Ljava/lang/Object;
.source "UploaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ttg;
    }
.end annotation


# instance fields
.field public final a:Lc8/ttg;

.field public final b:Lc8/tsg;

.field public final c:Landroid/content/Context;

.field d:Lc8/lsg;


# direct methods
.method constructor <init>(Landroid/content/Context;Lc8/jsg;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "d"    # Lc8/jsg;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lc8/vtg;->c:Landroid/content/Context;

    .line 39
    invoke-interface {p2}, Lc8/jsg;->getEnvironment()Lc8/lsg;

    move-result-object v0

    .line 40
    .local v0, "e":Lc8/lsg;
    instance-of v1, v0, Lc8/tsg;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lc8/tsg;

    .end local v0    # "e":Lc8/lsg;
    iput-object v0, p0, Lc8/vtg;->b:Lc8/tsg;

    .line 110
    :goto_0
    new-instance v1, Lc8/ttg;

    iget-object v2, p0, Lc8/vtg;->b:Lc8/tsg;

    invoke-direct {v1, v2}, Lc8/ttg;-><init>(Lc8/tsg;)V

    iput-object v1, p0, Lc8/vtg;->a:Lc8/ttg;

    .line 111
    invoke-interface {p2}, Lc8/jsg;->getStatistics()Lc8/psg;

    move-result-object v1

    invoke-static {v1}, Lc8/qtg;->a(Lc8/psg;)V

    .line 112
    invoke-interface {p2}, Lc8/jsg;->getLog()Lc8/nsg;

    move-result-object v1

    invoke-static {v1}, Lc8/Tsg;->a(Lc8/nsg;)V

    .line 113
    return-void

    .line 46
    .restart local v0    # "e":Lc8/lsg;
    :cond_0
    invoke-interface {p2}, Lc8/jsg;->getEnvironment()Lc8/lsg;

    move-result-object v1

    iput-object v1, p0, Lc8/vtg;->d:Lc8/lsg;

    .line 48
    new-instance v1, Lc8/rtg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc8/rtg;-><init>(Lc8/vtg;I)V

    iput-object v1, p0, Lc8/vtg;->b:Lc8/tsg;

    goto :goto_0
.end method
