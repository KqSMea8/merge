.class public Lc8/Bkd;
.super Lc8/Dkd;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ckd;->iterator()Ljava/util/Iterator;
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
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Ckd;


# direct methods
.method constructor <init>(Lc8/Ckd;)V
    .locals 1
    .param p1, "this$1"    # Lc8/Ckd;

    .prologue
    .line 835
    .local p0, "this":Lc8/Bkd;, "Lcom/google/gson/internal/LinkedHashTreeMap$KeySet$1;"
    iput-object p1, p0, Lc8/Bkd;->this$1:Lc8/Ckd;

    iget-object v0, p1, Lc8/Ckd;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0, v0}, Lc8/Dkd;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V

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
    .line 837
    .local p0, "this":Lc8/Bkd;, "Lcom/google/gson/internal/LinkedHashTreeMap$KeySet$1;"
    invoke-virtual {p0}, Lc8/Bkd;->nextNode()Lc8/Ekd;

    move-result-object v0

    iget-object v0, v0, Lc8/Ekd;->key:Ljava/lang/Object;

    return-object v0
.end method
