.class public Lc8/Ujd;
.super Lc8/Vjd;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vjd;->nullSafe()Lc8/Vjd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Vjd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Vjd;


# direct methods
.method constructor <init>(Lc8/Vjd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Vjd;

    .prologue
    .line 186
    .local p0, "this":Lc8/Ujd;, "Lcom/google/gson/TypeAdapter$1;"
    iput-object p1, p0, Lc8/Ujd;->this$0:Lc8/Vjd;

    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lc8/qmd;)Ljava/lang/Object;
    .locals 2
    .param p1, "reader"    # Lc8/qmd;
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
    .line 195
    .local p0, "this":Lc8/Ujd;, "Lcom/google/gson/TypeAdapter$1;"
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p1}, Lc8/qmd;->nextNull()V

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Ujd;->this$0:Lc8/Vjd;

    invoke-virtual {v0, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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
    .line 188
    .local p0, "this":Lc8/Ujd;, "Lcom/google/gson/TypeAdapter$1;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 189
    invoke-virtual {p1}, Lc8/smd;->nullValue()Lc8/smd;

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lc8/Ujd;->this$0:Lc8/Vjd;

    invoke-virtual {v0, p1, p2}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    goto :goto_0
.end method
