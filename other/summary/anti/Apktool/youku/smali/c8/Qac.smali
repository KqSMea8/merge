.class public Lc8/Qac;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/bac;


# instance fields
.field final synthetic a:Lc8/Pac;


# direct methods
.method constructor <init>(Lc8/Pac;)V
    .locals 0

    iput-object p1, p0, Lc8/Qac;->a:Lc8/Pac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "AddCartWidget"

    const-string/jumbo v1, "add cart with want component fail"

    invoke-static {v0, v1}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/Qac;->a:Lc8/Pac;

    invoke-static {v0, p1, p2}, Lc8/Pac;->b(Lc8/Pac;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    const-string/jumbo v0, "AddCartWidget"

    const-string/jumbo v1, "add cart with want component success"

    invoke-static {v0, v1}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/Qac;->a:Lc8/Pac;

    const-string/jumbo v1, "addcart_success"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc8/Pac;->a(Lc8/Pac;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
