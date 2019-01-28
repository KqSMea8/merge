.class public final Lc8/Wkd;
.super Ljava/lang/Object;
.source "ArrayTypeAdapter.java"

# interfaces
.implements Lc8/Wjd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
    .locals 5
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
    .line 42
    .local p2, "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lc8/omd;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 43
    .local v2, "type":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/GenericArrayType;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    :cond_0
    const/4 v3, 0x0

    .line 49
    :goto_0
    return-object v3

    .line 47
    :cond_1
    invoke-static {v2}, Lc8/dkd;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 48
    .local v0, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lc8/omd;->get(Ljava/lang/reflect/Type;)Lc8/omd;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/Gjd;->getAdapter(Lc8/omd;)Lc8/Vjd;

    move-result-object v1

    .line 49
    .local v1, "componentTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    new-instance v3, Lc8/Xkd;

    .line 50
    invoke-static {v0}, Lc8/dkd;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p1, v1, v4}, Lc8/Xkd;-><init>(Lc8/Gjd;Lc8/Vjd;Ljava/lang/Class;)V

    goto :goto_0
.end method
