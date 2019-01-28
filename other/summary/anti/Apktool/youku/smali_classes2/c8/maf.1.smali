.class public Lc8/maf;
.super Ljava/lang/Object;
.source "DinamicExpressionParser.java"

# interfaces
.implements Lc8/laf;


# static fields
.field private static final DELIMITER:Ljava/lang/String; = " .[]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parser(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    .end local p2    # "data":Ljava/lang/Object;
    :goto_0
    return-object p2

    .line 23
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v4, " .[]"

    invoke-direct {v2, p1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 24
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    move-object v3, p2

    .line 25
    .local v3, "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 26
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 28
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 29
    .local v0, "ch":C
    const/16 v4, 0x5b

    if-eq v4, v0, :cond_1

    const/16 v4, 0x5d

    if-eq v4, v0, :cond_1

    const/16 v4, 0x2e

    if-eq v4, v0, :cond_1

    .line 33
    .end local v0    # "ch":C
    :cond_2
    invoke-static {v3, v1}, Lc8/saf;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 34
    goto :goto_1

    .end local v1    # "token":Ljava/lang/String;
    :cond_3
    move-object p2, v3

    .line 35
    goto :goto_0
.end method
