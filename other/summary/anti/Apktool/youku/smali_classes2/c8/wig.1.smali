.class public final Lc8/wig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic l:Lc8/vig;


# direct methods
.method constructor <init>(Lc8/vig;)V
    .locals 0

    iput-object p1, p0, Lc8/wig;->l:Lc8/vig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lc8/wig;->l:Lc8/vig;

    iget-object v1, v1, Lc8/vig;->k:Lc8/uig;

    invoke-static {v1}, Lc8/uig;->a(Lc8/uig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tig;

    invoke-interface {v0}, Lc8/tig;->onQrcodeScanned()V

    goto :goto_0

    :cond_0
    return-void
.end method
