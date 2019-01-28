.class public final Lc8/pmd;
.super Lc8/vkd;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1594
    invoke-direct {p0}, Lc8/vkd;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lc8/qmd;)V
    .locals 4
    .param p1, "reader"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1596
    instance-of v1, p1, Lc8/eld;

    if-eqz v1, :cond_0

    .line 1597
    check-cast p1, Lc8/eld;

    .end local p1    # "reader":Lc8/qmd;
    invoke-virtual {p1}, Lc8/eld;->promoteNameToValue()V

    .line 1609
    :goto_0
    return-void

    .line 1600
    .restart local p1    # "reader":Lc8/qmd;
    :cond_0
    iget v0, p1, Lc8/qmd;->peeked:I

    .line 1601
    .local v0, "p":I
    if-nez v0, :cond_1

    .line 1602
    invoke-virtual {p1}, Lc8/qmd;->doPeek()I

    move-result v0

    .line 1604
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1605
    const/16 v1, 0x9

    iput v1, p1, Lc8/qmd;->peeked:I

    goto :goto_0

    .line 1606
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1607
    const/16 v1, 0x8

    iput v1, p1, Lc8/qmd;->peeked:I

    goto :goto_0

    .line 1608
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1609
    const/16 v1, 0xa

    iput v1, p1, Lc8/qmd;->peeked:I

    goto :goto_0

    .line 1611
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1612
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lc8/qmd;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
