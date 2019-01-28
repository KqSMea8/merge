.class public final Lc8/PBo;
.super Ljava/lang/Object;
.source "DrawerConfig.java"


# static fields
.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/PBo;->map:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getType(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v1, Lc8/PBo;->map:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 63
    .local v0, "result":Ljava/lang/reflect/Type;
    if-nez v0, :cond_0

    .line 64
    const-class v0, Ljava/lang/Object;

    .line 67
    :cond_0
    return-object v0
.end method

.method public static newListType(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 58
    new-instance v0, Lc8/QJb;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    const-class v3, Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lc8/QJb;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static register(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/reflect/Type;

    .prologue
    .line 71
    sget-object v0, Lc8/PBo;->map:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public static register(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;"
    sget-object v0, Lc8/PBo;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 76
    return-void
.end method

.method public static unregister(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lc8/PBo;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method
