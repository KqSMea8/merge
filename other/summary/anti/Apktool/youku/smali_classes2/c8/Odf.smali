.class public Lc8/Odf;
.super Ljava/lang/Object;
.source "ValueResolverFactory.java"


# static fields
.field private static valueResolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Ndf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    sput-object v0, Lc8/Odf;->valueResolvers:Ljava/util/List;

    new-instance v1, Lc8/Kdf;

    invoke-direct {v1}, Lc8/Kdf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lc8/Odf;->valueResolvers:Ljava/util/List;

    new-instance v1, Lc8/Jdf;

    invoke-direct {v1}, Lc8/Jdf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lc8/Odf;->valueResolvers:Ljava/util/List;

    new-instance v1, Lc8/Cdf;

    invoke-direct {v1}, Lc8/Cdf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lc8/Odf;->valueResolvers:Ljava/util/List;

    new-instance v1, Lc8/Ddf;

    invoke-direct {v1}, Lc8/Ddf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 26
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-object v3

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 30
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lc8/Odf;->valueResolvers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Ndf;

    .line 31
    .local v2, "valueResolver":Lc8/Ndf;
    invoke-interface {v2, p0, v0, p1}, Lc8/Ndf;->canResolve(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 32
    invoke-interface {v2, p0, v0, p1}, Lc8/Ndf;->resolve(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method
