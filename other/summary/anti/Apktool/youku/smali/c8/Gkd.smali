.class public Lc8/Gkd;
.super Lc8/Kkd;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hkd;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Hkd;


# direct methods
.method constructor <init>(Lc8/Hkd;)V
    .locals 1
    .param p1, "this$1"    # Lc8/Hkd;

    .prologue
    .line 566
    .local p0, "this":Lc8/Gkd;, "Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;"
    iput-object p1, p0, Lc8/Gkd;->this$1:Lc8/Hkd;

    iget-object v0, p1, Lc8/Hkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0, v0}, Lc8/Kkd;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 566
    .local p0, "this":Lc8/Gkd;, "Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;"
    invoke-virtual {p0}, Lc8/Gkd;->next()Ljava/util/Map$Entry;

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
    .line 568
    .local p0, "this":Lc8/Gkd;, "Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;"
    invoke-virtual {p0}, Lc8/Gkd;->nextNode()Lc8/Lkd;

    move-result-object v0

    return-object v0
.end method
