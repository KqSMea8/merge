.class public Lc8/ysb;
.super Ljava/lang/Object;
.source "ExpressionPair.java"


# instance fields
.field final origin:Ljava/lang/String;

.field final transformed:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "transformed"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lc8/ysb;->origin:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lc8/ysb;->transformed:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;)Lc8/ysb;
    .locals 1
    .param p0, "origin"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "transformed"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    new-instance v0, Lc8/ysb;

    invoke-direct {v0, p0, p1}, Lc8/ysb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    if-ne p0, p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    .line 31
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 33
    check-cast v0, Lc8/ysb;

    .line 35
    .local v0, "that":Lc8/ysb;
    iget-object v3, p0, Lc8/ysb;->origin:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lc8/ysb;->origin:Ljava/lang/String;

    iget-object v4, v0, Lc8/ysb;->origin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lc8/ysb;->origin:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 36
    :cond_6
    iget-object v3, p0, Lc8/ysb;->transformed:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v1, p0, Lc8/ysb;->transformed:Ljava/lang/String;

    iget-object v2, v0, Lc8/ysb;->transformed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lc8/ysb;->transformed:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v2, p0, Lc8/ysb;->origin:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/ysb;->origin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 43
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lc8/ysb;->transformed:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lc8/ysb;->transformed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 44
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 42
    goto :goto_0
.end method
