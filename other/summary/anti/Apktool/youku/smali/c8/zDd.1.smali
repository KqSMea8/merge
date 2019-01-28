.class public final Lc8/zDd;
.super Ljava/lang/Object;
.source "DexFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/BDd;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/zDd;->a:Landroid/content/Context;

    iput-object p2, p0, Lc8/zDd;->b:Ljava/lang/String;

    iput-object p3, p0, Lc8/zDd;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v1, Lc8/eDd;

    iget-object v0, p0, Lc8/zDd;->a:Landroid/content/Context;

    invoke-static {}, Lc8/GDd;->b()Lc8/GDd;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lc8/eDd;-><init>(Landroid/content/Context;Lc8/dDd;)V

    iget-object v0, p0, Lc8/zDd;->b:Ljava/lang/String;

    invoke-static {v0}, Lc8/IDd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lc8/IDd;

    invoke-virtual {v1, v0, v2}, Lc8/eDd;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IDd;

    invoke-virtual {v0}, Lc8/IDd;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/zDd;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lc8/IDd;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lc8/zDd;->a:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lc8/BDd;->b(Landroid/content/Context;Lc8/eDd;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FileManager"

    const-string/jumbo v2, "clearUnSuitableV"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
