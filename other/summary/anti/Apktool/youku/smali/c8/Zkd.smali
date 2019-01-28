.class public final Lc8/Zkd;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lc8/Wjd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ykd;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lc8/skd;


# direct methods
.method public constructor <init>(Lc8/skd;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lc8/skd;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lc8/Zkd;->constructorConstructor:Lc8/skd;

    .line 41
    return-void
.end method


# virtual methods
.method public create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
    .locals 7
    .param p1, "gson"    # Lc8/Gjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Gjd;",
            "Lc8/omd",
            "<TT;>;)",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lc8/omd;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 47
    .local v5, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v3

    .line 48
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 49
    const/4 v4, 0x0

    .line 58
    :goto_0
    return-object v4

    .line 52
    :cond_0
    invoke-static {v5, v3}, Lc8/dkd;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 53
    .local v1, "elementType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Lc8/omd;->get(Ljava/lang/reflect/Type;)Lc8/omd;

    move-result-object v6

    invoke-virtual {p1, v6}, Lc8/Gjd;->getAdapter(Lc8/omd;)Lc8/Vjd;

    move-result-object v2

    .line 54
    .local v2, "elementTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    iget-object v6, p0, Lc8/Zkd;->constructorConstructor:Lc8/skd;

    invoke-virtual {v6, p2}, Lc8/skd;->get(Lc8/omd;)Lc8/Mkd;

    move-result-object v0

    .line 57
    .local v0, "constructor":Lc8/Mkd;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v4, Lc8/Ykd;

    invoke-direct {v4, p1, v1, v2, v0}, Lc8/Ykd;-><init>(Lc8/Gjd;Ljava/lang/reflect/Type;Lc8/Vjd;Lc8/Mkd;)V

    .line 58
    .local v4, "result":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    goto :goto_0
.end method
