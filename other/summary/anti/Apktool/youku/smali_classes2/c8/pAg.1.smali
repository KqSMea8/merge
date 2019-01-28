.class public Lc8/pAg;
.super Lc8/Kzg;


# instance fields
.field final synthetic a:Lc8/oAg;


# direct methods
.method constructor <init>(Lc8/oAg;)V
    .locals 0

    iput-object p1, p0, Lc8/pAg;->a:Lc8/oAg;

    invoke-direct {p0}, Lc8/Kzg;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    invoke-static {}, Lc8/oAg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lc8/Ezg;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/pAg;->a:Lc8/oAg;

    invoke-static {v0}, Lc8/oAg;->a(Lc8/oAg;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lc8/pAg;->a:Lc8/oAg;

    invoke-static {v1}, Lc8/oAg;->a(Lc8/oAg;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lc8/pAg;->a:Lc8/oAg;

    invoke-static {v0}, Lc8/oAg;->b(Lc8/oAg;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
