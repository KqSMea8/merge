.class public Lc8/mff;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/iff;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lc8/lff;


# direct methods
.method constructor <init>(Lc8/lff;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lc8/mff;->b:Lc8/lff;

    iput-object p2, p0, Lc8/mff;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {p1}, Lc8/pff;->f(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/pff;

    invoke-virtual {v0}, Lc8/pff;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lc8/mff;->b:Lc8/lff;

    invoke-static {v1}, Lc8/lff;->a(Lc8/lff;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/iff;

    invoke-virtual {v0}, Lc8/pff;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lc8/iff;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/mff;->b:Lc8/lff;

    invoke-static {v0}, Lc8/lff;->a(Lc8/lff;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lc8/pff;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lc8/nff;

    invoke-direct {v1, p0, v3}, Lc8/nff;-><init>(Lc8/mff;Ljava/lang/String;)V

    move-object v3, v1

    :goto_3
    invoke-virtual {v0}, Lc8/pff;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lc8/mff;->b:Lc8/lff;

    invoke-static {v1}, Lc8/lff;->b(Lc8/lff;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lc8/pff;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/jff;

    :goto_4
    invoke-virtual {v0}, Lc8/pff;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lc8/jff;->a(Ljava/lang/String;Lc8/iff;)V

    goto :goto_2

    :cond_3
    new-instance v1, Lc8/off;

    invoke-direct {v1, p0}, Lc8/off;-><init>(Lc8/mff;)V

    move-object v3, v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lc8/mff;->b:Lc8/lff;

    invoke-static {v1}, Lc8/lff;->c(Lc8/lff;)Lc8/jff;

    move-result-object v1

    goto :goto_4
.end method
