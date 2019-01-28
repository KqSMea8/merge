.class public final Lc8/Sld;
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
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:Ljava/lang/String; = "dayOfMonth"

.field private static final HOUR_OF_DAY:Ljava/lang/String; = "hourOfDay"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 592
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
    .line 592
    invoke-virtual {p0, p1}, Lc8/Sld;->read(Lc8/qmd;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public read(Lc8/qmd;)Ljava/util/Calendar;
    .locals 10
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v9, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v9, :cond_0

    .line 603
    invoke-virtual {p1}, Lc8/qmd;->nextNull()V

    .line 604
    const/4 v0, 0x0

    .line 631
    :goto_0
    return-object v0

    .line 606
    :cond_0
    invoke-virtual {p1}, Lc8/qmd;->beginObject()V

    .line 607
    const/4 v1, 0x0

    .line 608
    .local v1, "year":I
    const/4 v2, 0x0

    .line 609
    .local v2, "month":I
    const/4 v3, 0x0

    .line 610
    .local v3, "dayOfMonth":I
    const/4 v4, 0x0

    .line 611
    .local v4, "hourOfDay":I
    const/4 v5, 0x0

    .line 612
    .local v5, "minute":I
    const/4 v6, 0x0

    .line 613
    .local v6, "second":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v9, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v9, :cond_7

    .line 614
    invoke-virtual {p1}, Lc8/qmd;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 615
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/qmd;->nextInt()I

    move-result v8

    .line 616
    .local v8, "value":I
    const-string/jumbo v0, "year"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    move v1, v8

    goto :goto_1

    .line 618
    :cond_2
    const-string/jumbo v0, "month"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    move v2, v8

    goto :goto_1

    .line 620
    :cond_3
    const-string/jumbo v0, "dayOfMonth"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 621
    move v3, v8

    goto :goto_1

    .line 622
    :cond_4
    const-string/jumbo v0, "hourOfDay"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 623
    move v4, v8

    goto :goto_1

    .line 624
    :cond_5
    const-string/jumbo v0, "minute"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 625
    move v5, v8

    goto :goto_1

    .line 626
    :cond_6
    const-string/jumbo v0, "second"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    move v6, v8

    goto :goto_1

    .line 630
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":I
    :cond_7
    invoke-virtual {p1}, Lc8/qmd;->endObject()V

    .line 631
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_0
.end method

.method public bridge synthetic write(Lc8/smd;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lc8/Sld;->write(Lc8/smd;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lc8/smd;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "out"    # Lc8/smd;
    .param p2, "value"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    if-nez p2, :cond_0

    .line 637
    invoke-virtual {p1}, Lc8/smd;->nullValue()Lc8/smd;

    .line 654
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-virtual {p1}, Lc8/smd;->beginObject()Lc8/smd;

    .line 641
    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Lc8/smd;->name(Ljava/lang/String;)Lc8/smd;

    .line 642
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lc8/smd;->value(J)Lc8/smd;

    .line 643
    const-string/jumbo v0, "month"

    invoke-virtual {p1, v0}, Lc8/smd;->name(Ljava/lang/String;)Lc8/smd;

    .line 644
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lc8/smd;->value(J)Lc8/smd;

    .line 645
    const-string/jumbo v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lc8/smd;->name(Ljava/lang/String;)Lc8/smd;

    .line 646
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lc8/smd;->value(J)Lc8/smd;

    .line 647
    const-string/jumbo v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lc8/smd;->name(Ljava/lang/String;)Lc8/smd;

    .line 648
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lc8/smd;->value(J)Lc8/smd;

    .line 649
    const-string/jumbo v0, "minute"

    invoke-virtual {p1, v0}, Lc8/smd;->name(Ljava/lang/String;)Lc8/smd;

    .line 650
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lc8/smd;->value(J)Lc8/smd;

    .line 651
    const-string/jumbo v0, "second"

    invoke-virtual {p1, v0}, Lc8/smd;->name(Ljava/lang/String;)Lc8/smd;

    .line 652
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lc8/smd;->value(J)Lc8/smd;

    .line 653
    invoke-virtual {p1}, Lc8/smd;->endObject()Lc8/smd;

    goto :goto_0
.end method
