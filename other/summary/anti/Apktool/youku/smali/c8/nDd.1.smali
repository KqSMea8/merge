.class public final Lc8/nDd;
.super Ljava/lang/Object;
.source "LogDBOperation.java"


# instance fields
.field private a:Lc8/eDd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lc8/eDd;

    const-class v1, Lc8/mDd;

    invoke-static {v1}, Lc8/eDd;->a(Ljava/lang/Class;)Lc8/dDd;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lc8/eDd;-><init>(Landroid/content/Context;Lc8/dDd;)V

    iput-object v0, p0, Lc8/nDd;->a:Lc8/eDd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/oDd;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lc8/oDd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/nDd;->a:Lc8/eDd;

    invoke-virtual {v1, v0, p2}, Lc8/eDd;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lc8/oDd;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lc8/oDd;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lc8/oDd;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/nDd;->a:Lc8/eDd;

    invoke-virtual {v2, v1, p2}, Lc8/eDd;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "LogDB"

    const-string/jumbo v3, "ByState"

    invoke-static {v1, v2, v3}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lc8/oDd;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lc8/oDd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/oDd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lc8/nDd;->a:Lc8/eDd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lc8/eDd;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v0, p0, Lc8/nDd;->a:Lc8/eDd;

    invoke-virtual {v0, p1}, Lc8/eDd;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oDd;

    invoke-virtual {p1}, Lc8/oDd;->a()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lc8/oDd;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lc8/oDd;->b(I)V

    :goto_1
    iget-object v2, p0, Lc8/nDd;->a:Lc8/eDd;

    invoke-virtual {v2, v1, v0, v4}, Lc8/eDd;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Lc8/oDd;->b(I)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/oDd;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lc8/nDd;->c(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogDB"

    const-string/jumbo v2, "delLog"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lc8/oDd;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lc8/oDd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/oDd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/nDd;->a:Lc8/eDd;

    invoke-virtual {v1, v0, p1}, Lc8/eDd;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogDB"

    const-string/jumbo v2, "updateLogInfo"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/oDd;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lc8/nDd;->c(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
