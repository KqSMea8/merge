.class public Lc8/TZb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/bac;


# instance fields
.field final synthetic a:Lc8/eFb;

.field final synthetic b:Lc8/SZb;


# direct methods
.method constructor <init>(Lc8/SZb;Lc8/eFb;)V
    .locals 0

    iput-object p1, p0, Lc8/TZb;->b:Lc8/SZb;

    iput-object p2, p0, Lc8/TZb;->a:Lc8/eFb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lc8/fFb;

    const-string/jumbo v1, "6"

    invoke-direct {v0, v1}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lc8/fFb;->setResultMsg(Ljava/lang/String;)V

    iget-object v1, p0, Lc8/TZb;->a:Lc8/eFb;

    invoke-virtual {v1, v0}, Lc8/eFb;->error(Lc8/fFb;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5

    new-instance v1, Lc8/fFb;

    const-string/jumbo v0, "0"

    invoke-direct {v1, v0}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/AIb;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2MapObject(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lc8/fFb;->addData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "alibc"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lc8/TZb;->a:Lc8/eFb;

    invoke-virtual {v0, v1}, Lc8/eFb;->success(Lc8/fFb;)V

    return-void
.end method
