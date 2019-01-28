.class public Lc8/saf;
.super Ljava/lang/Object;
.source "ValueResolverFactory.java"


# static fields
.field private static valueResolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/raf;",
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

    .line 18
    sput-object v0, Lc8/saf;->valueResolvers:Ljava/util/List;

    new-instance v1, Lc8/qaf;

    invoke-direct {v1}, Lc8/qaf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lc8/saf;->valueResolvers:Ljava/util/List;

    new-instance v1, Lc8/paf;

    invoke-direct {v1}, Lc8/paf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lc8/saf;->valueResolvers:Ljava/util/List;

    new-instance v1, Lc8/naf;

    invoke-direct {v1}, Lc8/naf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lc8/saf;->valueResolvers:Ljava/util/List;

    new-instance v1, Lc8/oaf;

    invoke-direct {v1}, Lc8/oaf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public constructor <init>()V
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

    .line 28
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object p0, v3

    .line 40
    .end local p0    # "target":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object p0

    .line 31
    .restart local p0    # "target":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v4, "this"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 35
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lc8/saf;->valueResolvers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/raf;

    .line 36
    .local v2, "valueResolver":Lc8/raf;
    invoke-interface {v2, p0, v0, p1}, Lc8/raf;->canResolve(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 37
    invoke-interface {v2, p0, v0, p1}, Lc8/raf;->resolve(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .end local v2    # "valueResolver":Lc8/raf;
    :cond_4
    move-object p0, v3

    .line 40
    goto :goto_0
.end method
