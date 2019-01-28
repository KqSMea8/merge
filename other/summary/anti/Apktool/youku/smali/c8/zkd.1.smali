.class public Lc8/zkd;
.super Lc8/Dkd;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Akd;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedHashTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Akd;


# direct methods
.method constructor <init>(Lc8/Akd;)V
    .locals 1
    .param p1, "this$1"    # Lc8/Akd;

    .prologue
    .line 800
    .local p0, "this":Lc8/zkd;, "Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;"
    iput-object p1, p0, Lc8/zkd;->this$1:Lc8/Akd;

    iget-object v0, p1, Lc8/Akd;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0, v0}, Lc8/Dkd;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 800
    .local p0, "this":Lc8/zkd;, "Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;"
    invoke-virtual {p0}, Lc8/zkd;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "this":Lc8/zkd;, "Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;"
    invoke-virtual {p0}, Lc8/zkd;->nextNode()Lc8/Ekd;

    move-result-object v0

    return-object v0
.end method
