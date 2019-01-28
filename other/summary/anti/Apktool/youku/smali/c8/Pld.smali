.class public final Lc8/Pld;
.super Lc8/Vjd;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Vjd",
        "<",
        "Ljava/util/Currency;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lc8/qmd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Lc8/Pld;->read(Lc8/qmd;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public read(Lc8/qmd;)Ljava/util/Currency;
    .locals 1
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-virtual {p1}, Lc8/qmd;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Lc8/smd;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    check-cast p2, Ljava/util/Currency;

    invoke-virtual {p0, p1, p2}, Lc8/Pld;->write(Lc8/smd;Ljava/util/Currency;)V

    return-void
.end method

.method public write(Lc8/smd;Ljava/util/Currency;)V
    .locals 1
    .param p1, "out"    # Lc8/smd;
    .param p2, "value"    # Ljava/util/Currency;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/smd;->value(Ljava/lang/String;)Lc8/smd;

    .line 567
    return-void
.end method
