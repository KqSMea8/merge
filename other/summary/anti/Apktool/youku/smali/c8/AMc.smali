.class public Lc8/AMc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lc8/BMc;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lc8/CMc;


# direct methods
.method constructor <init>(Lc8/CMc;Ljava/util/Map;Lc8/BMc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/AMc;->d:Lc8/CMc;

    iput-object p2, p0, Lc8/AMc;->a:Ljava/util/Map;

    iput-object p3, p0, Lc8/AMc;->b:Lc8/BMc;

    iput-object p4, p0, Lc8/AMc;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lc8/ZLc;

    iget-object v1, p0, Lc8/AMc;->d:Lc8/CMc;

    invoke-static {v1}, Lc8/CMc;->a(Lc8/CMc;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/ZLc;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lc8/AMc;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lc8/ZLc;->a(Ljava/util/Map;)I

    move-result v0

    iget-object v1, p0, Lc8/AMc;->b:Lc8/BMc;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/AMc;->d:Lc8/CMc;

    invoke-static {v0}, Lc8/CMc;->a(Lc8/CMc;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/AMc;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/ZLc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/AMc;->b:Lc8/BMc;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lc8/BMc;->onResult(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lc8/AMc;->b:Lc8/BMc;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2, v0}, Lc8/BMc;->onResult(Ljava/lang/String;I)V

    goto :goto_0
.end method
