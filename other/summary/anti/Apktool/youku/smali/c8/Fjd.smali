.class public Lc8/Fjd;
.super Lc8/Vjd;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Gjd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FutureTypeAdapter"
.end annotation

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
.field private delegate:Lc8/Vjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 956
    .local p0, "this":Lc8/Fjd;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    return-void
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
    .line 967
    .local p0, "this":Lc8/Fjd;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    iget-object v0, p0, Lc8/Fjd;->delegate:Lc8/Vjd;

    if-nez v0, :cond_0

    .line 968
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 970
    :cond_0
    iget-object v0, p0, Lc8/Fjd;->delegate:Lc8/Vjd;

    invoke-virtual {v0, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lc8/Vjd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vjd",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 960
    .local p0, "this":Lc8/Fjd;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p1, "typeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    iget-object v0, p0, Lc8/Fjd;->delegate:Lc8/Vjd;

    if-eqz v0, :cond_0

    .line 961
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 963
    :cond_0
    iput-object p1, p0, Lc8/Fjd;->delegate:Lc8/Vjd;

    .line 964
    return-void
.end method

.method public write(Lc8/smd;Ljava/lang/Object;)V
    .locals 1
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
    .line 974
    .local p0, "this":Lc8/Fjd;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Fjd;->delegate:Lc8/Vjd;

    if-nez v0, :cond_0

    .line 975
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 977
    :cond_0
    iget-object v0, p0, Lc8/Fjd;->delegate:Lc8/Vjd;

    invoke-virtual {v0, p1, p2}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    .line 978
    return-void
.end method
