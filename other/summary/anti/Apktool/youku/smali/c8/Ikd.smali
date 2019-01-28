.class public Lc8/Ikd;
.super Lc8/Kkd;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jkd;->iterator()Ljava/util/Iterator;
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
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Jkd;


# direct methods
.method constructor <init>(Lc8/Jkd;)V
    .locals 1
    .param p1, "this$1"    # Lc8/Jkd;

    .prologue
    .line 601
    .local p0, "this":Lc8/Ikd;, "Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;"
    iput-object p1, p0, Lc8/Ikd;->this$1:Lc8/Jkd;

    iget-object v0, p1, Lc8/Jkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0, v0}, Lc8/Kkd;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "this":Lc8/Ikd;, "Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;"
    invoke-virtual {p0}, Lc8/Ikd;->nextNode()Lc8/Lkd;

    move-result-object v0

    iget-object v0, v0, Lc8/Lkd;->key:Ljava/lang/Object;

    return-object v0
.end method
