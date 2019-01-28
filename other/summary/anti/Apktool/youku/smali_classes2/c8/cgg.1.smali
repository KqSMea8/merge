.class public Lc8/cgg;
.super Ljava/lang/Object;
.source "SingleFunctionParser.java"

# interfaces
.implements Lc8/Wfg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fgg;-><init>(Ljava/lang/String;Lc8/egg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Wfg",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Lc8/egg;


# direct methods
.method constructor <init>(Lc8/egg;)V
    .locals 0

    .prologue
    .line 66
    .local p0, "this":Lc8/cgg;, "Lcom/taobao/weex/utils/SingleFunctionParser.2;"
    iput-object p1, p0, Lc8/cgg;->val$mapper:Lc8/egg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lc8/cgg;, "Lcom/taobao/weex/utils/SingleFunctionParser.2;"
    .local p2, "raw":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<TV;>;>;"
    iget-object v1, p0, Lc8/cgg;->val$mapper:Lc8/egg;

    invoke-interface {v1, p2}, Lc8/egg;->map(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object v0
.end method
