.class public Lc8/fgg;
.super Lc8/Xfg;
.source "SingleFunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/egg;,
        Lc8/dgg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Xfg",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc8/dgg;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lc8/dgg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/dgg",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lc8/fgg;, "Lcom/taobao/weex/utils/SingleFunctionParser<TV;>;"
    .local p2, "mapper":Lc8/dgg;, "Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper<TV;>;"
    new-instance v0, Lc8/bgg;

    invoke-direct {v0, p2}, Lc8/bgg;-><init>(Lc8/dgg;)V

    invoke-direct {p0, p1, v0}, Lc8/Xfg;-><init>(Ljava/lang/String;Lc8/Wfg;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc8/egg;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lc8/egg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/egg",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lc8/fgg;, "Lcom/taobao/weex/utils/SingleFunctionParser<TV;>;"
    .local p2, "mapper":Lc8/egg;, "Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper<TV;>;"
    new-instance v0, Lc8/cgg;

    invoke-direct {v0, p2}, Lc8/cgg;-><init>(Lc8/egg;)V

    invoke-direct {p0, p1, v0}, Lc8/Xfg;-><init>(Ljava/lang/String;Lc8/Wfg;)V

    .line 74
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lc8/fgg;, "Lcom/taobao/weex/utils/SingleFunctionParser<TV;>;"
    invoke-virtual {p0}, Lc8/fgg;->parse()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 78
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<TV;>;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 81
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
