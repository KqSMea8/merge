.class public final Lc8/yld;
.super Lc8/Vjd;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vjd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final context:Lc8/Gjd;

.field private final delegate:Lc8/Vjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lc8/Gjd;Lc8/Vjd;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "context"    # Lc8/Gjd;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gjd;",
            "Lc8/Vjd",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lc8/yld;, "Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, "delegate":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    .line 34
    iput-object p1, p0, Lc8/yld;->context:Lc8/Gjd;

    .line 35
    iput-object p2, p0, Lc8/yld;->delegate:Lc8/Vjd;

    .line 36
    iput-object p3, p0, Lc8/yld;->type:Ljava/lang/reflect/Type;

    .line 37
    return-void
.end method

.method private getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 76
    .local p0, "this":Lc8/yld;, "Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 80
    :cond_1
    return-object p1
.end method


# virtual methods
.method public read(Lc8/qmd;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qmd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lc8/yld;, "Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    iget-object v0, p0, Lc8/yld;->delegate:Lc8/Vjd;

    invoke-virtual {v0, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Lc8/smd;Ljava/lang/Object;)V
    .locals 5
    .param p1, "out"    # Lc8/smd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/smd;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lc8/yld;, "Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/yld;->delegate:Lc8/Vjd;

    .line 54
    .local v0, "chosen":Lc8/Vjd;
    iget-object v3, p0, Lc8/yld;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v3, p2}, Lc8/yld;->getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 55
    .local v1, "runtimeType":Ljava/lang/reflect/Type;
    iget-object v3, p0, Lc8/yld;->type:Ljava/lang/reflect/Type;

    if-eq v1, v3, :cond_0

    .line 56
    iget-object v3, p0, Lc8/yld;->context:Lc8/Gjd;

    invoke-static {v1}, Lc8/omd;->get(Ljava/lang/reflect/Type;)Lc8/omd;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/Gjd;->getAdapter(Lc8/omd;)Lc8/Vjd;

    move-result-object v2

    .line 57
    .local v2, "runtimeTypeAdapter":Lc8/Vjd;
    instance-of v3, v2, Lc8/nld;

    if-nez v3, :cond_1

    .line 59
    move-object v0, v2

    .line 69
    .end local v2    # "runtimeTypeAdapter":Lc8/Vjd;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    .line 70
    return-void

    .line 60
    .restart local v2    # "runtimeTypeAdapter":Lc8/Vjd;
    :cond_1
    iget-object v3, p0, Lc8/yld;->delegate:Lc8/Vjd;

    instance-of v3, v3, Lc8/nld;

    if-nez v3, :cond_2

    .line 63
    iget-object v0, p0, Lc8/yld;->delegate:Lc8/Vjd;

    goto :goto_0

    .line 66
    :cond_2
    move-object v0, v2

    goto :goto_0
.end method
