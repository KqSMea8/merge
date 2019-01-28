.class public Lc8/Fdf;
.super Ljava/lang/Object;
.source "Expression.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = " ${.[]}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 14
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 15
    :cond_0
    const/4 v4, 0x0

    .line 45
    :cond_1
    return-object v4

    .line 18
    :cond_2
    const/4 v4, 0x0

    .line 19
    .local v4, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 21
    .local v1, "start":Z
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, " ${.[]}"

    invoke-direct {v3, p1, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .end local v4    # "value":Ljava/lang/Object;
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 23
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    .line 25
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 26
    .local v0, "ch":C
    const/16 v5, 0x24

    if-ne v5, v0, :cond_4

    .line 27
    const/4 v1, 0x1

    .line 28
    move-object v4, p0

    .line 29
    .restart local v4    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 32
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v5, 0x20

    if-eq v5, v0, :cond_3

    const/16 v5, 0x5b

    if-eq v5, v0, :cond_3

    const/16 v5, 0x5d

    if-eq v5, v0, :cond_3

    const/16 v5, 0x7b

    if-eq v5, v0, :cond_3

    const/16 v5, 0x2e

    if-eq v5, v0, :cond_3

    .line 36
    const/16 v5, 0x7d

    if-eq v5, v0, :cond_1

    .line 40
    .end local v0    # "ch":C
    :cond_5
    if-eqz v1, :cond_3

    .line 41
    invoke-static {v4, v2}, Lc8/Odf;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/Object;
    goto :goto_0
.end method
