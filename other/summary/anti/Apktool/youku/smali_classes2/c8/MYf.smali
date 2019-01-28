.class public Lc8/MYf;
.super Lc8/HYf;
.source "WXListDomObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/HYf;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultStyle()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 34
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 35
    .local v0, "isVertical":Z
    iget-object v3, p0, Lc8/MYf;->parent:Lc8/HYf;

    if-eqz v3, :cond_0

    .line 36
    iget-object v3, p0, Lc8/MYf;->parent:Lc8/HYf;

    invoke-virtual {v3}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 37
    iget-object v3, p0, Lc8/MYf;->parent:Lc8/HYf;

    invoke-virtual {v3}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hlist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 43
    :cond_0
    if-eqz v0, :cond_2

    const-string/jumbo v2, "height"

    .line 44
    .local v2, "prop":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lc8/MYf;->getStyles()Lc8/PYf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lc8/MYf;->getStyles()Lc8/PYf;

    move-result-object v3

    const-string/jumbo v4, "flex"

    invoke-virtual {v3, v4}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 46
    const-string/jumbo v3, "flex"

    const-string/jumbo v4, "1"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    return-object v1

    .line 43
    .end local v2    # "prop":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "width"

    goto :goto_0
.end method
