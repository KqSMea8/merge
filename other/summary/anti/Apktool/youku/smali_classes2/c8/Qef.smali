.class public Lc8/Qef;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/Tef;


# instance fields
.field final synthetic a:Lc8/iff;

.field final synthetic b:Lc8/Pef;


# direct methods
.method constructor <init>(Lc8/Pef;Lc8/iff;)V
    .locals 0

    iput-object p1, p0, Lc8/Qef;->b:Lc8/Pef;

    iput-object p2, p0, Lc8/Qef;->a:Lc8/iff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    iget-object v0, p0, Lc8/Qef;->a:Lc8/iff;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lc8/Qef;->a:Lc8/iff;

    const-string/jumbo v1, "{\"result\":false}"

    invoke-interface {v0, v1}, Lc8/iff;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public onSuccess(Lc8/Xef;)V
    .locals 5

    iget-object v0, p0, Lc8/Qef;->a:Lc8/iff;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lc8/Qef;->a:Lc8/iff;

    const-string/jumbo v1, "{\"result\":true,\"mixedNick\":\"%s\",\"icon\":\"%s\"}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lc8/Xef;->mixedNick:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lc8/Xef;->icon:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/iff;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0
.end method
