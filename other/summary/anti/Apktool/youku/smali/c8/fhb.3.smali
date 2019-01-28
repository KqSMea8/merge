.class public Lc8/fhb;
.super Ljava/lang/Object;
.source "DefaultServiceRegistry.java"

# interfaces
.implements Lc8/dhb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hhb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalServiceRegistration"
.end annotation


# instance fields
.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceRegistry:Lc8/ehb;

.field private final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/ehb;Ljava/util/Map;)V
    .locals 1
    .param p1, "serviceRegistry"    # Lc8/ehb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/ehb;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/fhb;->uuid:Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lc8/fhb;->serviceRegistry:Lc8/ehb;

    .line 187
    iput-object p2, p0, Lc8/fhb;->properties:Ljava/util/Map;

    .line 188
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 217
    if-ne p0, p1, :cond_1

    .line 218
    const/4 v1, 0x1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 223
    check-cast v0, Lc8/fhb;

    .line 224
    .local v0, "other":Lc8/fhb;
    iget-object v1, p0, Lc8/fhb;->uuid:Ljava/lang/String;

    iget-object v2, v0, Lc8/fhb;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x1

    .line 211
    .local v0, "result":I
    iget-object v1, p0, Lc8/fhb;->uuid:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 212
    return v0

    .line 211
    :cond_0
    iget-object v1, p0, Lc8/fhb;->uuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 200
    :cond_0
    return-void

    .line 195
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 196
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 197
    iget-object v2, p0, Lc8/fhb;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lc8/fhb;->serviceRegistry:Lc8/ehb;

    invoke-interface {v0, p0}, Lc8/ehb;->unregisterService(Lc8/dhb;)Ljava/lang/Object;

    .line 205
    return-void
.end method
