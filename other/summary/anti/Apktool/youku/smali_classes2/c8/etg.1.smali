.class public Lc8/etg;
.super Lc8/Usg;
.source "LongLivedConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/dtg;
    }
.end annotation


# instance fields
.field final e:Lc8/ctg;


# direct methods
.method constructor <init>(Lc8/vtg;Lc8/itg;)V
    .locals 2
    .param p1, "config"    # Lc8/vtg;
    .param p2, "target"    # Lc8/itg;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lc8/Usg;-><init>(Lc8/vtg;Lc8/ktg;)V

    .line 26
    new-instance v0, Lc8/ctg;

    invoke-direct {v0, p1, p2}, Lc8/ctg;-><init>(Lc8/vtg;Lc8/itg;)V

    iput-object v0, p0, Lc8/etg;->e:Lc8/ctg;

    .line 27
    iget-object v0, p0, Lc8/etg;->e:Lc8/ctg;

    new-instance v1, Lc8/dtg;

    invoke-direct {v1, p0}, Lc8/dtg;-><init>(Lc8/etg;)V

    invoke-virtual {v0, v1}, Lc8/ctg;->a(Lc8/atg;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lc8/ptg;I)V
    .locals 6
    .param p1, "data"    # Lc8/ptg;
    .param p2, "sendSequence"    # I

    .prologue
    .line 52
    iget v1, p1, Lc8/ptg;->d:I

    .line 54
    .local v1, "length":I
    iget v3, p1, Lc8/ptg;->c:I

    if-eqz v3, :cond_1

    .line 55
    new-array v0, v1, [B

    .line 56
    .local v0, "dest":[B
    iget-object v3, p1, Lc8/ptg;->b:[B

    iget v4, p1, Lc8/ptg;->c:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :goto_0
    invoke-virtual {p0}, Lc8/etg;->e()Lc8/ltg;

    move-result-object v2

    .line 61
    .local v2, "listener":Lc8/ltg;
    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v2, p0, p2}, Lc8/ltg;->a(Lc8/otg;I)V

    .line 64
    :cond_0
    iget-object v3, p0, Lc8/etg;->e:Lc8/ctg;

    invoke-virtual {v3, p2, v0, v1}, Lc8/ctg;->a(I[BI)V

    .line 66
    return-void

    .line 58
    .end local v0    # "dest":[B
    .end local v2    # "listener":Lc8/ltg;
    :cond_1
    iget-object v0, p1, Lc8/ptg;->b:[B

    .restart local v0    # "dest":[B
    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 32
    const/4 v0, 0x2

    .line 33
    .local v0, "p":I
    invoke-static {v0}, Lc8/Tsg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string/jumbo v1, "LongLivedConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/etg;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " connectAsync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iget-object v1, p0, Lc8/etg;->e:Lc8/ctg;

    invoke-virtual {v1}, Lc8/ctg;->a()V

    .line 37
    const/4 v1, 0x1

    return v1
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 42
    const/4 v0, 0x2

    .line 43
    .local v0, "p":I
    invoke-static {v0}, Lc8/Tsg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string/jumbo v1, "LongLivedConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/etg;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " closeAsync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iget-object v1, p0, Lc8/etg;->e:Lc8/ctg;

    invoke-virtual {v1}, Lc8/ctg;->b()V

    .line 47
    const/4 v1, 0x1

    return v1
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/etg;->e:Lc8/ctg;

    invoke-virtual {v0}, Lc8/ctg;->c()Z

    move-result v0

    return v0
.end method
