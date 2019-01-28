.class public Lc8/Jdf;
.super Ljava/lang/Object;
.source "ListValueResolver.java"

# interfaces
.implements Lc8/Ndf;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canResolve(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p1, Ljava/util/List;

    return v0
.end method

.method public resolve(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 25
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 26
    .local v1, "index":I
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 30
    .end local v1    # "index":I
    :goto_0
    return-object v3

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Ldf;->w(Ljava/lang/String;)V

    .line 30
    const/4 v3, 0x0

    goto :goto_0
.end method
