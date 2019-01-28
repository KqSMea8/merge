.class public Lc8/jtg;
.super Lc8/ktg;
.source "UrlConnectionTarget.java"


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 21
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lc8/ktg;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 22
    iput-object p3, p0, Lc8/jtg;->f:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lc8/jtg;->g:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lc8/vtg;)Lc8/otg;
    .locals 1
    .param p1, "config"    # Lc8/vtg;

    .prologue
    .line 28
    new-instance v0, Lc8/htg;

    invoke-direct {v0, p1, p0}, Lc8/htg;-><init>(Lc8/vtg;Lc8/jtg;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    if-ne p0, p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    instance-of v3, p1, Lc8/jtg;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 35
    :cond_2
    invoke-super {p0, p1}, Lc8/ktg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 37
    check-cast v0, Lc8/jtg;

    .line 39
    .local v0, "that":Lc8/jtg;
    iget-object v3, p0, Lc8/jtg;->f:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lc8/jtg;->f:Ljava/lang/String;

    iget-object v4, v0, Lc8/jtg;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lc8/jtg;->f:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 40
    :cond_6
    iget-object v3, p0, Lc8/jtg;->g:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v1, p0, Lc8/jtg;->g:Ljava/lang/String;

    iget-object v2, v0, Lc8/jtg;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lc8/jtg;->g:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method
